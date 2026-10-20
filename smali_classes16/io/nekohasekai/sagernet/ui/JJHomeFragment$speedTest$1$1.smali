.class final Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JJHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nJJHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1013:1\n1863#2,2:1014\n*S KotlinDebug\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1\n*L\n851#1:1014,2\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.JJHomeFragment$speedTest$1$1"
    f = "JJHomeFragment.kt"
    i = {}
    l = {
        0x353,
        0x354
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $profiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->$profiles:Ljava/util/List;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

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

    new-instance v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->$profiles:Ljava/util/List;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;-><init>(Ljava/util/List;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 831
    iget v2, v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local p0    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;
    :pswitch_0
    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v0

    goto/16 :goto_3

    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "$i$f$forEach":I
    const/4 v5, 0x0

    .local v5, "$i$a$-forEach-JJHomeFragment$speedTest$1$1$1":I
    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v0

    goto/16 :goto_2

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "$i$a$-forEach-JJHomeFragment$speedTest$1$1$1":I
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    .restart local v2    # "$result":Ljava/lang/Object;
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 832
    .local v4, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    new-instance v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->$profiles:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v5, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    move-object v11, v5

    .line 833
    .local v11, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;
    new-instance v5, Lio/nekohasekai/sagernet/bg/proto/UrlTest;

    invoke-direct {v5}, Lio/nekohasekai/sagernet/bg/proto/UrlTest;-><init>()V

    move-object v12, v5

    .line 834
    .local v12, "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    iget-object v13, v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    new-instance v14, Ljava/util/ArrayList;

    const/4 v15, 0x4

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v15, :cond_0

    const/16 v16, 0x0

    .line 835
    .local v16, "$i$a$-List-JJHomeFragment$speedTest$1$1$workers$1":I
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;

    invoke-direct {v5, v11, v13, v12, v3}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1$workers$1$1;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/bg/proto/UrlTest;Lkotlin/coroutines/Continuation;)V

    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/16 v17, 0x0

    const/4 v7, 0x0

    move-object v5, v4

    move/from16 v18, v10

    move-object/from16 v10, v17

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v5

    .line 849
    nop

    .line 834
    .end local v16    # "$i$a$-List-JJHomeFragment$speedTest$1$1$workers$1":I
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v18, 0x1

    goto :goto_0

    .end local v4    # "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    .end local v11    # "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;
    .end local v12    # "urlTest":Lio/nekohasekai/sagernet/bg/proto/UrlTest;
    :cond_0
    move-object v4, v14

    check-cast v4, Ljava/util/List;

    .line 851
    .local v4, "workers":Ljava/util/List;
    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1014
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v5

    move-object v5, v0

    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;
    .local v4, "$i$f$forEach":I
    .local v5, "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    check-cast v7, Lkotlinx/coroutines/Job;

    .local v7, "it":Lkotlinx/coroutines/Job;
    const/4 v8, 0x0

    .line 851
    .local v8, "$i$a$-forEach-JJHomeFragment$speedTest$1$1$1":I
    iput-object v6, v5, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->L$0:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v5, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->label:I

    invoke-interface {v7, v5}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "it":Lkotlinx/coroutines/Job;
    if-ne v7, v1, :cond_1

    .line 831
    return-object v1

    .line 851
    :cond_1
    move-object v7, v6

    move-object v6, v5

    move v5, v8

    .end local v8    # "$i$a$-forEach-JJHomeFragment$speedTest$1$1$1":I
    .local v5, "$i$a$-forEach-JJHomeFragment$speedTest$1$1$1":I
    .local v6, "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;
    :goto_2
    nop

    .line 1014
    .end local v5    # "$i$a$-forEach-JJHomeFragment$speedTest$1$1$1":I
    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 1015
    .end local v6    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;
    .local v5, "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;
    :cond_2
    nop

    .line 852
    .end local v4    # "$i$f$forEach":I
    sget-object v4, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    iget-object v6, v5, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->$profiles:Ljava/util/List;

    move-object v7, v5

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v3, v5, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v5, Lio/nekohasekai/sagernet/ui/JJHomeFragment$speedTest$1$1;->label:I

    invoke-virtual {v4, v6, v7}, Lio/nekohasekai/sagernet/database/ProfileManager;->updateProfile(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_3

    .line 831
    return-object v1

    .line 852
    :cond_3
    move-object v1, v2

    .line 853
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
