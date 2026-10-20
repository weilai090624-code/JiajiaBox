.class final Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigurationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->update(Lio/nekohasekai/sagernet/database/ProxyEntity;)V
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
    c = "io.nekohasekai.sagernet.ui.ConfigurationFragment$TestDialog$update$1"
    f = "ConfigurationFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

.field final synthetic this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment;",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

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

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 642
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 643
    .local p1, "$result":Ljava/lang/Object;
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 644
    .local v0, "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getFinishedN()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    .line 645
    .local v1, "progress":I
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getDialogStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 646
    .local v3, "status":I
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getNotification()Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 647
    nop

    .line 648
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getProxyN()I

    move-result v6

    .line 649
    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getProxyN()I

    move-result v7

    if-ge v1, v7, :cond_2

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v7, 0x1

    .line 646
    :goto_1
    invoke-virtual {v4, v1, v6, v7}, Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;->updateNotification(IIZ)V

    .line 651
    :cond_3
    if-lt v3, v2, :cond_4

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 652
    .end local v3    # "status":I
    :cond_4
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 656
    :cond_5
    const/4 v3, 0x0

    .line 657
    .local v3, "profileStatusText":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 659
    .local v4, "profileStatusColor":I
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getStatus()I

    move-result v6

    const v7, 0x7f06030a

    const v8, 0x1010038

    packed-switch v6, :pswitch_data_1

    goto :goto_3

    .line 681
    :pswitch_1
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getError()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, ""

    .line 682
    .local v2, "err":Ljava/lang/String;
    :cond_6
    sget-object v5, Lmoe/matsuri/nb4a/Protocols;->INSTANCE:Lmoe/matsuri/nb4a/Protocols;

    invoke-virtual {v5, v2}, Lmoe/matsuri/nb4a/Protocols;->genFriendlyMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 683
    .local v5, "msg":Ljava/lang/String;
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    .end local v2    # "err":Ljava/lang/String;
    .end local v5    # "msg":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    const v5, 0x7f1302be

    invoke-virtual {v2, v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "getString(...)"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    move-object v3, v5

    .line 684
    invoke-static {v0, v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getColour(Landroid/content/Context;I)I

    move-result v4

    goto :goto_3

    .line 676
    :pswitch_2
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getError()Ljava/lang/String;

    move-result-object v3

    .line 677
    invoke-static {v0, v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getColour(Landroid/content/Context;I)I

    move-result v4

    goto :goto_3

    .line 671
    :pswitch_3
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getPing()I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v5

    const v5, 0x7f130068

    invoke-virtual {v6, v5, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 672
    const v2, 0x7f060265

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getColour(Landroid/content/Context;I)I

    move-result v4

    goto :goto_3

    .line 666
    :pswitch_4
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    const v5, 0x7f1300af

    invoke-virtual {v2, v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getColorAttr(Landroid/content/Context;I)I

    move-result v4

    goto :goto_3

    .line 661
    :pswitch_5
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getError()Ljava/lang/String;

    move-result-object v3

    .line 662
    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getColorAttr(Landroid/content/Context;I)I

    move-result v4

    .line 688
    :goto_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->$profile:Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-object v6, v2

    .local v6, "$this$invokeSuspend_u24lambda_u240":Landroid/text/SpannableStringBuilder;
    const/4 v7, 0x0

    .line 689
    .local v7, "$i$a$-apply-ConfigurationFragment$TestDialog$update$1$text$1":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyEntity;->displayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 690
    const-string v8, "\n"

    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 691
    nop

    .line 692
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyEntity;->displayType()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 693
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    sget-object v11, Lmoe/matsuri/nb4a/Protocols;->INSTANCE:Lmoe/matsuri/nb4a/Protocols;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getType()I

    move-result v5

    invoke-virtual {v11, v0, v5}, Lmoe/matsuri/nb4a/Protocols;->getProtocolColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v10, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 694
    nop

    .line 691
    const/16 v5, 0x21

    invoke-virtual {v6, v9, v10, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 696
    const-string v9, " "

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 697
    nop

    .line 698
    move-object v9, v3

    check-cast v9, Ljava/lang/CharSequence;

    .line 699
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v10, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 700
    nop

    .line 697
    invoke-virtual {v6, v9, v10, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 702
    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 703
    nop

    .line 688
    .end local v6    # "$this$invokeSuspend_u24lambda_u240":Landroid/text/SpannableStringBuilder;
    .end local v7    # "$i$a$-apply-ConfigurationFragment$TestDialog$update$1$text$1":I
    nop

    .line 705
    .local v2, "text":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;

    move-result-object v5

    iget-object v5, v5, Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;->nowTesting:Landroid/widget/TextView;

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;

    move-result-object v5

    iget-object v5, v5, Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;->progress:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getProxyN()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
