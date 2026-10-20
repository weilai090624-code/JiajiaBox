.class public final synthetic Lio/nekohasekai/sagernet/ktx/PreferencesKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/preference/PreferenceDataStore;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/PreferenceDataStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ktx/PreferencesKt$$ExternalSyntheticLambda3;->f$0:Landroidx/preference/PreferenceDataStore;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ktx/PreferencesKt$$ExternalSyntheticLambda3;->f$0:Landroidx/preference/PreferenceDataStore;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->$r8$lambda$G4224-gR_uQ_tGW9gXygJG1awIw(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
