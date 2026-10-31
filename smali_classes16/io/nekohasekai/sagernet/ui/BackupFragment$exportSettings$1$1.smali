.class final Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BackupFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/BackupFragment;-><init>()V
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
    c = "io.nekohasekai.sagernet.ui.BackupFragment$exportSettings$1$1"
    f = "BackupFragment.kt"
    i = {}
    l = {
        0x31,
        0x36
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $data:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/BackupFragment;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->$data:Landroid/net/Uri;

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

    new-instance v0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->$data:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_a2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9d

    :pswitch_17
    :try_start_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_77

    .line 52
    :catch_1b
    move-exception v1

    goto :goto_7f

    .line 42
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 44
    :try_start_21
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/BackupFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 45
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->$data:Landroid/net/Uri;

    .line 44
    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v4, Ljava/io/Writer;

    instance-of v1, v4, Ljava/io/BufferedWriter;

    if-eqz v1, :cond_44

    check-cast v4, Ljava/io/BufferedWriter;

    goto :goto_4c

    :cond_44
    new-instance v1, Ljava/io/BufferedWriter;

    const/16 v3, 0x2000

    invoke-direct {v1, v4, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v4, v1

    :goto_4c
    check-cast v4, Ljava/io/Closeable;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_50} :catch_1b

    :try_start_50
    move-object v3, v4

    check-cast v3, Ljava/io/BufferedWriter;

    .local v3, "it":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 47
    .local v5, "$i$a$-use-BackupFragment$exportSettings$1$1$1":I
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/BackupFragment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 48
    nop

    .end local v3    # "it":Ljava/io/BufferedWriter;
    .end local v5    # "$i$a$-use-BackupFragment$exportSettings$1$1$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_78

    .line 46
    :try_start_5e
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 49
    new-instance v1, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1$2;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    invoke-direct {v1, v3, v2}, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1$2;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->label:I

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_74} :catch_1b

    if-ne v1, v0, :cond_77

    .line 42
    return-object v0

    .line 49
    :cond_77
    :goto_77
    goto :goto_9e

    .line 46
    :catchall_78
    move-exception v1

    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_79
    throw v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_7a
    move-exception v3

    :try_start_7b
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "$result":Ljava/lang/Object;
    throw v3
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7f} :catch_1b

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_7f
    sget-object v3, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 54
    new-instance v3, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1$3;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    invoke-direct {v3, v4, v1, v2}, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1$3;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x2

    iput v4, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;->label:I

    invoke-static {v3, v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "e":Ljava/lang/Exception;
    if-ne v1, v0, :cond_9d

    .line 42
    return-object v0

    .line 58
    :cond_9d
    :goto_9d
    nop

    :goto_9e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_17
        :pswitch_12
    .end packed-switch
.end method
