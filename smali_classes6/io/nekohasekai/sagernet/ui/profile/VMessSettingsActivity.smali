.class public final Lio/nekohasekai/sagernet/ui/profile/VMessSettingsActivity;
.super Lio/nekohasekai/sagernet/ui/profile/StandardV2RaySettingsActivity;
.source "VMessSettingsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/profile/VMessSettingsActivity;",
        "Lio/nekohasekai/sagernet/ui/profile/StandardV2RaySettingsActivity;",
        "<init>",
        "()V",
        "createEntity",
        "Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;",
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
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/VMessSettingsActivity;->createEntity()Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    return-object v0
.end method

.method public createEntity()Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .locals 6

    .line 7
    new-instance v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;-><init>()V

    move-object v1, v0

    .local v1, "$this$createEntity_u24lambda_u240":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    const/4 v2, 0x0

    .line 8
    .local v2, "$i$a$-apply-VMessSettingsActivity$createEntity$1":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/VMessSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v5, "vless"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-eqz v4, :cond_1

    .line 9
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alterId:Ljava/lang/Integer;

    .line 11
    :cond_1
    nop

    .line 7
    .end local v1    # "$this$createEntity_u24lambda_u240":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .end local v2    # "$i$a$-apply-VMessSettingsActivity$createEntity$1":I
    nop

    .line 11
    return-object v0
.end method
