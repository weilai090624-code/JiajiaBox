.class public final Lio/nekohasekai/sagernet/bg/SagerConnection;
.super Ljava/lang/Object;
.source "SagerConnection.kt"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;,
        Lio/nekohasekai/sagernet/bg/SagerConnection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSagerConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SagerConnection.kt\nio/nekohasekai/sagernet/bg/SagerConnection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000O\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u000e\u0018\u0000 %2\u00020\u00012\u00020\u0002:\u0002%&B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0004J\u001a\u0010\u001b\u001a\u00020\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u001e\u001a\u00020\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010\u001f\u001a\u00020\u0019H\u0016J\u0008\u0010 \u001a\u00020\u0019H\u0002J\u0018\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010$\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020#R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\'"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/SagerConnection;",
        "Landroid/content/ServiceConnection;",
        "Landroid/os/IBinder$DeathRecipient;",
        "connectionId",
        "",
        "listenForDeath",
        "",
        "<init>",
        "(IZ)V",
        "connectionActive",
        "callbackRegistered",
        "callback",
        "Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;",
        "serviceCallback",
        "io/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1",
        "Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;",
        "binder",
        "Landroid/os/IBinder;",
        "service",
        "Lio/nekohasekai/sagernet/aidl/ISagerNetService;",
        "getService",
        "()Lio/nekohasekai/sagernet/aidl/ISagerNetService;",
        "setService",
        "(Lio/nekohasekai/sagernet/aidl/ISagerNetService;)V",
        "updateConnectionId",
        "",
        "id",
        "onServiceConnected",
        "name",
        "Landroid/content/ComponentName;",
        "onServiceDisconnected",
        "binderDied",
        "unregisterCallback",
        "connect",
        "context",
        "Landroid/content/Context;",
        "disconnect",
        "Companion",
        "Callback",
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


# static fields
.field public static final CONNECTION_ID_MAIN_ACTIVITY_BACKGROUND:I = 0x3

.field public static final CONNECTION_ID_MAIN_ACTIVITY_FOREGROUND:I = 0x2

.field public static final CONNECTION_ID_RESTART_BG:I = 0x4

.field public static final CONNECTION_ID_SHORTCUT:I = 0x0

.field public static final CONNECTION_ID_TILE:I = 0x1

.field public static final Companion:Lio/nekohasekai/sagernet/bg/SagerConnection$Companion;

.field private static restartingApp:Z


# instance fields
.field private binder:Landroid/os/IBinder;

.field private callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

.field private callbackRegistered:Z

.field private connectionActive:Z

.field private connectionId:I

.field private listenForDeath:Z

.field private service:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

