.class final Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScannerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ScannerActivity;-><init>()V
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
    value = "SMAP\nScannerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScannerActivity.kt\nio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1\n+ 2 Utils.kt\nio/nekohasekai/sagernet/ktx/UtilsKt\n*L\n1#1,231:1\n66#2,10:232\n*S KotlinDebug\n*F\n+ 1 ScannerActivity.kt\nio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1\n*L\n65#1:232,10\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.ScannerActivity$importCodeFile$1$1"
    f = "ScannerActivity.kt"
    i = {
        0x0
    }
    l = {
        0x51,
        0x58
    }
    m = "invokeSuspend"
    n = {
        "result$iv"
    }
    s = {
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $it:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;


# direct methods
.method public static synthetic $r8$lambda$2KlnTEA4WQmcgJvsevMO7l_Ygvc(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->invokeSuspend$lambda$1$lambda$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lio/nekohasekai/sagernet/ui/ScannerActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lio/nekohasekai/sagernet/ui/ScannerActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->$it:Ljava/util/List;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1$lambda$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;

    .line 72
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 73
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 74
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->$it:Ljava/util/List;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;-><init>(Ljava/util/List;Lio/nekohasekai/sagernet/ui/ScannerActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 63
    iget v1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local p0    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    goto/16 :goto_5

    :pswitch_1
    const/4 v1, 0x0

    .local v1, "$i$f$forEachTry":I
    const/4 v3, 0x0

    .local v3, "$i$a$-forEachTry-ScannerActivity$importCodeFile$1$1$1":I
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Exception;

    .local v5, "result$iv":Ljava/lang/Exception;
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/nekohasekai/sagernet/ui/ScannerActivity;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, p0

    goto/16 :goto_2

    .line 235
    .end local v3    # "$i$a$-forEachTry-ScannerActivity$importCodeFile$1$1$1":I
    :catch_0
    move-exception v3

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, p0

    goto/16 :goto_3

    .line 63
    .end local v1    # "$i$f$forEachTry":I
    .end local v5    # "result$iv":Ljava/lang/Exception;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 65
    :try_start_1
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->$it:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;

    .local v1, "$this$forEachTry$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 232
    .local v4, "$i$f$forEachTry":I
    const/4 v5, 0x0

    .line 233
    .restart local v5    # "result$iv":Ljava/lang/Exception;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move v1, v4

    move-object v4, v6

    move-object v6, v3

    move-object v3, p0

    .end local v4    # "$i$f$forEachTry":I
    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    .local v1, "$i$f$forEachTry":I
    .local v3, "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    :goto_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 234
    .local v7, "element$iv":Ljava/lang/Object;
    :try_start_3
    move-object v8, v7

    check-cast v8, Landroid/net/Uri;

    move-object v7, v8

    .local v7, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 66
    .local v8, "$i$a$-forEachTry-ScannerActivity$importCodeFile$1$1$1":I
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_0

    .line 69
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 68
    .end local v7    # "uri":Landroid/net/Uri;
    invoke-static {v9, v7}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v7

    .line 71
    new-instance v9, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1$$ExternalSyntheticLambda0;-><init>()V

    .line 67
    invoke-static {v7, v9}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1

    .line 77
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 76
    .end local v7    # "uri":Landroid/net/Uri;
    invoke-static {v9, v7}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 66
    :goto_1
    nop

    .line 80
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/king/zxing/util/CodeUtils;->parseCodeResult(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;

    move-result-object v9

    move-object v7, v9

    .line 81
    .local v7, "result":Lcom/google/zxing/Result;
    new-instance v9, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1$1$1;

    invoke-direct {v9, v6, v7, v2}, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1$1$1;-><init>(Lio/nekohasekai/sagernet/ui/ScannerActivity;Lcom/google/zxing/Result;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object v6, v3, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->L$1:Ljava/lang/Object;

    iput-object v4, v3, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->L$2:Ljava/lang/Object;

    const/4 v10, 0x1

    iput v10, v3, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->label:I

    invoke-static {v9, v3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v7    # "result":Lcom/google/zxing/Result;
    if-ne v9, v0, :cond_1

    .line 63
    return-object v0

    .line 81
    :cond_1
    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v8

    .line 84
    .end local v5    # "result$iv":Ljava/lang/Exception;
    .end local v8    # "$i$a$-forEachTry-ScannerActivity$importCodeFile$1$1$1":I
    .local v3, "$i$a$-forEachTry-ScannerActivity$importCodeFile$1$1$1":I
    .local v4, "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    .local v6, "result$iv":Ljava/lang/Exception;
    :goto_2
    nop

    .line 234
    .end local v3    # "$i$a$-forEachTry-ScannerActivity$importCodeFile$1$1$1":I
    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_0

    .line 235
    .end local v4    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    .end local v6    # "result$iv":Ljava/lang/Exception;
    .local v3, "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    .restart local v5    # "result$iv":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    move-object v11, v4

    move-object v4, v3

    move-object v3, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v11

    .line 236
    .end local v5    # "result$iv":Ljava/lang/Exception;
    .local v3, "e$iv":Ljava/lang/Exception;
    .restart local v4    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    .restart local v6    # "result$iv":Ljava/lang/Exception;
    :goto_3
    if-nez v6, :cond_2

    move-object v6, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_0

    :cond_2
    :try_start_4
    move-object v8, v6

    check-cast v8, Ljava/lang/Throwable;

    move-object v9, v3

    check-cast v9, Ljava/lang/Throwable;

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .end local v3    # "e$iv":Ljava/lang/Exception;
    goto :goto_0

    .line 86
    .end local v1    # "$i$f$forEachTry":I
    .end local v6    # "result$iv":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    move-object v3, v4

    goto :goto_4

    .line 238
    .end local v4    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    .restart local v1    # "$i$f$forEachTry":I
    .local v3, "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    .restart local v5    # "result$iv":Ljava/lang/Exception;
    :cond_3
    if-nez v5, :cond_4

    .line 241
    nop

    .line 85
    .end local v1    # "$i$f$forEachTry":I
    .end local v5    # "result$iv":Ljava/lang/Exception;
    :try_start_5
    iget-object v1, v3, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/ScannerActivity;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->finish()V

    goto :goto_6

    .line 239
    .restart local v1    # "$i$f$forEachTry":I
    .restart local v5    # "result$iv":Ljava/lang/Exception;
    :cond_4
    nop

    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 86
    .end local v1    # "$i$f$forEachTry":I
    .end local v5    # "result$iv":Ljava/lang/Exception;
    .restart local v3    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_3
    move-exception v1

    goto :goto_4

    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    :catch_4
    move-exception v1

    move-object v3, p0

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "this":Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;
    :goto_4
    sget-object v4, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 88
    new-instance v4, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1$2;

    invoke-direct {v4, v1, v2}, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1$2;-><init>(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, v3

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v3, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v3, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;->label:I

    invoke-static {v4, v5}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "e":Ljava/lang/Exception;
    if-ne v1, v0, :cond_5

    .line 63
    return-object v0

    .line 92
    :cond_5
    :goto_5
    nop

    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
