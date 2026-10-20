.class public final synthetic Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Landroidx/preference/EditTextPreference;

.field public final synthetic f$1:Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;

.field public final synthetic f$2:Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;

.field public final synthetic f$3:Landroidx/preference/EditTextPreference;

.field public final synthetic f$4:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/EditTextPreference;Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;Landroidx/preference/EditTextPreference;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/preference/EditTextPreference;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity$$ExternalSyntheticLambda1;->f$1:Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity$$ExternalSyntheticLambda1;->f$2:Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity$$ExternalSyntheticLambda1;->f$3:Landroidx/preference/EditTextPreference;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity$$ExternalSyntheticLambda1;->f$4:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/preference/EditTextPreference;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity$$ExternalSyntheticLambda1;->f$1:Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity$$ExternalSyntheticLambda1;->f$2:Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity$$ExternalSyntheticLambda1;->f$3:Landroidx/preference/EditTextPreference;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity$$ExternalSyntheticLambda1;->f$4:Landroidx/preference/PreferenceFragmentCompat;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity;->$r8$lambda$V1U5ZLoDnyE-ZUJSLfNt5DmRlBU(Landroidx/preference/EditTextPreference;Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;Landroidx/preference/EditTextPreference;Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
