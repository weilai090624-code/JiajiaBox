.class public final Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;
.super Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
.source "ShadowsocksSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity<",
        "Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShadowsocksSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShadowsocksSettingsActivity.kt\nio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u000c\u0010\u0011\u001a\u00020\u0012*\u00020\u0002H\u0016J\u000c\u0010\u0013\u001a\u00020\u0012*\u00020\u0002H\u0016J \u0010\u0014\u001a\u00020\u0012*\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;",
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;",
        "Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;",
        "<init>",
        "()V",
        "createEntity",
        "pbm",
        "Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;",
        "name",
        "Lmoe/matsuri/nb4a/proxy/PreferenceBinding;",
        "serverAddress",
        "serverPort",
        "password",
        "method",
        "pluginName",
        "pluginConfig",
        "sUoT",
        "init",
        "",
        "serialize",
        "createPreferences",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
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
.field private final method:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final name:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final password:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

.field private final pluginConfig:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final pluginName:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final sUoT:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final serverAddress:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final serverPort:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    new-instance v0, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    .line 19
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v1, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string v5, "name"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->name:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 20
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v1, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const-string v5, "serverAddress"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->serverAddress:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 21
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v1, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/4 v4, 0x1

    const-string v5, "serverPort"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->serverPort:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 22
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v1, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/4 v4, 0x0

    const-string v5, "password"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->password:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 23
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v1, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const-string v5, "method"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->method:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 25
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v1, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const-string v5, "pluginName"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    nop

    .local v3, "$this$pluginName_u24lambda_u240":Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
    const/4 v4, 0x0

    .line 25
    .local v4, "$i$a$-apply-ShadowsocksSettingsActivity$pluginName$1":I
    invoke-virtual {v3, v2}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->setDisable(Z)V

    .end local v3    # "$this$pluginName_u24lambda_u240":Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
    .end local v4    # "$i$a$-apply-ShadowsocksSettingsActivity$pluginName$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pluginName:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 27
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v1, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/4 v4, 0x0

    const-string v5, "pluginConfig"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    nop

    .local v3, "$this$pluginConfig_u24lambda_u241":Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
    const/4 v4, 0x0

    .line 27
    .local v4, "$i$a$-apply-ShadowsocksSettingsActivity$pluginConfig$1":I
    invoke-virtual {v3, v2}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->setDisable(Z)V

    .end local v3    # "$this$pluginConfig_u24lambda_u241":Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
    .end local v4    # "$i$a$-apply-ShadowsocksSettingsActivity$pluginConfig$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pluginConfig:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 28
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v8, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/16 v6, 0xc

    const/4 v2, 0x3

    const-string v3, "sUoT"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->sUoT:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic createEntity()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->createEntity()Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    return-object v0
.end method

.method public createEntity()Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .locals 1

    .line 16
    new-instance v0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;-><init>()V

    return-object v0
.end method

.method public createPreferences(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "$this$createPreferences"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "rootKey"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const v0, 0x7f160011

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 50
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    invoke-virtual {v0, p1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->setPreferenceFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 52
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->serverPort:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    invoke-virtual {v0}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->getPreference()Landroidx/preference/Preference;

    move-result-object v0

    .local v0, "$this$createPreferences_u24lambda_u242":Landroidx/preference/Preference;
    const/4 v1, 0x0

    .line 53
    .local v1, "$i$a$-apply-ShadowsocksSettingsActivity$createPreferences$1":I
    const-string v2, "null cannot be cast to non-null type androidx.preference.EditTextPreference"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/preference/EditTextPreference;

    .line 54
    move-object v3, v0

    check-cast v3, Landroidx/preference/EditTextPreference;

    sget-object v4, Lio/nekohasekai/sagernet/database/preference/EditTextPreferenceModifiers$Port;->INSTANCE:Lio/nekohasekai/sagernet/database/preference/EditTextPreferenceModifiers$Port;

    check-cast v4, Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    .line 55
    nop

    .line 52
    .end local v0    # "$this$createPreferences_u24lambda_u242":Landroidx/preference/Preference;
    .end local v1    # "$i$a$-apply-ShadowsocksSettingsActivity$createPreferences$1":I
    nop

    .line 56
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->password:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    invoke-virtual {v0}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->getPreference()Landroidx/preference/Preference;

    move-result-object v0

    .local v0, "$this$createPreferences_u24lambda_u243":Landroidx/preference/Preference;
    const/4 v1, 0x0

    .line 57
    .local v1, "$i$a$-apply-ShadowsocksSettingsActivity$createPreferences$2":I
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroidx/preference/EditTextPreference;

    .line 58
    move-object v2, v0

    check-cast v2, Landroidx/preference/EditTextPreference;

    sget-object v3, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$PasswordSummaryProvider;->INSTANCE:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$PasswordSummaryProvider;

    check-cast v3, Landroidx/preference/Preference$SummaryProvider;

    invoke-virtual {v2, v3}, Landroidx/preference/EditTextPreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 59
    nop

    .line 56
    .end local v0    # "$this$createPreferences_u24lambda_u243":Landroidx/preference/Preference;
    .end local v1    # "$i$a$-apply-ShadowsocksSettingsActivity$createPreferences$2":I
    nop

    .line 60
    return-void
.end method

.method public bridge synthetic init(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V
    .locals 1
    .param p1, "$this$init"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 14
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->init(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)V

    return-void
.end method

.method public init(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)V
    .locals 7
    .param p1, "$this$init"    # Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    invoke-virtual {v0, p1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->writeToCacheAll(Ljava/lang/Object;)V

    .line 33
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    iget-object v1, p1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    const-string v2, "plugin"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ";"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v3, v4, v5, v4}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "pluginName"

    invoke-virtual {v0, v6, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    iget-object v1, p1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, v4, v5, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pluginConfig"

    invoke-virtual {v0, v2, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public bridge synthetic serialize(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V
    .locals 1
    .param p1, "$this$serialize"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 14
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->serialize(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)V

    return-void
.end method

.method public serialize(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)V
    .locals 4
    .param p1, "$this$serialize"    # Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    invoke-virtual {v0, p1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->fromCacheAll(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pluginName:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    invoke-virtual {v0}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->readStringFromCache()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "pn":Ljava/lang/String;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;->pluginConfig:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    invoke-virtual {v1}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->readStringFromCache()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "pc":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    iput-object v2, p1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    .line 43
    return-void
.end method
