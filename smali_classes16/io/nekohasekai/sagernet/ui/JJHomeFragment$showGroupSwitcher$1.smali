.class final Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JJHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment;->showGroupSwitcher()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJJHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1013:1\n1863#2:1014\n1864#2:1016\n1863#2,2:1017\n1#3:1015\n*S KotlinDebug\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1\n*L\n345#1:1014\n345#1:1016\n431#1:1017,2\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.JJHomeFragment$showGroupSwitcher$1"
    f = "JJHomeFragment.kt"
    i = {}
    l = {
        0x148
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method public static synthetic $r8$lambda$Ep8bllGJ9l7FfJQBRdC12jSwloU(Landroid/app/Dialog;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;->invokeSuspend$lambda$10$lambda$8(Landroid/app/Dialog;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RvxAunOYpAXsBo35T0WG3uqh6R4(Landroid/app/Dialog;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;Landroid/view/View;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;->invokeSuspend$lambda$10$lambda$9(Landroid/app/Dialog;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$10$lambda$8(Landroid/app/Dialog;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Landroid/view/View;)V
    .registers 9
    .param p0, "$dialog"    # Landroid/app/Dialog;
    .param p1, "$group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
    .param p2, "this$0"    # Lio/nekohasekai/sagernet/ui/JJHomeFragment;
    .param p3, "it"    # Landroid/view/View;

    .line 433
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 434
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v0

    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedGroup()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1d

    .line 435
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedGroup(J)V

    .line 436
    # invokes: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->reload()V
    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$reload(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V

    .line 438
    :cond_1d
    return-void
.end method

.method private static final invokeSuspend$lambda$10$lambda$9(Landroid/app/Dialog;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;Landroid/view/View;)Z
    .registers 5
    .param p0, "$dialog"    # Landroid/app/Dialog;
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/JJHomeFragment;
    .param p2, "$group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
    .param p3, "it"    # Landroid/view/View;

    .line 440
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 441
    # invokes: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->confirmDeleteGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)V
    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$confirmDeleteGroup(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;)V

    .line 442
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-direct {v0, v1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;->label:I

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p1

    goto :goto_2b

    :cond_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1$groups$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1$groups$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x1

    iput v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2b

    return-object v0

    :cond_2b
    :goto_2b
    check-cast v3, Ljava/util/List;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->show(Ljava/lang/Object;Ljava/util/List;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to resume before invoke"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
