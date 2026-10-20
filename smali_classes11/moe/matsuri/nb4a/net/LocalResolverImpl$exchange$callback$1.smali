.class public final Lmoe/matsuri/nb4a/net/LocalResolverImpl$exchange$callback$1;
.super Ljava/lang/Object;
.source "LocalResolverImpl.kt"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/matsuri/nb4a/net/LocalResolverImpl;->exchange(Llibcore/ExchangeContext;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/DnsResolver$Callback<",
        "[B>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "moe/matsuri/nb4a/net/LocalResolverImpl$exchange$callback$1",
        "Landroid/net/DnsResolver$Callback;",
        "",
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

    iput-object p1, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$exchange$callback$1;->$ctx:Llibcore/ExchangeContext;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAnswer(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # I

    .line 40
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0, p2}, Lmoe/matsuri/nb4a/net/LocalResolverImpl$exchange$callback$1;->onAnswer([BI)V

    return-void
.end method

.method public onAnswer([BI)V
    .locals 1
    .param p1, "answer"    # [B
    .param p2, "rcode"    # I

    const-string v0, "answer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$exchange$callback$1;->$ctx:Llibcore/ExchangeContext;

    invoke-virtual {v0, p1}, Llibcore/ExchangeContext;->rawSuccess([B)V

    .line 43
    return-void
.end method

.method public onError(Landroid/net/DnsResolver$DnsException;)V
    .locals 3
    .param p1, "error"    # Landroid/net/DnsResolver$DnsException;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/net/DnsResolver$DnsException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 47
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Landroid/system/ErrnoException;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$exchange$callback$1;->$ctx:Llibcore/ExchangeContext;

    move-object v2, v0

    check-cast v2, Landroid/system/ErrnoException;

    iget v2, v2, Landroid/system/ErrnoException;->errno:I

    invoke-virtual {v1, v2}, Llibcore/ExchangeContext;->errnoCode(I)V

    goto :goto_0

    .line 50
    :cond_0
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 51
    iget-object v1, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$exchange$callback$1;->$ctx:Llibcore/ExchangeContext;

    const v2, 0x1bf52

    invoke-virtual {v1, v2}, Llibcore/ExchangeContext;->errnoCode(I)V

    .line 53
    :goto_0
    return-void
.end method
