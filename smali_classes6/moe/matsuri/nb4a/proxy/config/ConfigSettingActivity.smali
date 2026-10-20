.class public final Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;
.super Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
.source "ConfigSettingActivity.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity<",
        "Lmoe/matsuri/nb4a/proxy/config/ConfigBean;",
        ">;",
        "Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000c\u0010\t\u001a\u00020\n*\u00020\u0002H\u0016J\u000c\u0010\u000b\u001a\u00020\n*\u00020\u0002H\u0016J\u0018\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J \u0010\u0012\u001a\u00020\n*\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0017\u001a\u00020\nH\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;",
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;",
        "Lmoe/matsuri/nb4a/proxy/config/ConfigBean;",
        "Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;",
        "<init>",
        "()V",
        "isOutboundOnlyKey",
        "",
        "createEntity",
        "init",
        "",
        "serialize",
        "onPreferenceDataStoreChanged",
        "store",
        "Landroidx/preference/PreferenceDataStore;",
        "key",
        "editConfigPreference",
        "Lmoe/matsuri/nb4a/ui/EditConfigPreference;",
        "createPreferences",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
        "onResume",
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
.field private editConfigPreference:Lmoe/matsuri/nb4a/ui/EditConfigPreference;

.field private final isOutboundOnlyKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 14
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    const-string v0, "isOutboundOnly"

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;->isOutboundOnlyKey:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic createEntity()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;->createEntity()Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    return-object v0
.end method

.method public createEntity()Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    .locals 1

    .line 19
    new-instance v0, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;-><init>()V

    return-object v0
.end method

.method public createPreferences(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "$this$createPreferences"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "rootKey"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const v0, 0x7f160006

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 49
    const-string v0, "serverConfig"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;->editConfigPreference:Lmoe/matsuri/nb4a/ui/EditConfigPreference;

    .line 50
    return-void
.end method

.method public bridge synthetic init(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V
    .locals 1
    .param p1, "$this$init"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 13
    move-object v0, p1

    check-cast v0, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;->init(Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V

    return-void
.end method

.method public init(Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V
    .locals 4
    .param p1, "$this$init"    # Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;->isOutboundOnlyKey:Ljava/lang/String;

    iget-object v2, p1, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->type:Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v1, v3}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v1, p1, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setProfileName(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v1, p1, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->config:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setServerConfig(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onPreferenceDataStoreChanged(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;)V
    .locals 2
    .param p1, "store"    # Landroidx/preference/PreferenceDataStore;
    .param p2, "key"    # Ljava/lang/String;

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-string v0, "profileDirty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setDirty(Z)V

    .line 39
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 53
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->onResume()V

    .line 55
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;->editConfigPreference:Lmoe/matsuri/nb4a/ui/EditConfigPreference;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;->editConfigPreference:Lmoe/matsuri/nb4a/ui/EditConfigPreference;

    if-nez v0, :cond_0

    const-string v0, "editConfigPreference"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->notifyChanged()V

    .line 58
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V
    .locals 1
    .param p1, "$this$serialize"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 13
    move-object v0, p1

    check-cast v0, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;->serialize(Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V

    return-void
.end method

.method public serialize(Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V
    .locals 3
    .param p1, "$this$serialize"    # Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;->isOutboundOnlyKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->type:Ljava/lang/Integer;

    .line 31
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->name:Ljava/lang/String;

    .line 32
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServerConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->config:Ljava/lang/String;

    .line 33
    return-void
.end method
