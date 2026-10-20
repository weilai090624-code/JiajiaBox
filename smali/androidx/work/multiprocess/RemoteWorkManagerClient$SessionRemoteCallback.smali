.class public Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;
.super Landroidx/work/multiprocess/RemoteCallback;
.source "RemoteWorkManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionRemoteCallback"
.end annotation


# instance fields
.field private final mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V
    .locals 0
    .param p1, "client"    # Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 534
    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteCallback;-><init>()V

    .line 535
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 536
    return-void
.end method


# virtual methods
.method protected onRequestCompleted()V
    .locals 4

    .line 540
    invoke-super {p0}, Landroidx/work/multiprocess/RemoteCallback;->onRequestCompleted()V

    .line 541
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSessionHandler()Landroid/os/Handler;

    move-result-object v0

    .line 542
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSessionTracker()Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;

    move-result-object v1

    .line 546
    .local v1, "tracker":Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v2}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSessionTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    return-void
.end method
