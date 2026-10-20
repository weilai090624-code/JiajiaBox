.class public final Lio/nekohasekai/sagernet/bg/BaseService$Data;
.super Ljava/lang/Object;
.source "BaseService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00072\n\u0008\u0002\u0010/\u001a\u0004\u0018\u000100R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0011\u0010\"\u001a\u00020#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u001c\u0010&\u001a\u0004\u0018\u00010\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u00061"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/BaseService$Data;",
        "",
        "service",
        "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
        "<init>",
        "(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V",
        "state",
        "Lio/nekohasekai/sagernet/bg/BaseService$State;",
        "getState",
        "()Lio/nekohasekai/sagernet/bg/BaseService$State;",
        "setState",
        "(Lio/nekohasekai/sagernet/bg/BaseService$State;)V",
        "proxy",
        "Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;",
        "getProxy",
        "()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;",
        "setProxy",
        "(Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;)V",
        "notification",
        "Lio/nekohasekai/sagernet/bg/ServiceNotification;",
        "getNotification",
        "()Lio/nekohasekai/sagernet/bg/ServiceNotification;",
        "setNotification",
        "(Lio/nekohasekai/sagernet/bg/ServiceNotification;)V",
        "receiver",
        "Landroid/content/BroadcastReceiver;",
        "getReceiver",
        "()Landroid/content/BroadcastReceiver;",
        "closeReceiverRegistered",
        "",
        "getCloseReceiverRegistered",
        "()Z",
        "setCloseReceiverRegistered",
        "(Z)V",
        "binder",
        "Lio/nekohasekai/sagernet/bg/BaseService$Binder;",
        "getBinder",
        "()Lio/nekohasekai/sagernet/bg/BaseService$Binder;",
        "connectingJob",
        "Lkotlinx/coroutines/Job;",
        "getConnectingJob",
        "()Lkotlinx/coroutines/Job;",
        "setConnectingJob",
        "(Lkotlinx/coroutines/Job;)V",
        "changeState",
        "",
        "s",
        "msg",
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
.field private final binder:Lio/nekohasekai/sagernet/bg/BaseService$Binder;

.field private closeReceiverRegistered:Z

.field private connectingJob:Lkotlinx/coroutines/Job;

.field private notification:Lio/nekohasekai/sagernet/bg/ServiceNotification;

.field private proxy:Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private final service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

.field private state:Lio/nekohasekai/sagernet/bg/BaseService$State;


# direct methods
.method public static synthetic $r8$lambda$BlXCpnm_iShXAFahXaNR0ap24pA(Lio/nekohasekai/sagernet/bg/BaseService$Data;Landroid/content/Context;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->receiver$lambda$0(Lio/nekohasekai/sagernet/bg/BaseService$Data;Landroid/content/Context;Landroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V
    .locals 1
    .param p1, "service"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 45
    sget-object v0, Lio/nekohasekai/sagernet/bg/BaseService$State;->Stopped:Lio/nekohasekai/sagernet/bg/BaseService$State;

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->state:Lio/nekohasekai/sagernet/bg/BaseService$State;

    .line 49
    new-instance v0, Lio/nekohasekai/sagernet/bg/BaseService$Data$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/bg/BaseService$Data$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Data;)V

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->broadcastReceiver(Lkotlin/jvm/functions/Function2;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->receiver:Landroid/content/BroadcastReceiver;

    .line 81
    new-instance v0, Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/bg/BaseService$Binder;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Data;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->binder:Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    .line 44
    return-void
.end method

.method public static synthetic changeState$default(Lio/nekohasekai/sagernet/bg/BaseService$Data;Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 84
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->changeState(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;)V

    return-void
.end method

.method private static final receiver$lambda$0(Lio/nekohasekai/sagernet/bg/BaseService$Data;Landroid/content/Context;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/BaseService$Data;
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-interface {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->persistStats()V

    goto/16 :goto_1

    .line 50
    :sswitch_1
    const-string v2, "io.nekohasekai.sagernet.RELOAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-interface {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->reload()V

    goto :goto_1

    .line 50
    :sswitch_2
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7

    .line 56
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getPower()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->proxy:Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getBox()Llibcore/BoxInstance;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Llibcore/BoxInstance;->sleep()V

    goto :goto_1

    .line 59
    :cond_3
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->proxy:Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getBox()Llibcore/BoxInstance;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Llibcore/BoxInstance;->wake()V

    .line 60
    :cond_4
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getWakeResetConnections()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61
    const/4 v0, 0x1

    invoke-static {v0}, Llibcore/Libcore;->resetAllConnections(Z)V

    goto :goto_1

    .line 50
    :sswitch_3
    const-string v2, "com.linjiajia.top.RESET_UPSTREAM_CONNECTIONS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 67
    :cond_5
    new-instance v0, Lio/nekohasekai/sagernet/bg/BaseService$Data$receiver$1$1;

    invoke-direct {v0, p1, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Data$receiver$1$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 76
    :cond_6
    :goto_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->stopRunner$default(Lio/nekohasekai/sagernet/bg/BaseService$Interface;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 78
    :cond_7
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66d2391c -> :sswitch_3
        0x33e5d967 -> :sswitch_2
        0x6849a447 -> :sswitch_1
        0x741706da -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final changeState(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Lio/nekohasekai/sagernet/bg/BaseService$State;
    .param p2, "msg"    # Ljava/lang/String;

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->state:Lio/nekohasekai/sagernet/bg/BaseService$State;

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->state:Lio/nekohasekai/sagernet/bg/BaseService$State;

    .line 87
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/database/DataStore;->setServiceState(Lio/nekohasekai/sagernet/bg/BaseService$State;)V

    .line 88
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->binder:Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    invoke-virtual {v0, p1, p2}, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->stateChanged(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;)Lkotlinx/coroutines/Job;

    .line 89
    return-void
.end method

.method public final getBinder()Lio/nekohasekai/sagernet/bg/BaseService$Binder;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->binder:Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    return-object v0
.end method

.method public final getCloseReceiverRegistered()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->closeReceiverRegistered:Z

    return v0
.end method

.method public final getConnectingJob()Lkotlinx/coroutines/Job;
    .locals 1

    .line 82
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->connectingJob:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final getNotification()Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->notification:Lio/nekohasekai/sagernet/bg/ServiceNotification;

    return-object v0
.end method

.method public final getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->proxy:Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    return-object v0
.end method

.method public final getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public final getState()Lio/nekohasekai/sagernet/bg/BaseService$State;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->state:Lio/nekohasekai/sagernet/bg/BaseService$State;

    return-object v0
.end method

.method public final setCloseReceiverRegistered(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 79
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->closeReceiverRegistered:Z

    return-void
.end method

.method public final setConnectingJob(Lkotlinx/coroutines/Job;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlinx/coroutines/Job;

    .line 82
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->connectingJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setNotification(Lio/nekohasekai/sagernet/bg/ServiceNotification;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/bg/ServiceNotification;

    .line 47
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->notification:Lio/nekohasekai/sagernet/bg/ServiceNotification;

    return-void
.end method

.method public final setProxy(Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    .line 46
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->proxy:Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    return-void
.end method

.method public final setState(Lio/nekohasekai/sagernet/bg/BaseService$State;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/bg/BaseService$State;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Data;->state:Lio/nekohasekai/sagernet/bg/BaseService$State;

    return-void
.end method
