.class final Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BackupFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.nekohasekai.sagernet.ui.BackupFragment$startImport$3$1$1"
    f = "BackupFragment.kt"
    i = {}
    l = {
        0xfa,
        0xff
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $content:Lorg/json/JSONObject;

.field final synthetic $dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic $import:Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lorg/json/JSONObject;Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;Landroidx/appcompat/app/AlertDialog;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/BackupFragment;",
            "Lorg/json/JSONObject;",
            "Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;",
            "Landroidx/appcompat/app/AlertDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->$content:Lorg/json/JSONObject;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->$import:Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->$dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->$content:Lorg/json/JSONObject;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->$import:Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->$dialog:Landroidx/appcompat/app/AlertDialog;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lorg/json/JSONObject;Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;Landroidx/appcompat/app/AlertDialog;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 239
    iget v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->label:I

    const/4 v2, 0x0

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
    const/4 v1, 0x0

    .local v1, "$i$a$-onFailure-BackupFragment$startImport$3$1$1$2":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "$i$a$-onFailure-BackupFragment$startImport$3$1$1$2":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 240
    .local v1, "$this$runOnDefaultDispatcher":Lkotlinx/coroutines/CoroutineScope;
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->$content:Lorg/json/JSONObject;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->$import:Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;

    .end local v1    # "$this$runOnDefaultDispatcher":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x0

    .line 241
    .local v1, "$i$a$-runCatching-BackupFragment$startImport$3$1$1$1":I
    nop

    .line 242
    nop

    .line 243
    iget-object v6, v5, Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;->backupConfigurations:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 244
    iget-object v7, v5, Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;->backupRules:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 245
    iget-object v5, v5, Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;->backupSettings:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 241
    invoke-virtual {v3, v4, v6, v7, v5}, Lio/nekohasekai/sagernet/ui/BackupFragment;->finishImport(Lorg/json/JSONObject;ZZZ)V

    .line 247
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/BackupFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->triggerFullRestart(Landroid/content/Context;)V

    .line 248
    nop

    .end local v1    # "$i$a$-runCatching-BackupFragment$startImport$3$1$1$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 240
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 248
    :goto_0
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1

    .local v4, "it":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 249
    .local v5, "$i$a$-onFailure-BackupFragment$startImport$3$1$1$2":I
    sget-object v6, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    invoke-virtual {v6, v4}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 250
    new-instance v6, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1$2$1;

    invoke-direct {v6, v3, v4, v2}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1$2$1;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->L$0:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->label:I

    invoke-static {v6, p0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v4    # "it":Ljava/lang/Throwable;
    if-ne v1, v0, :cond_0

    .line 239
    return-object v0

    .line 250
    :cond_0
    move v1, v5

    .line 253
    .end local v5    # "$i$a$-onFailure-BackupFragment$startImport$3$1$1$2":I
    .local v1, "$i$a$-onFailure-BackupFragment$startImport$3$1$1$2":I
    :goto_1
    nop

    .line 248
    .end local v1    # "$i$a$-onFailure-BackupFragment$startImport$3$1$1$2":I
    nop

    .line 255
    :cond_1
    new-instance v1, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1$3;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {v1, v3, v2}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1$3;-><init>(Landroidx/appcompat/app/AlertDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;->label:I

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 239
    return-object v0

    .line 258
    :cond_2
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
