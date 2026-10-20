.class public final synthetic Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

.field public final synthetic f$1:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$$ExternalSyntheticLambda0;->f$0:Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    iput-object p2, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$$ExternalSyntheticLambda0;->f$1:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    iput-boolean p3, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$$ExternalSyntheticLambda0;->f$0:Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$$ExternalSyntheticLambda0;->f$1:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    iget-boolean v2, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    invoke-static {v0, v1, v2, p1}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->$r8$lambda$c3CbiC0pI878XiJbKqjLJYNUwD0(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;ZLio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
