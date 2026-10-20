.class public final Lio/nekohasekai/sagernet/database/ProxyGroup$Companion$CREATOR$1;
.super Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;
.source "ProxyGroup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/database/ProxyGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR<",
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u001d\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "io/nekohasekai/sagernet/database/ProxyGroup$Companion$CREATOR$1",
        "Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;",
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        "newInstance",
        "newArray",
        "",
        "size",
        "",
        "(I)[Lio/nekohasekai/sagernet/database/ProxyGroup;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public newArray(I)[Lio/nekohasekai/sagernet/database/ProxyGroup;
    .locals 1
    .param p1, "size"    # I

    .line 138
    new-array v0, p1, [Lio/nekohasekai/sagernet/database/ProxyGroup;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "p0"    # I

    .line 131
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/database/ProxyGroup$Companion$CREATOR$1;->newArray(I)[Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lio/nekohasekai/sagernet/database/ProxyGroup;
    .locals 18

    .line 134
    new-instance v17, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object/from16 v0, v17

    const/16 v15, 0x3ff

    const/16 v16, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-direct/range {v0 .. v16}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v17
.end method

.method public bridge synthetic newInstance()Lio/nekohasekai/sagernet/fmt/Serializable;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyGroup$Companion$CREATOR$1;->newInstance()Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/Serializable;

    return-object v0
.end method
