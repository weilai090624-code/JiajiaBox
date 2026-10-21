.class public final Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;
.super Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;
.source "SagerConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/bg/SagerConnection;-><init>(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "io/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1",
        "Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;",
        "stateChanged",
        "",
        "state",
        "",
        "profileName",
        "",
        "msg",
        "cbSpeedUpdate",
        "stats",
        "Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;",
        "cbTrafficUpdate",
        "Lio/nekohasekai/sagernet/aidl/TrafficData;",
        "cbSelectorUpdate",
        "id",
        "",
        "missingPlugin",
        "pluginName",
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
.field final synthetic this$0:Lio/nekohasekai/sagernet/bg/SagerConnection;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/bg/SagerConnection;)V
    .registers 2
    .param p1, "$receiver"    # Lio/nekohasekai/sagernet/bg/SagerConnection;

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;->this$0:Lio/nekohasekai/sagernet/bg/SagerConnection;

    .line 63
    invoke-direct {p0}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cbSelectorUpdate(J)V
    .registers 6
    .param p1, "id"    # J

    .line 90
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;->this$0:Lio/nekohasekai/sagernet/bg/SagerConnection;

    # getter for: Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    invoke-static {v0}, Lio/nekohasekai/sagernet/bg/SagerConnection;->access$getCallback$p(Lio/nekohasekai/sagernet/bg/SagerConnection;)Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 91
    .local v0, "callback":Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    :cond_9
    new-instance v1, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1$cbSelectorUpdate$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1$cbSelectorUpdate$1;-><init>(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;JLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 94
    return-void
.end method

.method public cbSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .registers 5
    .param p1, "stats"    # Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    const-string v0, "stats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;->this$0:Lio/nekohasekai/sagernet/bg/SagerConnection;

    # getter for: Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    invoke-static {v0}, Lio/nekohasekai/sagernet/bg/SagerConnection;->access$getCallback$p(Lio/nekohasekai/sagernet/bg/SagerConnection;)Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 77
    .local v0, "callback":Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    :cond_e
    new-instance v1, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1$cbSpeedUpdate$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1$cbSpeedUpdate$1;-><init>(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 80
    return-void
.end method

.method public cbTrafficUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;)V
    .registers 5
    .param p1, "stats"    # Lio/nekohasekai/sagernet/aidl/TrafficData;

    const-string v0, "stats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;->this$0:Lio/nekohasekai/sagernet/bg/SagerConnection;

    # getter for: Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    invoke-static {v0}, Lio/nekohasekai/sagernet/bg/SagerConnection;->access$getCallback$p(Lio/nekohasekai/sagernet/bg/SagerConnection;)Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 84
    .local v0, "callback":Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    :cond_e
    new-instance v1, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1$cbTrafficUpdate$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1$cbTrafficUpdate$1;-><init>(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lio/nekohasekai/sagernet/aidl/TrafficData;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 87
    return-void
.end method

.method public missingPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "pluginName"    # Ljava/lang/String;

    const-string v0, "profileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;->this$0:Lio/nekohasekai/sagernet/bg/SagerConnection;

    # getter for: Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    invoke-static {v0}, Lio/nekohasekai/sagernet/bg/SagerConnection;->access$getCallback$p(Lio/nekohasekai/sagernet/bg/SagerConnection;)Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    .line 98
    .local v0, "callback":Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    :cond_13
    new-instance v1, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1$missingPlugin$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1$missingPlugin$1;-><init>(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 101
    return-void
.end method

.method public stateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "state"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .line 66
    if-gez p1, :cond_3

    return-void

    .line 67
    :cond_3
    invoke-static {}, Lio/nekohasekai/sagernet/bg/BaseService$State;->values()[Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    aget-object v0, v0, p1

    .line 68
    .local v0, "s":Lio/nekohasekai/sagernet/bg/BaseService$State;
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/database/DataStore;->setServiceState(Lio/nekohasekai/sagernet/bg/BaseService$State;)V

    .line 69
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;->this$0:Lio/nekohasekai/sagernet/bg/SagerConnection;

    # getter for: Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    invoke-static {v1}, Lio/nekohasekai/sagernet/bg/SagerConnection;->access$getCallback$p(Lio/nekohasekai/sagernet/bg/SagerConnection;)Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    move-result-object v2

    if-nez v2, :cond_17

    return-void

    .line 70
    .local v2, "callback":Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    :cond_17
    new-instance v7, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1$stateChanged$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1$stateChanged$1;-><init>(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 73
    return-void
.end method
