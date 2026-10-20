.class final Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AssetsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->bind(Ljava/io/File;)V
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
    c = "io.nekohasekai.sagernet.ui.AssetsActivity$AssetHolder$bind$1$1"
    f = "AssetsActivity.kt"
    i = {}
    l = {
        0xed,
        0xef,
        0xf4
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;

.field final synthetic $localVersion:Ljava/lang/String;

.field final synthetic $versionFile:Ljava/io/File;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

.field final synthetic this$1:Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/AssetsActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/AssetsActivity;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->$file:Ljava/io/File;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->$versionFile:Ljava/io/File;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->$localVersion:Ljava/lang/String;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->this$1:Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;

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

    new-instance v7, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->$file:Ljava/io/File;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->$versionFile:Ljava/io/File;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->$localVersion:Ljava/lang/String;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->this$1:Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;-><init>(Lio/nekohasekai/sagernet/ui/AssetsActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 235
    iget v1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    const/4 v1, 0x0

    .local v1, "$i$a$-onFailure-AssetsActivity$AssetHolder$bind$1$1$2":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "$i$a$-onFailure-AssetsActivity$AssetHolder$bind$1$1$2":I
    :pswitch_2
    const/4 v1, 0x0

    .local v1, "$i$a$-runCatching-AssetsActivity$AssetHolder$bind$1$1$1":I
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "$i$a$-runCatching-AssetsActivity$AssetHolder$bind$1$1$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 236
    .local v1, "$this$runOnDefaultDispatcher":Lkotlinx/coroutines/CoroutineScope;
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->$file:Ljava/io/File;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->$versionFile:Ljava/io/File;

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->$localVersion:Ljava/lang/String;

    .end local v1    # "$this$runOnDefaultDispatcher":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x0

    .line 237
    .local v1, "$i$a$-runCatching-AssetsActivity$AssetHolder$bind$1$1$1":I
    const/4 v7, 0x1

    iput v7, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->label:I

    invoke-virtual {v3, v4, v5, v6, p0}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->updateAsset(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 235
    return-object v0

    .line 238
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 236
    .end local v1    # "$i$a$-runCatching-AssetsActivity$AssetHolder$bind$1$1$1":I
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 238
    :goto_1
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    .local v4, "it":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 239
    .local v5, "$i$a$-onFailure-AssetsActivity$AssetHolder$bind$1$1$2":I
    new-instance v6, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1$2$1;

    invoke-direct {v6, v3, v4, v2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1$2$1;-><init>(Lio/nekohasekai/sagernet/ui/AssetsActivity;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->L$0:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->label:I

    invoke-static {v6, p0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v4    # "it":Ljava/lang/Throwable;
    if-ne v1, v0, :cond_1

    .line 235
    return-object v0

    .line 239
    :cond_1
    move v1, v5

    .line 242
    .end local v5    # "$i$a$-onFailure-AssetsActivity$AssetHolder$bind$1$1$2":I
    .local v1, "$i$a$-onFailure-AssetsActivity$AssetHolder$bind$1$1$2":I
    :goto_2
    nop

    .line 238
    .end local v1    # "$i$a$-onFailure-AssetsActivity$AssetHolder$bind$1$1$2":I
    nop

    .line 244
    :cond_2
    new-instance v1, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1$3;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->this$1:Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    invoke-direct {v1, v3, v4, v2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1$3;-><init>(Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;Lio/nekohasekai/sagernet/ui/AssetsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;->label:I

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    .line 235
    return-object v0

    .line 251
    :cond_3
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
