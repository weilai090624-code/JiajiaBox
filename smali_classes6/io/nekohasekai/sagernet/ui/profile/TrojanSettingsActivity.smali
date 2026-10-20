.class public final Lio/nekohasekai/sagernet/ui/profile/TrojanSettingsActivity;
.super Lio/nekohasekai/sagernet/ui/profile/StandardV2RaySettingsActivity;
.source "TrojanSettingsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/profile/TrojanSettingsActivity;",
        "Lio/nekohasekai/sagernet/ui/profile/StandardV2RaySettingsActivity;",
        "<init>",
        "()V",
        "createEntity",
        "Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;",
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
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/profile/StandardV2RaySettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createEntity()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/TrojanSettingsActivity;->createEntity()Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    return-object v0
.end method

.method public createEntity()Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    .locals 1

    .line 7
    new-instance v0, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;-><init>()V

    return-object v0
.end method
