.class public final Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;
.super Ljava/lang/Object;
.source "LocalResolverImpl.kt"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/matsuri/nb4a/net/LocalResolverImpl;->lookup(Llibcore/ExchangeContext;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/DnsResolver$Callback<",
        "Ljava/util/Collection<",
        "+",
        "Ljava/net/InetAddress;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalResolverImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalResolverImpl.kt\nmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n1611#2,9:152\n1863#2:161\n1864#2:163\n1620#2:164\n1#3:162\n*S KotlinDebug\n*F\n+ 1 LocalResolverImpl.kt\nmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1\n*L\n75#1:152,9\n75#1:161\n75#1:163\n75#1:164\n75#1:162\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u001e\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "moe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1",
        "Landroid/net/DnsResolver$Callback;",
        "",
        "Ljava/net/InetAddress;",
        "onAnswer",
        "",
        "answer",
        "rcode",
        "",
        "onError",
        "error",
        "Landroid/net/DnsResolver$DnsException;",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $ctx:Llibcore/ExchangeContext;


# direct methods
.method constructor <init>(Llibcore/ExchangeContext;)V
    .locals 0
    .param p1, "$ctx"    # Llibcore/ExchangeContext;

    iput-object p1, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;->$ctx:Llibcore/ExchangeContext;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAnswer(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # I

    .line 71
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0, p2}, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;->onAnswer(Ljava/util/Collection;I)V

    return-void
.end method

.method public onAnswer(Ljava/util/Collection;I)V
    .locals 18
    .param p1, "answer"    # Ljava/util/Collection;
    .param p2, "rcode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/net/InetAddress;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "answer"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    nop

    .line 74
    if-nez v3, :cond_2

    .line 75
    :try_start_0
    iget-object v0, v1, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;->$ctx:Llibcore/ExchangeContext;

    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 152
    .local v5, "$i$f$mapNotNull":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 160
    .local v8, "$i$f$mapNotNullTo":I
    move-object v9, v7

    .local v9, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 161
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "element$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 160
    .local v14, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v15, v13

    check-cast v15, Ljava/net/InetAddress;

    .local v15, "it":Ljava/net/InetAddress;
    const/16 v16, 0x0

    .line 75
    .local v16, "$i$a$-mapNotNull-LocalResolverImpl$lookup$callback$1$onAnswer$1":I
    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    .line 160
    .end local v15    # "it":Ljava/net/InetAddress;
    .end local v16    # "$i$a$-mapNotNull-LocalResolverImpl$lookup$callback$1$onAnswer$1":I
    if-eqz v17, :cond_0

    move-object/from16 v15, v17

    .line 162
    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 160
    .local v16, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v6, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v12    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 163
    :cond_1
    nop

    .line 164
    .end local v9    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEach":I
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapNotNullTo":I
    check-cast v6, Ljava/util/List;

    .line 152
    nop

    .end local v4    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNull":I
    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    .line 75
    const-string v4, "\n"

    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    const/16 v14, 0x3e

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Llibcore/ExchangeContext;->success(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, v1, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;->$ctx:Llibcore/ExchangeContext;

    invoke-virtual {v0, v3}, Llibcore/ExchangeContext;->errorCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 81
    iget-object v4, v1, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;->$ctx:Llibcore/ExchangeContext;

    const v5, 0x1bf52

    invoke-virtual {v4, v5}, Llibcore/ExchangeContext;->errnoCode(I)V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onError(Landroid/net/DnsResolver$DnsException;)V
    .locals 4
    .param p1, "error"    # Landroid/net/DnsResolver$DnsException;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    nop

    .line 87
    const v0, 0x1bf52

    :try_start_0
    invoke-virtual {p1}, Landroid/net/DnsResolver$DnsException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 88
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Landroid/system/ErrnoException;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;->$ctx:Llibcore/ExchangeContext;

    move-object v3, v1

    check-cast v3, Landroid/system/ErrnoException;

    iget v3, v3, Landroid/system/ErrnoException;->errno:I

    invoke-virtual {v2, v3}, Llibcore/ExchangeContext;->errnoCode(I)V

    goto :goto_0

    .line 91
    :cond_0
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 92
    iget-object v2, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;->$ctx:Llibcore/ExchangeContext;

    invoke-virtual {v2, v0}, Llibcore/ExchangeContext;->errnoCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cause":Ljava/lang/Throwable;
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 96
    iget-object v2, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$lookup$callback$1;->$ctx:Llibcore/ExchangeContext;

    invoke-virtual {v2, v0}, Llibcore/ExchangeContext;->errnoCode(I)V

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