.field private final serviceCallback:Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/bg/SagerConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/bg/SagerConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/bg/SagerConnection;->Companion:Lio/nekohasekai/sagernet/bg/SagerConnection$Companion;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "connectionId"    # I
    .param p2, "listenForDeath"    # Z

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->connectionId:I

    .line 20
    iput-boolean p2, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->listenForDeath:Z

    .line 63
    new-instance v0, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;-><init>(Lio/nekohasekai/sagernet/bg/SagerConnection;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->serviceCallback:Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;

    .line 18
    return-void
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 20
    const/4 p2, 0x0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/SagerConnection;-><init>(IZ)V

    .line 21
    return-void
.end method

.method public static final synthetic access$getCallback$p(Lio/nekohasekai/sagernet/bg/SagerConnection;)Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/SagerConnection;

    .line 18
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    return-object v0
.end method

.method public static final synthetic access$getRestartingApp$cp()Z
    .locals 1

    .line 18
    sget-boolean v0, Lio/nekohasekai/sagernet/bg/SagerConnection;->restartingApp:Z

    return v0
.end method

.method public static final synthetic access$setRestartingApp$cp(Z)V
    .locals 0
    .param p0, "<set-?>"    # Z

    .line 18
    sput-boolean p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->restartingApp:Z

    return-void
.end method

.method private final unregisterCallback()V
    .locals 2

    .line 149
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->service:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    .line 150
    .local v0, "service":Lio/nekohasekai/sagernet/aidl/ISagerNetService;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callbackRegistered:Z

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->serviceCallback:Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;

    check-cast v1, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    invoke-interface {v0, v1}, Lio/nekohasekai/sagernet/aidl/ISagerNetService;->unregisterCallback(Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 154
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callbackRegistered:Z

    .line 155
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->service:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callbackRegistered:Z

    .line 143
    sget-boolean v1, Lio/nekohasekai/sagernet/bg/SagerConnection;->restartingApp:Z

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    if-eqz v1, :cond_0

    .line 183
    .local v1, "it":Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    const/4 v2, 0x0

    .line 144
    .local v2, "$i$a$-also-SagerConnection$binderDied$1":I
    new-instance v3, Lio/nekohasekai/sagernet/bg/SagerConnection$binderDied$1$1;

    invoke-direct {v3, v1, v0}, Lio/nekohasekai/sagernet/bg/SagerConnection$binderDied$1$1;-><init>(Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 146
    .end local v1    # "it":Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
    .end local v2    # "$i$a$-also-SagerConnection$binderDied$1":I
    :cond_0
    return-void
.end method

.method public final connect(Landroid/content/Context;Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->connectionActive:Z

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->connectionActive:Z

    .line 160
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 161
    iput-object p2, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    .line 162
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lio/nekohasekai/sagernet/bg/SagerConnection;->Companion:Lio/nekohasekai/sagernet/bg/SagerConnection$Companion;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/SagerConnection$Companion;->getServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "io.nekohasekai.sagernet.SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "setAction(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    move-object v2, p0

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 164
    return-void

    .line 160
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final disconnect(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lio/nekohasekai/sagernet/bg/SagerConnection;->unregisterCallback()V

    .line 168
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->connectionActive:Z

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->connectionActive:Z

    .line 173
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->listenForDeath:Z

    if-eqz v1, :cond_1

    .line 174
    :try_start_1
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->binder:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    move-object v2, p0

    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 175
    :catch_1
    move-exception v0

    .line 177
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->binder:Landroid/os/IBinder;

    .line 178
    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->service:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    .line 179
    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    .line 180
    return-void
.end method

.method public final getService()Lio/nekohasekai/sagernet/aidl/ISagerNetService;
    .locals 1

    .line 107
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->service:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    const-string v0, "binder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p2, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->binder:Landroid/os/IBinder;

    .line 120
    invoke-static {p2}, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub;->asInterface(Landroid/os/IBinder;)Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    .local v0, "service":Lio/nekohasekai/sagernet/aidl/ISagerNetService;
    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->service:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    .line 122
    nop

    .line 123
    :try_start_0
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->listenForDeath:Z

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 124
    :cond_0
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callbackRegistered:Z

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->serviceCallback:Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;

    check-cast v1, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    iget v2, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->connectionId:I

    invoke-interface {v0, v1, v2}, Lio/nekohasekai/sagernet/aidl/ISagerNetService;->registerCallback(Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;I)V

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callbackRegistered:Z

    goto :goto_0

    .line 124
    :cond_1
    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "service":Lio/nekohasekai/sagernet/aidl/ISagerNetService;
    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "binder":Landroid/os/IBinder;
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .restart local v0    # "service":Lio/nekohasekai/sagernet/aidl/ISagerNetService;
    .restart local p1    # "name":Landroid/content/ComponentName;
    .restart local p2    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 130
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;->onServiceConnected(Lio/nekohasekai/sagernet/aidl/ISagerNetService;)V

    .line 131
    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 134
    invoke-direct {p0}, Lio/nekohasekai/sagernet/bg/SagerConnection;->unregisterCallback()V

    .line 135
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->callback:Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;->onServiceDisconnected()V

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->service:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    .line 137
    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->binder:Landroid/os/IBinder;

    .line 138
    return-void
.end method

.method public final setService(Lio/nekohasekai/sagernet/aidl/ISagerNetService;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    .line 107
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->service:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    return-void
.end method

.method public final updateConnectionId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 110
    iput p1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->connectionId:I

    .line 111
    nop

    .line 112
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->service:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/SagerConnection;->serviceCallback:Lio/nekohasekai/sagernet/bg/SagerConnection$serviceCallback$1;

    check-cast v1, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    invoke-interface {v0, v1, p1}, Lio/nekohasekai/sagernet/aidl/ISagerNetService;->registerCallback(Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
