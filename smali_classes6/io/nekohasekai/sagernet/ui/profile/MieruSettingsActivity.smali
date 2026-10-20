.class public final Lio/nekohasekai/sagernet/ui/profile/MieruSettingsActivity;
.super Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
.source "MieruSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity<",
        "Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u000c\u0010\u0006\u001a\u00020\u0007*\u00020\u0002H\u0016J\u000c\u0010\u0008\u001a\u00020\u0007*\u00020\u0002H\u0016J \u0010\t\u001a\u00020\u0007*\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/profile/MieruSettingsActivity;",
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;",
        "Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;",
        "<init>",
        "()V",
        "createEntity",
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


# direct methods
.method public static synthetic $r8$lambda$BKaqoC2psCgH6vcCMGLQk5bfz9s(Landroidx/preference/EditTextPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/profile/MieruSettingsActivity;->createPreferences$lambda$2(Landroidx/preference/EditTextPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private static final createPreferences$lambda$2(Landroidx/preference/EditTextPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$mtu"    # Landroidx/preference/EditTextPreference;
    .param p2, "newValue"    # Ljava/lang/Object;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const-string p1, "UDP"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setVisible(Z)V

    .line 73
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic createEntity()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/MieruSettingsActivity;->createEntity()Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    return-object v0
.end method

.method public createEntity()Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    .locals 1

    .line 35
    new-instance v0, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;-><init>()V

    check-cast v0, Lio/nekohasekai/sagernet/fmt/Serializable;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->applyDefaultValues(Lio/nekohasekai/sagernet/fmt/Serializable;)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    return-object v0
.end method

.method public createPreferences(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "$this$createPreferences"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "rootKey"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const v0, 0x7f16000b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 62
    const-string v0, "serverPort"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/preference/EditTextPreference;

    .local v0, "$this$createPreferences_u24lambda_u240":Landroidx/preference/EditTextPreference;
    const/4 v1, 0x0

    .line 63
    .local v1, "$i$a$-apply-MieruSettingsActivity$createPreferences$1":I
    sget-object v2, Lio/nekohasekai/sagernet/database/preference/EditTextPreferenceModifiers$Port;->INSTANCE:Lio/nekohasekai/sagernet/database/preference/EditTextPreferenceModifiers$Port;

    check-cast v2, Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    invoke-virtual {v0, v2}, Landroidx/preference/EditTextPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    .line 64
    nop

    .line 62
    .end local v0    # "$this$createPreferences_u24lambda_u240":Landroidx/preference/EditTextPreference;
    .end local v1    # "$i$a$-apply-MieruSettingsActivity$createPreferences$1":I
    nop

    .line 65
    const-string v0, "serverPassword"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/preference/EditTextPreference;

    .local v0, "$this$createPreferences_u24lambda_u241":Landroidx/preference/EditTextPreference;
    const/4 v1, 0x0

    .line 66
    .local v1, "$i$a$-apply-MieruSettingsActivity$createPreferences$2":I
    sget-object v2, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$PasswordSummaryProvider;->INSTANCE:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$PasswordSummaryProvider;

    check-cast v2, Landroidx/preference/Preference$SummaryProvider;

    invoke-virtual {v0, v2}, Landroidx/preference/EditTextPreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 67
    nop

    .line 65
    .end local v0    # "$this$createPreferences_u24lambda_u241":Landroidx/preference/EditTextPreference;
    .end local v1    # "$i$a$-apply-MieruSettingsActivity$createPreferences$2":I
    nop

    .line 68
    const-string v0, "serverProtocol"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;

    .line 69
    .local v0, "protocol":Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;
    const-string v1, "serverMTU"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/preference/EditTextPreference;

    .line 70
    .local v1, "mtu":Landroidx/preference/EditTextPreference;
    invoke-virtual {v0}, Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UDP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/EditTextPreference;->setVisible(Z)V

    .line 71
    new-instance v2, Lio/nekohasekai/sagernet/ui/profile/MieruSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lio/nekohasekai/sagernet/ui/profile/MieruSettingsActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/EditTextPreference;)V

    invoke-virtual {v0, v2}, Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    return-void
.end method

.method public bridge synthetic init(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V
    .locals 1
    .param p1, "$this$init"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 33
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/MieruSettingsActivity;->init(Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;)V

    return-void
.end method

.method public init(Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;)V
    .locals 2
    .param p1, "$this$init"    # Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v1, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setProfileName(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v1, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->serverAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setServerAddress(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v1, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->serverPort:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setServerPort(I)V

    .line 41
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v1, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setServerProtocol(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v1, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setServerUsername(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v1, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setServerPassword(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v1, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->mtu:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setServerMTU(I)V

    .line 45
    return-void
.end method

.method public bridge synthetic serialize(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V
    .locals 1
    .param p1, "$this$serialize"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 33
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/MieruSettingsActivity;->serialize(Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;)V

    return-void
.end method

.method public serialize(Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;)V
    .locals 1
    .param p1, "$this$serialize"    # Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->name:Ljava/lang/String;

    .line 49
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->serverAddress:Ljava/lang/String;

    .line 50
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServerPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->serverPort:Ljava/lang/Integer;

    .line 51
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServerProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->protocol:Ljava/lang/String;

    .line 52
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServerUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->username:Ljava/lang/String;

    .line 53
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServerPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->password:Ljava/lang/String;

    .line 54
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServerMTU()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->mtu:Ljava/lang/Integer;

    .line 55
    return-void
.end method
