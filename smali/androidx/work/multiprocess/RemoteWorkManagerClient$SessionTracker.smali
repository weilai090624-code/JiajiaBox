.class public Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;
.super Ljava/lang/Object;
.source "RemoteWorkManagerClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionTracker"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 554
    const-string v0, "SessionHandler"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V
    .locals 0
    .param p1, "client"    # Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 559
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 563
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSessionIndex()J

    move-result-wide v0

    .line 564
    .local v0, "preLockIndex":J
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v2}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSessionLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 565
    :try_start_0
    iget-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v3}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSessionIndex()J

    move-result-wide v3

    .line 566
    .local v3, "sessionIndex":J
    iget-object v5, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v5}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getCurrentSession()Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

    move-result-object v5

    .line 569
    .local v5, "currentSession":Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;
    if-eqz v5, :cond_1

    .line 570
    cmp-long v6, v0, v3

    if-nez v6, :cond_0

    .line 571
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v6

    sget-object v7, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->TAG:Ljava/lang/String;

    const-string v8, "Unbinding service"

    invoke-virtual {v6, v7, v8}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v6, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v6}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 574
    invoke-virtual {v5}, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->onBindingDied()V

    goto :goto_0

    .line 576
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v6

    sget-object v7, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->TAG:Ljava/lang/String;

    const-string v8, "Ignoring request to unbind."

    invoke-virtual {v6, v7, v8}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .end local v3    # "sessionIndex":J
    .end local v5    # "currentSession":Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;
    :cond_1
    :goto_0
    monitor-exit v2

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
