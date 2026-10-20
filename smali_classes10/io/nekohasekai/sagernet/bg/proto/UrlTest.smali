.class public final Lio/nekohasekai/sagernet/bg/proto/UrlTest;
.super Ljava/lang/Object;
.source "UrlTest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/proto/UrlTest;",
        "",
        "<init>",
        "()V",
        "link",
        "",
        "getLink",
        "()Ljava/lang/String;",
        "timeout",
        "",
        "doTest",
        "profile",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final link:Ljava/lang/String;

.field private final timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getConnectionTestURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/UrlTest;->link:Ljava/lang/String;

    .line 9
    const/16 v0, 0x1388

    iput v0, p0, Lio/nekohasekai/sagernet/bg/proto/UrlTest;->timeout:I

    .line 6
    return-void
.end method


# virtual methods
.method public final doTest(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "profile"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 12
    new-instance v0, Lio/nekohasekai/sagernet/bg/proto/TestInstance;

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/proto/UrlTest;->link:Ljava/lang/String;

    iget v2, p0, Lio/nekohasekai/sagernet/bg/proto/UrlTest;->timeout:I

    invoke-direct {v0, p1, v1, v2}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity;Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Lio/nekohasekai/sagernet/bg/proto/TestInstance;->doTest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/UrlTest;->link:Ljava/lang/String;

    return-object v0
.end method
