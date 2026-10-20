.class public final synthetic Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/bg/ServiceNotification;

.field public final synthetic f$1:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda5;->f$0:Lio/nekohasekai/sagernet/bg/ServiceNotification;

    iput-object p2, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda5;->f$1:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda5;->f$0:Lio/nekohasekai/sagernet/bg/ServiceNotification;

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda5;->f$1:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {v0, v1, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->$r8$lambda$lgAbeIwxg_YGPax4GFBmsAW00tc(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
