.class public final synthetic Lio/nekohasekai/sagernet/ktx/PreferencesKt$$ExternalSyntheticLambda6;
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

    iput-object p1, p0, Lio/nekohasekai/sagernet/ktx/PreferencesKt$$ExternalSyntheticLambda6;->f$0:Landroidx/preference/PreferenceDataStore;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ktx/PreferencesKt$$ExternalSyntheticLambda6;->f$0:Landroidx/preference/PreferenceDataStore;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->$r8$lambda$E0I1pp-Y4mf4epdbpxHA9ngUEHM(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;J)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
