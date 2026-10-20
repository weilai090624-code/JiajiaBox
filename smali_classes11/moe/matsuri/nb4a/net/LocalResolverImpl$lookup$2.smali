.class final Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LocalResolverImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/matsuri/nb4a/net/LocalResolverImpl;->lookup(Llibcore/ExchangeContext;Ljava/lang/String;Ljava/lang/String;)V
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
    value = "SMAP\nLocalResolverImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalResolverImpl.kt\nmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n11483#2,9:152\n13409#2:161\n13410#2:163\n11492#2:164\n1#3:162\n*S KotlinDebug\n*F\n+ 1 LocalResolverImpl.kt\nmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2\n*L\n137#1:152,9\n137#1:161\n137#1:163\n137#1:164\n137#1:162\n*E\n"
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
    c = "moe.matsuri.nb4a.net.LocalResolverImpl$lookup$2"
    f = "LocalResolverImpl.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $ctx:Llibcore/ExchangeContext;

.field final synthetic $domain:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Llibcore/ExchangeContext;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Llibcore/ExchangeContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->$domain:Ljava/lang/String;

    iput-object p2, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->$ctx:Llibcore/ExchangeContext;

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

    new-instance v0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;

    iget-object v1, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->$domain:Ljava/lang/String;

    iget-object v2, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->$ctx:Llibcore/ExchangeContext;

    invoke-direct {v0, v1, v2, p2}, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;-><init>(Ljava/lang/String;Llibcore/ExchangeContext;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 127
    iget v0, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 129
    .local p1, "$result":Ljava/lang/Object;
    nop

    .line 130
    const v0, 0x1bf52

    :try_start_0
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .local v1, "u":Landroid/net/Network;
    nop

    .line 132
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v3, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->$domain:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 133
    .end local v1    # "u":Landroid/net/Network;
    :catch_0
    move-exception v1

    .line 134
    nop

    .line 131
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 135
    :try_start_2
    iget-object v1, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->$domain:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 131
    :cond_1
    move-object v1, v2

    .line 136
    .local v1, "answer":[Ljava/net/InetAddress;
    if-eqz v1, :cond_4

    .line 137
    iget-object v2, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->$ctx:Llibcore/ExchangeContext;

    .local v1, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 152
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v1, "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    .local v4, "destination$iv$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 160
    .local v5, "$i$f$mapNotNullTo":I
    nop

    .local v1, "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 161
    .local v6, "$i$f$forEach":I
    array-length v7, v1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v1, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 160
    .local v10, "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    move-object v11, v9

    .local v11, "it":Ljava/net/InetAddress;
    const/4 v12, 0x0

    .line 137
    .local v12, "$i$a$-mapNotNull-LocalResolverImpl$lookup$2$1":I
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    .line 160
    .end local v11    # "it":Ljava/net/InetAddress;
    .end local v12    # "$i$a$-mapNotNull-LocalResolverImpl$lookup$2$1":I
    if-eqz v13, :cond_2

    move-object v11, v13

    .line 162
    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 160
    .local v12, "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 163
    :cond_3
    nop

    .line 164
    .end local v1    # "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$mapNotNullTo":I
    move-object v1, v4

    check-cast v1, Ljava/util/List;

    .line 152
    nop

    .end local v3    # "$i$f$mapNotNull":I
    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    .line 137
    const-string v1, "\n"

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Llibcore/ExchangeContext;->success(Ljava/lang/String;)V

    goto :goto_2

    .line 139
    :cond_4
    iget-object v1, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->$ctx:Llibcore/ExchangeContext;

    invoke-virtual {v1, v0}, Llibcore/ExchangeContext;->errnoCode(I)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 143
    :catch_1
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 145
    iget-object v2, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->$ctx:Llibcore/ExchangeContext;

    invoke-virtual {v2, v0}, Llibcore/ExchangeContext;->errnoCode(I)V

    goto :goto_2

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 142
    iget-object v0, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$2;->$ctx:Llibcore/ExchangeContext;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Llibcore/ExchangeContext;->errorCode(I)V

    .line 147
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
