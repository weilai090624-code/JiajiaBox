.class public final Lmoe/matsuri/nb4a/ui/EditConfigPreference;
.super Landroidx/preference/Preference;
.source "EditConfigPreference.kt"

.method protected onClick()V
    .locals 2

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "globalCustomConfig"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :original

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->setIntent(Landroid/content/Intent;)V

    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/GlassConfigEditor;->open(Lmoe/matsuri/nb4a/ui/EditConfigPreference;)V

    return-void

    :original
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    return-void
.end method


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B+\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\u000bB\u001b\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\t\u0010\u000cB\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\rJ\u000e\u0010\u0014\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000fJ\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001aH\u0016R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/ui/EditConfigPreference;",
        "Landroidx/preference/Preference;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "configKey",
        "",
        "getConfigKey",
        "()Ljava/lang/String;",
        "setConfigKey",
        "(Ljava/lang/String;)V",
        "useConfigStore",
        "",
        "getUseConfigStore",
        "()Z",
        "setUseConfigStore",
        "(Z)V",
        "",
        "key",
        "getSummary",
        "",
        "notifyChanged",
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
.field private configKey:Ljava/lang/String;

.field private useConfigStore:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    nop

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->setIntent(Landroid/content/Intent;)V

    .line 29
    nop

    .line 31
    const-string v0, "serverConfig"

    iput-object v0, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->configKey:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    nop

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->setIntent(Landroid/content/Intent;)V

    .line 29
    nop

    .line 31
    const-string v0, "serverConfig"

    iput-object v0, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->configKey:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    nop

    .line 21
    nop

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    nop

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->setIntent(Landroid/content/Intent;)V

    .line 29
    nop

    .line 31
    const-string v0, "serverConfig"

    iput-object v0, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->configKey:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    nop

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->setIntent(Landroid/content/Intent;)V

    .line 29
    nop

    .line 31
    const-string v0, "serverConfig"

    iput-object v0, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->configKey:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final getConfigKey()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->configKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 10

    .line 49
    iget-boolean v0, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->useConfigStore:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getConfigurationStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServerConfig()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 50
    const-string v0, ""

    .line 49
    :cond_1
    nop

    .line 48
    nop

    .line 51
    .local v0, "config":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1301fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    return-object v1

    .line 54
    :cond_2
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v8, 0x1

    new-array v3, v8, [C

    const/16 v4, 0xa

    const/4 v9, 0x0

    aput-char v4, v3, v9

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v9

    const v2, 0x7f13016d

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/CharSequence;

    .line 51
    return-object v1
.end method

.method public final getUseConfigStore()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->useConfigStore:Z

    return v0
.end method

.method public notifyChanged()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 60
    return-void
.end method

.method public final setConfigKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->configKey:Ljava/lang/String;

    return-void
.end method

.method public final setUseConfigStore(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 32
    iput-boolean p1, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->useConfigStore:Z

    return-void
.end method

.method public final useConfigStore(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    nop

    .line 36
    :try_start_0
    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->configKey:Ljava/lang/String;

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->useConfigStore:Z

    .line 38
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    .local v2, "$this$useConfigStore_u24lambda_u240":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 39
    .local v3, "$i$a$-apply-EditConfigPreference$useConfigStore$1":I
    const-string v4, "useConfigStore"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    nop

    .line 38
    .end local v2    # "$this$useConfigStore_u24lambda_u240":Landroid/content/Intent;
    .end local v3    # "$i$a$-apply-EditConfigPreference$useConfigStore$1":I
    invoke-virtual {p0, v1}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->setIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
