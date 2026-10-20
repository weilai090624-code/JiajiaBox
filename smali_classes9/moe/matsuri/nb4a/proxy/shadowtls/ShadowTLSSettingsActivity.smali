.class public final Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;
.super Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
.source "ShadowTLSSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity<",
        "Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u000c\u0010\u0013\u001a\u00020\u0014*\u00020\u0002H\u0016J\u000c\u0010\u0015\u001a\u00020\u0014*\u00020\u0002H\u0016J \u0010\u0016\u001a\u00020\u0014*\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;",
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;",
        "Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;",
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
        "version",
        "sni",
        "alpn",
        "certificates",
        "allowInsecure",
        "utlsFingerprint",
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
.field private final allowInsecure:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final alpn:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final certificates:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final name:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final password:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

.field private final serverAddress:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final serverPort:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final sni:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final utlsFingerprint:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

.field private final version:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 13
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    new-instance v0, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;-><init>()V

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    .line 18
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v8, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v3, "name"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->name:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 19
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v8, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const-string v3, "serverAddress"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->serverAddress:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 20
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v8, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/4 v2, 0x1

    const-string v3, "serverPort"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->serverPort:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 21
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v8, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/4 v2, 0x0

    const-string v3, "password"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->password:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 22
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v8, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/4 v2, 0x1

    const-string v3, "version"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->version:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 23
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v8, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/4 v2, 0x0

    const-string v3, "sni"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->sni:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 24
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v8, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const-string v3, "alpn"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->alpn:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 25
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v8, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const-string v3, "certificates"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->certificates:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 26
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v8, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/4 v2, 0x3

    const-string v3, "allowInsecure"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->allowInsecure:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 27
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    new-instance v8, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const/4 v2, 0x0

    const-string v3, "utlsFingerprint"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->utlsFingerprint:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic createEntity()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->createEntity()Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    return-object v0
.end method

.method public createEntity()Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    .locals 1

    .line 15
    new-instance v0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;-><init>()V

    return-object v0
.end method

.method public createPreferences(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "$this$createPreferences"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "rootKey"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const v0, 0x7f160012

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 43
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    invoke-virtual {v0, p1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->setPreferenceFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 45
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->serverPort:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    invoke-virtual {v0}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->getPreference()Landroidx/preference/Preference;

    move-result-object v0

    .local v0, "$this$createPreferences_u24lambda_u240":Landroidx/preference/Preference;
    const/4 v1, 0x0

    .line 46
    .local v1, "$i$a$-apply-ShadowTLSSettingsActivity$createPreferences$1":I
    const-string v2, "null cannot be cast to non-null type androidx.preference.EditTextPreference"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/preference/EditTextPreference;

    .line 47
    move-object v3, v0

    check-cast v3, Landroidx/preference/EditTextPreference;

    sget-object v4, Lio/nekohasekai/sagernet/database/preference/EditTextPreferenceModifiers$Port;->INSTANCE:Lio/nekohasekai/sagernet/database/preference/EditTextPreferenceModifiers$Port;

    check-cast v4, Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    invoke-virtual {v3, v4}, Landroidx/preference/EditTextPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    .line 48
    nop

    .line 45
    .end local v0    # "$this$createPreferences_u24lambda_u240":Landroidx/preference/Preference;
    .end local v1    # "$i$a$-apply-ShadowTLSSettingsActivity$createPreferences$1":I
    nop

    .line 49
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->password:Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    invoke-virtual {v0}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->getPreference()Landroidx/preference/Preference;

    move-result-object v0

    .local v0, "$this$createPreferences_u24lambda_u241":Landroidx/preference/Preference;
    const/4 v1, 0x0

    .line 50
    .local v1, "$i$a$-apply-ShadowTLSSettingsActivity$createPreferences$2":I
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroidx/preference/EditTextPreference;

    .line 51
    move-object v2, v0

    check-cast v2, Landroidx/preference/EditTextPreference;

    sget-object v3, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$PasswordSummaryProvider;->INSTANCE:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$PasswordSummaryProvider;

    check-cast v3, Landroidx/preference/Preference$SummaryProvider;

    invoke-virtual {v2, v3}, Landroidx/preference/EditTextPreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 52
    nop

    .line 49
    .end local v0    # "$this$createPreferences_u24lambda_u241":Landroidx/preference/Preference;
    .end local v1    # "$i$a$-apply-ShadowTLSSettingsActivity$createPreferences$2":I
    nop

    .line 53
    return-void
.end method

.method public bridge synthetic init(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V
    .locals 1
    .param p1, "$this$init"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 13
    move-object v0, p1

    check-cast v0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->init(Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;)V

    return-void
.end method

.method public init(Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;)V
    .locals 1
    .param p1, "$this$init"    # Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    invoke-virtual {v0, p1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->writeToCacheAll(Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public bridge synthetic serialize(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V
    .locals 1
    .param p1, "$this$serialize"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 13
    move-object v0, p1

    check-cast v0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->serialize(Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;)V

    return-void
.end method

.method public serialize(Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;)V
    .locals 1
    .param p1, "$this$serialize"    # Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;->pbm:Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;

    invoke-virtual {v0, p1}, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->fromCacheAll(Ljava/lang/Object;)V

    .line 36
    return-void
.end method
