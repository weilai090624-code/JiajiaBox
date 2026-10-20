.class public abstract Landroidx/browser/customtabs/PostMessageServiceConnection;
.super Ljava/lang/Object;
.source "PostMessageServiceConnection.java"

# interfaces
.implements Landroidx/browser/customtabs/PostMessageBackend;
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostMessageServConn"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mMessageChannelCreated:Z

.field private mPackageName:Ljava/lang/String;

.field private mService:Landroid/support/customtabs/IPostMessageService;

.field private final mSessionBinder:Landroid/support/customtabs/ICustomTabsCallback;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 3
    .param p1, "session"    # Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mLock:Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v1

    iput-object v1, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mSessionBinder:Landroid/support/customtabs/ICustomTabsCallback;

    .line 59
    return-void

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided session must have binder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isBoundToService()Z
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyMessageChannelReadyInternal(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 167
    iget-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v2, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    iget-object v3, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mSessionBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v2, v3, p1}, Landroid/support/customtabs/IPostMessageService;->onMessageChannelReady(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    nop

    .line 174
    :try_start_1
    monitor-exit v0

    .line 175
    const/4 v0, 0x1

    return v0

    .line 174
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return v1

    .line 174
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public bindSessionToPostMessageService(Landroid/content/Context;)Z
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;

    .line 100
    iget-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroidx/browser/customtabs/PostMessageServiceConnection;->bindSessionToPostMessageService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setPackageName must be called before bindSessionToPostMessageService."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindSessionToPostMessageService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Landroidx/browser/customtabs/PostMessageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 85
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 86
    const-string v2, "PostMessageServConn"

    const-string v3, "Could not bind to PostMessageService in client."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return v1
.end method

.method public cleanup(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 238
    invoke-direct {p0}, Landroidx/browser/customtabs/PostMessageServiceConnection;->isBoundToService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/browser/customtabs/PostMessageServiceConnection;->unbindFromContext(Landroid/content/Context;)V

    .line 239
    :cond_0
    return-void
.end method

.method public final notifyMessageChannelReady(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mMessageChannelCreated:Z

    .line 152
    invoke-direct {p0, p1}, Landroidx/browser/customtabs/PostMessageServiceConnection;->notifyMessageChannelReadyInternal(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public onDisconnectChannel(Landroid/content/Context;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;

    .line 215
    invoke-virtual {p0, p1}, Landroidx/browser/customtabs/PostMessageServiceConnection;->unbindFromContext(Landroid/content/Context;)V

    .line 216
    return-void
.end method

.method public final onNotifyMessageChannelReady(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 140
    invoke-virtual {p0, p1}, Landroidx/browser/customtabs/PostMessageServiceConnection;->notifyMessageChannelReady(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 184
    invoke-virtual {p0, p1, p2}, Landroidx/browser/customtabs/PostMessageServiceConnection;->postMessage(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public onPostMessageServiceConnected()V
    .locals 1

    .line 222
    iget-boolean v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mMessageChannelCreated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/browser/customtabs/PostMessageServiceConnection;->notifyMessageChannelReadyInternal(Landroid/os/Bundle;)Z

    .line 223
    :cond_0
    return-void
.end method

.method public onPostMessageServiceDisconnected()V
    .locals 0

    .line 228
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 124
    invoke-static {p2}, Landroid/support/customtabs/IPostMessageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/IPostMessageService;

    move-result-object v0

    iput-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    .line 125
    invoke-virtual {p0}, Landroidx/browser/customtabs/PostMessageServiceConnection;->onPostMessageServiceConnected()V

    .line 126
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    .line 131
    invoke-virtual {p0}, Landroidx/browser/customtabs/PostMessageServiceConnection;->onPostMessageServiceDisconnected()V

    .line 132
    return-void
.end method

.method public final postMessage(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 198
    iget-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 199
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v2, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    iget-object v3, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mSessionBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v2, v3, p1, p2}, Landroid/support/customtabs/IPostMessageService;->onPostMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    nop

    .line 205
    :try_start_1
    monitor-exit v0

    .line 206
    const/4 v0, 0x1

    return v0

    .line 205
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return v1

    .line 205
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mPackageName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public unbindFromContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Landroidx/browser/customtabs/PostMessageServiceConnection;->isBoundToService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/browser/customtabs/PostMessageServiceConnection;->mService:Landroid/support/customtabs/IPostMessageService;

    .line 120
    :cond_0
    return-void
.end method
