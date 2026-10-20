.class final Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/AppListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    value = "SMAP\nAppListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppListActivity.kt\nio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1\n+ 2 SparseBooleanArray.kt\nandroidx/core/util/SparseBooleanArrayKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,322:1\n27#2:323\n30#2:324\n774#3:325\n865#3,2:326\n*S KotlinDebug\n*F\n+ 1 AppListActivity.kt\nio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1\n*L\n244#1:323\n247#1:324\n250#1:325\n250#1:326,2\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.AppListActivity$onOptionsItemSelected$1"
    f = "AppListActivity.kt"
    i = {}
    l = {
        0xfd
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;


# direct methods
.method public static synthetic $r8$lambda$IeZjz11CunREDKD5magpiUhIz7I(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->invokeSuspend$lambda$1(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M0GYImkHNFiIwQjtGkOX4Afoc4k(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->invokeSuspend$lambda$2(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nMcyMfbQivNdYz2LYav14hY6Rfg(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->invokeSuspend$lambda$3(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/AppListActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "it"    # Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    .line 251
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static final invokeSuspend$lambda$2(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/AppListActivity;
    .param p1, "it"    # Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    .line 252
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method private static final invokeSuspend$lambda$3(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;
    .locals 1
    .param p0, "it"    # Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    .line 252
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    invoke-direct {v0, v1, p2}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 242
    iget v2, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    .line 243
    .local v2, "$result":Ljava/lang/Object;
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    .line 244
    .local v4, "app":Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;
    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getProxiedUids$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v7

    .local v7, "$this$contains$iv":Landroid/util/SparseBooleanArray;
    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getUid()I

    move-result v8

    .local v8, "key$iv":I
    const/4 v9, 0x0

    .line 323
    .local v9, "$i$f$contains":I
    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_0

    const/4 v5, 0x1

    nop

    .line 244
    .end local v7    # "$this$contains$iv":Landroid/util/SparseBooleanArray;
    .end local v8    # "key$iv":I
    .end local v9    # "$i$f$contains":I
    :cond_0
    if-eqz v5, :cond_1

    .line 245
    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getProxiedUids$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getProxiedUids$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    .local v5, "$this$set$iv":Landroid/util/SparseBooleanArray;
    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getUid()I

    move-result v7

    .local v7, "key$iv":I
    const/4 v4, 0x1

    .local v4, "value$iv":Z
    const/4 v8, 0x0

    .line 324
    .local v8, "$i$f$set":I
    nop

    .end local v4    # "value$iv":Z
    .end local v5    # "$this$set$iv":Landroid/util/SparseBooleanArray;
    .end local v7    # "key$iv":I
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .end local v8    # "$i$f$set":I
    goto :goto_0

    .line 250
    :cond_2
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    const/4 v8, 0x0

    .line 325
    .local v8, "$i$f$filter":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v9, "destination$iv$iv":Ljava/util/Collection;
    const/4 v10, 0x0

    .line 326
    .local v10, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v4

    check-cast v12, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    .local v12, "it":Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;
    const/4 v13, 0x0

    .line 250
    .local v13, "$i$a$-filter-AppListActivity$onOptionsItemSelected$1$1":I
    invoke-static {v7, v12}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z

    move-result v12

    .line 326
    .end local v12    # "it":Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;
    .end local v13    # "$i$a$-filter-AppListActivity$onOptionsItemSelected$1$1":I
    if-eqz v12, :cond_3

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 327
    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$i$f$filterTo":I
    move-object v4, v9

    check-cast v4, Ljava/util/List;

    .line 325
    nop

    .end local v8    # "$i$f$filter":I
    move-object v9, v4

    check-cast v9, Ljava/lang/Iterable;

    .line 251
    const-string v4, "\n"

    move-object v10, v4

    check-cast v10, Ljava/lang/CharSequence;

    new-instance v15, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1$$ExternalSyntheticLambda0;

    invoke-direct {v15}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1$$ExternalSyntheticLambda0;-><init>()V

    const/16 v16, 0x1e

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v3, v4}, Lio/nekohasekai/sagernet/database/DataStore;->setRoutePackages(Ljava/lang/String;)V

    .line 252
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    const/4 v7, 0x2

    new-array v7, v7, [Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    new-instance v9, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1$$ExternalSyntheticLambda1;

    invoke-direct {v9, v8}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;)V

    aput-object v9, v7, v5

    new-instance v5, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1$$ExternalSyntheticLambda2;-><init>()V

    aput-object v5, v7, v6

    invoke-static {v7}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$setApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;Ljava/util/List;)V

    .line 253
    new-instance v3, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1$5;

    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1$5;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v6, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;->label:I

    invoke-static {v3, v4}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    .line 242
    return-object v1

    .line 253
    :cond_5
    move-object v1, v2

    .line 256
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
