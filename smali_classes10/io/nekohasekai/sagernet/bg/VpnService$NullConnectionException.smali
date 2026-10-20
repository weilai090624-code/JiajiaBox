.class public final Lio/nekohasekai/sagernet/bg/VpnService$NullConnectionException;
.super Ljava/lang/NullPointerException;
.source "VpnService.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/bg/BaseService$ExpectedException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NullConnectionException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0004\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/VpnService$NullConnectionException;",
        "Ljava/lang/NullPointerException;",
        "Lkotlin/NullPointerException;",
        "Lio/nekohasekai/sagernet/bg/BaseService$ExpectedException;",
        "<init>",
        "(Lio/nekohasekai/sagernet/bg/VpnService;)V",
        "getLocalizedMessage",
        "",
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
.field final synthetic this$0:Lio/nekohasekai/sagernet/bg/VpnService;


# direct methods
.method public constructor <init>(Lio/nekohasekai/sagernet/bg/VpnService;)V
    .locals 0
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/bg/VpnService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/VpnService$NullConnectionException;->this$0:Lio/nekohasekai/sagernet/bg/VpnService;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalizedMessage()Ljava/lang/String;
    .locals 2

    .line 86
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/VpnService$NullConnectionException;->this$0:Lio/nekohasekai/sagernet/bg/VpnService;

    const v1, 0x7f13023d

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/VpnService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
