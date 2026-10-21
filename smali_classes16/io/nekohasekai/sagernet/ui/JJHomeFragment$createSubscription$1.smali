.class final Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JJHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment;->createSubscription(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "io.nekohasekai.sagernet.ui.JJHomeFragment$createSubscription$1"
    f = "JJHomeFragment.kt"
    i = {}
    l = {
        0x297
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $link:Ljava/lang/String;

.field final synthetic $subName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->$subName:Ljava/lang/String;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->$link:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->$subName:Ljava/lang/String;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->$link:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 662
    iget v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_8a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_3c

    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 663
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->$subName:Ljava/lang/String;

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->$link:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1$ok$1;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->label:I

    invoke-static {v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3a

    .line 662
    return-object v0

    .line 663
    :cond_3a
    move-object v0, p1

    move-object p1, v1

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_3c
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 677
    .local p1, "ok":Z
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$setUpdating$p(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Z)V

    .line 678
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v3

    # invokes: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->renderConnection(Lio/nekohasekai/sagernet/bg/BaseService$State;)V
    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$renderConnection(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/bg/BaseService$State;)V

    .line 679
    if-eqz p1, :cond_59

    const v1, 0x7f130160

    goto :goto_5c

    .end local p1    # "ok":Z
    :cond_59
    const v1, 0x7f13015b

    :goto_5c
    move p1, v1

    .line 680
    .local p1, "msg":I
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v3, v1, Lio/nekohasekai/sagernet/ui/MainActivity;

    if-eqz v3, :cond_6a

    move-object v2, v1

    check-cast v2, Lio/nekohasekai/sagernet/ui/MainActivity;

    :cond_6a
    if-eqz v2, :cond_82

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {v1, p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local p1    # "msg":I
    const-string p1, "getString(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    if-eqz p1, :cond_82

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 681
    :cond_82
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$createSubscription$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    # invokes: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->reload()V
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$reload(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V

    .line 682
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_12
    .end packed-switch
.end method
