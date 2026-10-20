.class final Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JJHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment;->confirmDeleteGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)V
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
    c = "io.nekohasekai.sagernet.ui.JJHomeFragment$confirmDeleteGroup$1"
    f = "JJHomeFragment.kt"
    i = {}
    l = {
        0x234
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $group:Lio/nekohasekai/sagernet/database/ProxyGroup;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method public static synthetic $r8$lambda$R2WGNWJyyAvR4TNARc1AZg6Qljw(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->invokeSuspend$lambda$0(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment;",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/JJHomeFragment;
    .param p1, "$group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 591
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$performDeleteGroup(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;)V

    .line 592
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 563
    iget v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_0

    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 564
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1$groupCount$1;

    invoke-direct {v4, v3}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1$groupCount$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->label:I

    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 563
    return-object v0

    .line 564
    :cond_0
    move-object v0, p1

    move-object p1, v1

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 567
    .local p1, "groupCount":I
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 568
    :cond_1
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getUngrouped()Z

    move-result v1

    const-string v4, "getString(...)"

    if-eqz v1, :cond_4

    .line 569
    .end local p1    # "groupCount":I
    nop

    .line 571
    nop

    .line 569
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/MainActivity;

    if-eqz v1, :cond_2

    move-object v3, p1

    check-cast v3, Lio/nekohasekai/sagernet/ui/MainActivity;

    :cond_2
    if-eqz v3, :cond_3

    .line 570
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const v1, 0x7f130145

    invoke-virtual {p1, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 569
    invoke-virtual {v3, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 571
    if-eqz p1, :cond_3

    .line 569
    nop

    .line 571
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_1

    .line 569
    :cond_3
    nop

    .line 572
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 574
    .restart local p1    # "groupCount":I
    :cond_4
    nop

    .end local p1    # "groupCount":I
    if-gt p1, v2, :cond_7

    .line 575
    nop

    .line 577
    nop

    .line 575
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/MainActivity;

    if-eqz v1, :cond_5

    move-object v3, p1

    check-cast v3, Lio/nekohasekai/sagernet/ui/MainActivity;

    :cond_5
    if-eqz v3, :cond_6

    .line 576
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const v1, 0x7f130143

    invoke-virtual {p1, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 575
    invoke-virtual {v3, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 577
    if-eqz p1, :cond_6

    .line 575
    nop

    .line 577
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_2

    .line 575
    :cond_6
    nop

    .line 578
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 580
    :cond_7
    sget-object p1, Lio/nekohasekai/sagernet/group/GroupUpdater;->Companion:Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;->getUpdating()Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 581
    nop

    .line 583
    nop

    .line 581
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/MainActivity;

    if-eqz v1, :cond_8

    move-object v3, p1

    check-cast v3, Lio/nekohasekai/sagernet/ui/MainActivity;

    :cond_8
    if-eqz v3, :cond_9

    .line 582
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const v1, 0x7f130147

    invoke-virtual {p1, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 581
    invoke-virtual {v3, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 583
    if-eqz p1, :cond_9

    .line 581
    nop

    .line 583
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_3

    .line 581
    :cond_9
    nop

    .line 584
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 586
    :cond_a
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    .line 587
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const v3, 0x7f130146

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyGroup;->displayName()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const v5, 0x7f130144

    invoke-virtual {v3, v5, v2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const v5, 0x7f130141

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    new-instance v6, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v5}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$confirmDeleteGroup$1$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;)V

    invoke-static {p1, v1, v2, v3, v6}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$showGlassConfirmDialog(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 593
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
