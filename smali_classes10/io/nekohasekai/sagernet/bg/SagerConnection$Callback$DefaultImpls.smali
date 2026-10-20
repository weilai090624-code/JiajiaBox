.class public final Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;
.super Ljava/lang/Object;
.source "SagerConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static cbSelectorUpdate(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;J)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    .param p1, "id"    # J

    .line 45
    return-void
.end method

.method public static cbSpeedUpdate(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    .param p1, "stats"    # Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    const-string v0, "stats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static cbTrafficUpdate(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lio/nekohasekai/sagernet/aidl/TrafficData;)V
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    .param p1, "data"    # Lio/nekohasekai/sagernet/aidl/TrafficData;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static missingPlugin(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "pluginName"    # Ljava/lang/String;

    const-string v0, "profileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static onBinderDied(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    .line 57
    return-void
.end method

.method public static onServiceDisconnected(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    .line 56
    return-void
.end method
