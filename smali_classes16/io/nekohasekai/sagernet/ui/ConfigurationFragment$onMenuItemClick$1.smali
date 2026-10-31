.class final Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigurationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->onMenuItemClick(Landroid/view/MenuItem;)Z
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
    value = "SMAP\nConfigurationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,1764:1\n29#2:1765\n*S KotlinDebug\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1\n*L\n383#1:1765\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.ConfigurationFragment$onMenuItemClick$1"
    f = "ConfigurationFragment.kt"
    i = {}
    l = {
        0x17a,
        0x17b,
        0x17d,
        0x17f,
        0x183
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $text:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->$text:Ljava/lang/String;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->$text:Ljava/lang/String;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;-><init>(Ljava/lang/String;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 376
    iget v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_d6

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ad

    :pswitch_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d1

    :pswitch_1d
    :try_start_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_84

    :pswitch_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :pswitch_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_29
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_1d .. :try_end_29} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_29} :catch_2b

    move-object v1, p1

    goto :goto_4b

    .line 384
    :catch_2b
    move-exception v1

    goto/16 :goto_8f

    .line 382
    :catch_2e
    move-exception v1

    goto/16 :goto_ae

    .line 376
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 377
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 378
    :try_start_35
    sget-object v4, Lio/nekohasekai/sagernet/group/RawUpdater;->INSTANCE:Lio/nekohasekai/sagernet/group/RawUpdater;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->$text:Ljava/lang/String;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->label:I

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/nekohasekai/sagernet/group/RawUpdater;->parseRaw$default(Lio/nekohasekai/sagernet/group/RawUpdater;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_45
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_35 .. :try_end_45} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_45} :catch_2b

    if-ne v1, v0, :cond_48

    .line 376
    return-object v0

    .line 378
    :cond_48
    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    .line 376
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_4b
    :try_start_4b
    check-cast p1, Ljava/util/List;

    .line 379
    .local p1, "proxies":Ljava/util/List;
    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_5a

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v2, 0x0

    :cond_5a
    :goto_5a
    if-eqz v2, :cond_74

    new-instance v2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1$1;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-direct {v2, v4, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1$1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x2

    iput v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->label:I

    invoke-static {v2, v4}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local p1    # "proxies":Ljava/util/List;
    if-ne v2, v0, :cond_72

    .line 376
    return-object v0

    .line 379
    :cond_72
    move-object p1, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :goto_73
    goto :goto_d2

    .line 381
    .restart local v1    # "$result":Ljava/lang/Object;
    .local p1, "proxies":Ljava/util/List;
    :cond_74
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x3

    iput v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->label:I

    invoke-virtual {v2, p1, v4}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->import(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_80
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_4b .. :try_end_80} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_80} :catch_85

    .end local p1    # "proxies":Ljava/util/List;
    if-ne v2, v0, :cond_83

    .line 376
    return-object v0

    .line 381
    :cond_83
    move-object p1, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :goto_84
    goto :goto_d2

    .line 384
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :catch_85
    move-exception p1

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto :goto_8f

    .line 382
    :catch_8a
    move-exception p1

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto :goto_ae

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_8f
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 387
    new-instance v2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1$2;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-direct {v2, v4, v1, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1$2;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x5

    iput v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->label:I

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "e":Ljava/lang/Exception;
    if-ne v1, v0, :cond_ad

    .line 376
    return-object v0

    .line 391
    :cond_ad
    :goto_ad
    goto :goto_d2

    .line 383
    .local v1, "e":Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException;
    :goto_ae
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.MainActivity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException;->getLink()Ljava/lang/String;

    move-result-object v1

    .local v1, "$this$toUri$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1765
    .local v3, "$i$f$toUri":I
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .end local v1    # "$this$toUri$iv":Ljava/lang/String;
    .end local v3    # "$i$f$toUri":I
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 383
    const/4 v4, 0x4

    iput v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;->label:I

    invoke-virtual {v2, v1, v3}, Lio/nekohasekai/sagernet/ui/MainActivity;->importSubscription(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_d1

    .line 376
    return-object v0

    .line 383
    :cond_d1
    :goto_d1
    nop

    .line 391
    :goto_d2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_31
        :pswitch_26
        :pswitch_22
        :pswitch_1d
        :pswitch_18
        :pswitch_13
    .end packed-switch
.end method
