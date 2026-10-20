.class final Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GroupFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.nekohasekai.sagernet.ui.GroupFragment$GroupHolder$bind$11$1"
    f = "GroupFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $group:Lio/nekohasekai/sagernet/database/ProxyGroup;

.field final synthetic $size:J

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;

.field final synthetic this$1:Lio/nekohasekai/sagernet/ui/GroupFragment;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/database/ProxyGroup;JLio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;Lio/nekohasekai/sagernet/ui/GroupFragment;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            "J",
            "Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;",
            "Lio/nekohasekai/sagernet/ui/GroupFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    iput-wide p2, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->$size:J

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->this$1:Lio/nekohasekai/sagernet/ui/GroupFragment;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    iget-wide v2, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->$size:J

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->this$1:Lio/nekohasekai/sagernet/ui/GroupFragment;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup;JLio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;Lio/nekohasekai/sagernet/ui/GroupFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 530
    iget v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 531
    .local p1, "$result":Ljava/lang/Object;
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 541
    :pswitch_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;->getGroupStatus()Landroid/widget/TextView;

    move-result-object v0

    iget-wide v5, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->$size:J

    cmp-long v7, v5, v2

    if-nez v7, :cond_0

    .line 542
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->this$1:Lio/nekohasekai/sagernet/ui/GroupFragment;

    const v2, 0x7f130119

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 544
    :cond_0
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->$group:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lio/nekohasekai/sagernet/database/SubscriptionBean;->lastUpdated:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 545
    .local v2, "date":Ljava/util/Date;
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->this$1:Lio/nekohasekai/sagernet/ui/GroupFragment;

    .line 546
    nop

    .line 547
    iget-wide v5, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->$size:J

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v6, v7, v4

    .line 547
    nop

    .line 545
    const v1, 0x7f13011b

    invoke-virtual {v3, v1, v7}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v2    # "date":Ljava/util/Date;
    check-cast v1, Ljava/lang/CharSequence;

    .line 541
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 533
    :pswitch_2
    iget-wide v5, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->$size:J

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    .line 534
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;->getGroupStatus()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f130118

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 536
    :cond_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;->getGroupStatus()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->this$1:Lio/nekohasekai/sagernet/ui/GroupFragment;

    iget-wide v5, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder$bind$11$1;->$size:J

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const v1, 0x7f13011a

    invoke-virtual {v2, v1, v4}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
