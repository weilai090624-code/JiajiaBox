.class final Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigurationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConfigurationFragment;-><init>(ZLio/nekohasekai/sagernet/database/ProxyEntity;I)V
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
    value = "SMAP\nConfigurationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,1764:1\n1#2:1765\n29#3:1766\n*S KotlinDebug\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1\n*L\n340#1:1766\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.ConfigurationFragment$importFile$1$1"
    f = "ConfigurationFragment.kt"
    i = {
        0x0,
        0x0,
        0x1
    }
    l = {
        0x143,
        0x14d,
        0x150,
        0x152,
        0x154,
        0x157
    }
    m = "invokeSuspend"
    n = {
        "proxies",
        "zip",
        "proxies"
    }
    s = {
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $file:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->$file:Landroid/net/Uri;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->$file:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 305
    iget v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->label:I

    const/16 v2, 0x2000

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local p0    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    goto/16 :goto_a

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    goto/16 :goto_c

    :pswitch_2
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    goto/16 :goto_8

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, p0

    goto/16 :goto_7

    .line 341
    :catch_0
    move-exception v1

    move-object v5, p0

    goto/16 :goto_9

    .line 339
    :catch_1
    move-exception v1

    move-object v5, p0

    goto/16 :goto_b

    .line 305
    :pswitch_4
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, "proxies":Ljava/util/List;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v1

    move-object v1, p1

    goto/16 :goto_5

    .end local v1    # "proxies":Ljava/util/List;
    :pswitch_5
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/zip/ZipInputStream;

    .local v1, "zip":Ljava/util/zip/ZipInputStream;
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .local v4, "proxies":Ljava/util/List;
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, p0

    move-object v5, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_3

    .end local v1    # "zip":Ljava/util/zip/ZipInputStream;
    .end local v4    # "proxies":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 306
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 309
    nop

    .line 308
    :try_start_3
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->$file:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_3
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 309
    if-eqz v1, :cond_0

    .line 308
    :try_start_4
    check-cast v1, Ljava/io/Closeable;
    :try_end_4
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 309
    :try_start_5
    move-object v4, v1

    check-cast v4, Landroid/database/Cursor;

    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 310
    .local v5, "$i$a$-use-ConfigurationFragment$importFile$1$1$fileName$1":I
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 311
    const-string v6, "_display_name"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 312
    nop

    .line 1765
    .local v6, "p0":I
    const/4 v7, 0x0

    .local v7, "$i$a$-let-ConfigurationFragment$importFile$1$1$fileName$1$1":I
    const/4 v8, 0x0

    .line 312
    .local v8, "$i$f$invokeSuspend$lambda$0$stub_for_inlining":I
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 309
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "$i$a$-use-ConfigurationFragment$importFile$1$1$fileName$1":I
    .end local v6    # "p0":I
    .end local v7    # "$i$a$-let-ConfigurationFragment$importFile$1$1$fileName$1$1":I
    .end local v8    # "$i$f$invokeSuspend$lambda$0$stub_for_inlining":I
    :try_start_6
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v4

    :try_start_8
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "$result":Ljava/lang/Object;
    throw v4
    :try_end_8
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_0
    move-object v9, v3

    .line 307
    :goto_0
    move-object v1, v9

    .line 314
    .local v1, "fileName":Ljava/lang/String;
    :try_start_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 315
    .local v4, "proxies":Ljava/util/List;
    const/4 v5, 0x2

    if-eqz v1, :cond_6

    const-string v6, ".zip"

    const/4 v7, 0x0

    invoke-static {v1, v6, v7, v5, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 318
    .end local v1    # "fileName":Ljava/lang/String;
    new-instance v1, Ljava/util/zip/ZipInputStream;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->$file:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 317
    move-object v5, p0

    .line 319
    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
    .local v1, "zip":Ljava/util/zip/ZipInputStream;
    .local v5, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
    :cond_1
    :goto_1
    nop

    .line 320
    :try_start_a
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-nez v6, :cond_2

    .line 327
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .end local v1    # "zip":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_6

    .line 321
    .restart local v1    # "zip":Ljava/util/zip/ZipInputStream;
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    :cond_2
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 322
    move-object v7, v1

    check-cast v7, Ljava/io/InputStream;

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v9, Ljava/io/Reader;

    instance-of v7, v9, Ljava/io/BufferedReader;

    if-eqz v7, :cond_3

    check-cast v9, Ljava/io/BufferedReader;

    goto :goto_2

    :cond_3
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v9, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v9, v7

    :goto_2
    check-cast v9, Ljava/io/Reader;

    invoke-static {v9}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, "fileText":Ljava/lang/String;
    nop

    .line 323
    sget-object v8, Lio/nekohasekai/sagernet/group/RawUpdater;->INSTANCE:Lio/nekohasekai/sagernet/group/RawUpdater;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "fileText":Ljava/lang/String;
    const-string v6, "getName(...)"

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v5

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$1:Ljava/lang/Object;

    const/4 v10, 0x1

    iput v10, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->label:I

    invoke-virtual {v8, v7, v9, v6}, Lio/nekohasekai/sagernet/group/RawUpdater;->parseRaw(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_a
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    if-ne v6, v0, :cond_4

    .line 305
    return-object v0

    .line 323
    :cond_4
    move-object v11, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v11

    .line 305
    .end local v1    # "zip":Ljava/util/zip/ZipInputStream;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v4, "zip":Ljava/util/zip/ZipInputStream;
    .local v5, "proxies":Ljava/util/List;
    .local v6, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
    :goto_3
    :try_start_b
    check-cast p1, Ljava/util/List;

    .line 324
    if-eqz p1, :cond_5

    .line 323
    nop

    .line 324
    nop

    .line 1765
    .local p1, "pl":Ljava/util/List;
    const/4 v7, 0x0

    .line 324
    .local v7, "$i$a$-let-ConfigurationFragment$importFile$1$1$1":I
    move-object v8, p1

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .end local v7    # "$i$a$-let-ConfigurationFragment$importFile$1$1$1":I
    .end local p1    # "pl":Ljava/util/List;
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 325
    :cond_5
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_b
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-object p1, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_1

    .line 341
    .end local v4    # "zip":Ljava/util/zip/ZipInputStream;
    .end local v5    # "proxies":Ljava/util/List;
    :catch_2
    move-exception p1

    move-object v5, v6

    move-object v11, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v11

    goto/16 :goto_9

    .line 339
    :catch_3
    move-exception p1

    move-object v5, v6

    move-object v11, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v11

    goto/16 :goto_b

    .line 330
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
    .local v1, "fileName":Ljava/lang/String;
    .local v4, "proxies":Ljava/util/List;
    .local p1, "$result":Ljava/lang/Object;
    :cond_6
    :try_start_c
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->$file:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Ljava/io/Closeable;
    :try_end_c
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :try_start_d
    move-object v7, v6

    check-cast v7, Ljava/io/InputStream;

    .local v7, "it":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 331
    .local v8, "$i$a$-use-ConfigurationFragment$importFile$1$1$fileText$1":I
    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v10, Ljava/io/Reader;

    instance-of v9, v10, Ljava/io/BufferedReader;

    if-eqz v9, :cond_7

    check-cast v10, Ljava/io/BufferedReader;

    goto :goto_4

    .end local v7    # "it":Ljava/io/InputStream;
    :cond_7
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v10, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v10, v7

    :goto_4
    check-cast v10, Ljava/io/Reader;

    invoke-static {v10}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 330
    .end local v8    # "$i$a$-use-ConfigurationFragment$importFile$1$1$fileText$1":I
    :try_start_e
    invoke-static {v6, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 329
    nop

    .line 334
    .local v2, "fileText":Ljava/lang/String;
    nop

    .line 333
    sget-object v6, Lio/nekohasekai/sagernet/group/RawUpdater;->INSTANCE:Lio/nekohasekai/sagernet/group/RawUpdater;

    if-nez v1, :cond_8

    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "fileText":Ljava/lang/String;
    const-string v1, ""

    :cond_8
    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->label:I

    invoke-virtual {v6, v2, v1, v7}, Lio/nekohasekai/sagernet/group/RawUpdater;->parseRaw(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_e
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    if-ne v1, v0, :cond_9

    .line 305
    return-object v0

    .line 333
    :cond_9
    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    .line 305
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_5
    :try_start_f
    check-cast p1, Ljava/util/List;

    .line 334
    if-eqz p1, :cond_a

    .line 333
    nop

    .line 334
    nop

    .line 1765
    .local p1, "pl":Ljava/util/List;
    const/4 v2, 0x0

    .line 334
    .local v2, "$i$a$-let-ConfigurationFragment$importFile$1$1$2":I
    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .end local v2    # "$i$a$-let-ConfigurationFragment$importFile$1$1$2":I
    .end local p1    # "pl":Ljava/util/List;
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_f
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 336
    :cond_a
    move-object v5, p0

    move-object p1, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .local v5, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
    .local p1, "$result":Ljava/lang/Object;
    :goto_6
    :try_start_10
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1$3;

    iget-object v2, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-direct {v1, v2, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1$3;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v2, v5

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v3, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->label:I

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v4    # "proxies":Ljava/util/List;
    if-ne v1, v0, :cond_b

    .line 305
    return-object v0

    .line 336
    :cond_b
    :goto_7
    goto/16 :goto_d

    .line 338
    .restart local v4    # "proxies":Ljava/util/List;
    :cond_c
    iget-object v1, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    move-object v2, v5

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v3, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->label:I

    invoke-virtual {v1, v4, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->import(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_10
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .end local v4    # "proxies":Ljava/util/List;
    if-ne v1, v0, :cond_d

    .line 305
    return-object v0

    .line 338
    :cond_d
    :goto_8
    goto/16 :goto_d

    .line 341
    :catch_4
    move-exception v1

    goto :goto_9

    .line 339
    :catch_5
    move-exception v1

    goto :goto_b

    .line 341
    .end local v5    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :catch_6
    move-exception p1

    move-object v5, p0

    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    goto :goto_9

    .line 339
    :catch_7
    move-exception p1

    move-object v5, p0

    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    goto :goto_b

    .line 330
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v1

    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_3
    move-exception v2

    :try_start_12
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "$result":Ljava/lang/Object;
    throw v2
    :try_end_12
    .catch Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 341
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_8
    move-exception v1

    move-object v5, p0

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    .restart local v5    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
    :goto_9
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 343
    new-instance v2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1$4;

    iget-object v4, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-direct {v2, v4, v1, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1$4;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v4, v5

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v3, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->label:I

    invoke-static {v2, v4}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "e":Ljava/lang/Exception;
    if-ne v1, v0, :cond_e

    .line 305
    return-object v0

    .line 347
    :cond_e
    :goto_a
    goto :goto_d

    .line 339
    .end local v5    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
    :catch_9
    move-exception v1

    move-object v5, p0

    .line 340
    .local v1, "e":Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException;
    .restart local v5    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;
    :goto_b
    iget-object v2, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.MainActivity"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException;->getLink()Ljava/lang/String;

    move-result-object v1

    .local v1, "$this$toUri$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1766
    .local v4, "$i$f$toUri":I
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .end local v1    # "$this$toUri$iv":Ljava/lang/String;
    .end local v4    # "$i$f$toUri":I
    move-object v4, v5

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 340
    iput-object v3, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;->label:I

    invoke-virtual {v2, v1, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->importSubscription(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_f

    .line 305
    return-object v0

    .line 340
    :cond_f
    :goto_c
    nop

    .line 347
    :goto_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
