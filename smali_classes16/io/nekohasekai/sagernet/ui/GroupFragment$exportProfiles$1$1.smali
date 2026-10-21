.class final Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GroupFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/GroupFragment;-><init>()V
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
    c = "io.nekohasekai.sagernet.ui.GroupFragment$exportProfiles$1$1"
    f = "GroupFragment.kt"
    i = {}
    l = {
        0x9b,
        0xa0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $data:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;


# direct methods
.method public static synthetic $r8$lambda$Wrkd4aKn0DLDvi6w_r1MSRVrMJM(Lio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/lang/CharSequence;
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->invokeSuspend$lambda$0(Lio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lio/nekohasekai/sagernet/ui/GroupFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/GroupFragment;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->$data:Landroid/net/Uri;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "it"    # Lio/nekohasekai/sagernet/database/ProxyEntity;

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->toStdLink(Z)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->$data:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 146
    iget v1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_d8

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d3

    :pswitch_17
    :try_start_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1c

    goto/16 :goto_ad

    .line 158
    :catch_1c
    move-exception v1

    goto/16 :goto_b5

    .line 146
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 147
    .restart local p1    # "$result":Ljava/lang/Object;
    sget-object v1, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v1

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    # getter for: Lio/nekohasekai/sagernet/ui/GroupFragment;->selectedGroup:Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/GroupFragment;->access$getSelectedGroup$p(Lio/nekohasekai/sagernet/ui/GroupFragment;)Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v3

    if-nez v3, :cond_36

    const-string v3, "selectedGroup"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_36
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getByGroup(J)Ljava/util/List;

    move-result-object v1

    .line 148
    .local v1, "profiles":Ljava/util/List;
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    const-string v4, "\n"

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v9, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1$$ExternalSyntheticLambda0;-><init>()V

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .end local v1    # "profiles":Ljava/util/List;
    .local v3, "links":Ljava/lang/String;
    nop

    .line 150
    :try_start_56
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/GroupFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.MainActivity"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 151
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->$data:Landroid/net/Uri;

    .line 150
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 152
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v5, Ljava/io/Writer;

    instance-of v1, v5, Ljava/io/BufferedWriter;

    if-eqz v1, :cond_80

    check-cast v5, Ljava/io/BufferedWriter;

    goto :goto_88

    :cond_80
    new-instance v1, Ljava/io/BufferedWriter;

    const/16 v4, 0x2000

    invoke-direct {v1, v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v5, v1

    :goto_88
    check-cast v5, Ljava/io/Closeable;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_8a} :catch_1c

    :try_start_8a
    move-object v1, v5

    check-cast v1, Ljava/io/BufferedWriter;

    .local v1, "it":Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 153
    .local v4, "$i$a$-use-GroupFragment$exportProfiles$1$1$1":I
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 154
    .end local v3    # "links":Ljava/lang/String;
    nop

    .end local v1    # "it":Ljava/io/BufferedWriter;
    .end local v4    # "$i$a$-use-GroupFragment$exportProfiles$1$1$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_ae

    .line 152
    :try_start_94
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 155
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1$2;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    invoke-direct {v1, v3, v2}, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1$2;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->label:I

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_aa} :catch_1c

    if-ne v1, v0, :cond_ad

    .line 146
    return-object v0

    .line 155
    :cond_ad
    :goto_ad
    goto :goto_d4

    .line 152
    :catchall_ae
    move-exception v1

    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_af
    throw v1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_b0

    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_b0
    move-exception v3

    :try_start_b1
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "$result":Ljava/lang/Object;
    throw v3
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b5} :catch_1c

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_b5
    sget-object v3, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 160
    new-instance v3, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1$3;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    invoke-direct {v3, v4, v1, v2}, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1$3;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x2

    iput v4, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$exportProfiles$1$1;->label:I

    invoke-static {v3, v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "e":Ljava/lang/Exception;
    if-ne v1, v0, :cond_d3

    .line 146
    return-object v0

    .line 165
    :cond_d3
    :goto_d3
    nop

    :goto_d4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_17
        :pswitch_12
    .end packed-switch
.end method
