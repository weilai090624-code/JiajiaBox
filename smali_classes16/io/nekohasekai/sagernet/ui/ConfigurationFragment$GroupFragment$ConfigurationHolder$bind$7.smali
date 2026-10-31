.class final Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigurationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;->bind(Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/aidl/TrafficData;)V
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
    c = "io.nekohasekai.sagernet.ui.ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7"
    f = "ConfigurationFragment.kt"
    i = {}
    l = {
        0x66c,
        0x68d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;

.field final synthetic this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->$proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final synthetic access$invokeSuspend$showShare(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->invokeSuspend$showShare(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;Landroid/view/View;)V

    return-void
.end method

.method private static final invokeSuspend$showShare(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;Landroid/view/View;)V
    .registers 8
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;
    .param p1, "$proxyEntity"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p2, "this$1"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;
    .param p3, "anchor"    # Landroid/view/View;

    .line 1651
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1652
    .local v0, "popup":Landroidx/appcompat/widget/PopupMenu;
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f000c

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1654
    nop

    .line 1655
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->haveStandardLink()Z

    move-result v1

    const v2, 0x7f0a0053

    const v3, 0x7f0a0055

    if-nez v1, :cond_4e

    .line 1656
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    if-eqz v1, :cond_38

    const v3, 0x7f0a0084

    invoke-interface {v1, v3}, Landroid/view/SubMenu;->removeItem(I)V

    .line 1657
    :cond_38
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 1658
    nop

    .line 1657
    const v2, 0x7f0a0083

    invoke-interface {v1, v2}, Landroid/view/SubMenu;->removeItem(I)V

    goto :goto_62

    .line 1662
    :cond_4e
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->haveLink()Z

    move-result v1

    if-nez v1, :cond_62

    .line 1663
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 1664
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 1668
    :cond_62
    :goto_62
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getNekoBean()Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 1669
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a0054

    invoke-interface {v1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 1672
    :cond_72
    move-object v1, p2

    check-cast v1, Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1673
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    .line 1674
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->$proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1640
    iget v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_b0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ac

    :pswitch_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_80

    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1641
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->getSelectedItem()Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v3

    goto :goto_31

    :cond_2b
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v3

    :goto_31
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->$proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v5

    const/4 v1, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_3f

    const/4 v3, 0x1

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    .line 1643
    .local v3, "selected":Z
    :goto_40
    if-eqz v3, :cond_60

    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v4

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getStarted()Z

    move-result v4

    if-eqz v4, :cond_60

    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getCurrentProfile()J

    move-result-wide v4

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->$proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v8

    cmp-long v6, v4, v8

    if-nez v6, :cond_60

    const/4 v4, 0x1

    goto :goto_61

    :cond_60
    const/4 v4, 0x0

    .line 1642
    :goto_61
    nop

    .line 1644
    .local v4, "started":Z
    new-instance v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7$1;

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;

    if-eqz v4, :cond_6a

    const/4 v4, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v4, 0x0

    .end local v4    # "started":Z
    :goto_6b
    if-eqz v3, :cond_6f

    const/4 v1, 0x1

    nop

    .end local v3    # "selected":Z
    :cond_6f
    invoke-direct {v5, v6, v4, v1, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7$1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;ZZLkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v7, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->label:I

    invoke-static {v5, v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_80

    .line 1640
    return-object v0

    .line 1676
    :cond_80
    :goto_80
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->getSelect()Z

    move-result v1

    if-nez v1, :cond_ad

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->$proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getType()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_ad

    .line 1677
    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7$2;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->$proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-direct {v1, v3, v4, v5, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7$2;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x2

    iput v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationHolder$bind$7;->label:I

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_ac

    .line 1640
    return-object v0

    .line 1688
    :cond_ac
    :goto_ac
    nop

    :cond_ad
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_17
        :pswitch_12
    .end packed-switch
.end method
