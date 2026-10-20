.class final Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JJHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nJJHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1013:1\n1863#2,2:1014\n*S KotlinDebug\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1\n*L\n302#1:1014,2\n*E\n"
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
    c = "io.nekohasekai.sagernet.ui.JJHomeFragment$importNodes$1$1"
    f = "JJHomeFragment.kt"
    i = {
        0x1
    }
    l = {
        0x12a,
        0x12e
    }
    m = "invokeSuspend"
    n = {
        "beans"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $imported:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $nodeGroupId:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $text:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->$text:Ljava/lang/String;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->$nodeGroupId:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->$imported:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->$text:Ljava/lang/String;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->$nodeGroupId:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->$imported:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 296
    iget v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local p0    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;
    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "$i$f$forEach":I
    const/4 v2, 0x0

    .local v2, "$i$a$-forEach-JJHomeFragment$importNodes$1$1$1":I
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .local v5, "beans":Ljava/util/List;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, p0

    goto/16 :goto_2

    .end local v1    # "$i$f$forEach":I
    .end local v2    # "$i$a$-forEach-JJHomeFragment$importNodes$1$1$1":I
    .end local v5    # "beans":Ljava/util/List;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    move-object v2, p0

    goto/16 :goto_3

    .line 296
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 297
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 298
    :try_start_1
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->$text:Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->label:I

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->parseProxies(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-ne v1, v0, :cond_0

    .line 296
    return-object v0

    .line 298
    :cond_0
    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    .line 296
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    check-cast p1, Ljava/util/List;

    .line 299
    .local p1, "beans":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v2, :cond_1

    :try_start_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    .line 304
    .end local p1    # "beans":Ljava/util/List;
    :catch_1
    move-exception v0

    move-object v2, p0

    move-object p1, v1

    goto/16 :goto_3

    .line 300
    .restart local p1    # "beans":Ljava/util/List;
    :cond_1
    :try_start_4
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->$nodeGroupId:Lkotlin/jvm/internal/Ref$LongRef;

    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->selectedGroupForImport()J

    move-result-wide v3

    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 301
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->$nodeGroupId:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v3, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v2, v3, v4}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedGroup(J)V

    .line 302
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->$nodeGroupId:Lkotlin/jvm/internal/Ref$LongRef;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1014
    .local v4, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v2, p0

    move-object v12, v5

    move-object v5, p1

    move-object p1, v1

    move v1, v4

    move-object v4, v3

    move-object v3, v12

    .end local v4    # "$i$f$forEach":I
    .end local p0    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;
    .local v1, "$i$f$forEach":I
    .local v2, "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;
    .restart local v5    # "beans":Ljava/util/List;
    .local p1, "$result":Ljava/lang/Object;
    :goto_1
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-object v6, v7

    .local v6, "it":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    const/4 v7, 0x0

    .line 302
    .local v7, "$i$a$-forEach-JJHomeFragment$importNodes$1$1$1":I
    sget-object v8, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    iget-wide v9, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iput-object v5, v2, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, v2, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->L$2:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v2, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->label:I

    invoke-virtual {v8, v9, v10, v6, v2}, Lio/nekohasekai/sagernet/database/ProfileManager;->createProfile(JLio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    .end local v6    # "it":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    if-ne v8, v0, :cond_2

    .line 296
    return-object v0

    .line 302
    :cond_2
    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v7

    .end local v5    # "beans":Ljava/util/List;
    .end local v7    # "$i$a$-forEach-JJHomeFragment$importNodes$1$1$1":I
    .local v2, "$i$a$-forEach-JJHomeFragment$importNodes$1$1$1":I
    .local v3, "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;
    .local v6, "beans":Ljava/util/List;
    :goto_2
    nop

    .line 1014
    .end local v2    # "$i$a$-forEach-JJHomeFragment$importNodes$1$1$1":I
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_1

    .line 1015
    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;
    .end local v6    # "beans":Ljava/util/List;
    .local v2, "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;
    .restart local v5    # "beans":Ljava/util/List;
    :cond_3
    nop

    .line 303
    .end local v1    # "$i$f$forEach":I
    iget-object v0, v2, Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;->$imported:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v5    # "beans":Ljava/util/List;
    goto :goto_4

    .line 304
    :catch_2
    move-exception v0

    goto :goto_3

    .end local v2    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :catch_3
    move-exception v0

    move-object v2, p0

    move-object p1, v1

    goto :goto_3

    .end local v1    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_4
    move-exception v0

    move-object v2, p0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "this":Lio/nekohasekai/sagernet/ui/JJHomeFragment$importNodes$1$1;
    :goto_3
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
