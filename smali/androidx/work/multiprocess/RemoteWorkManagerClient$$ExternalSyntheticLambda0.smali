.class public final synthetic Landroidx/work/multiprocess/RemoteWorkManagerClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/work/multiprocess/RemoteDispatcher;


# instance fields
.field public final synthetic f$0:Landroidx/work/PeriodicWorkRequest;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/PeriodicWorkRequest;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$$ExternalSyntheticLambda0;->f$0:Landroidx/work/PeriodicWorkRequest;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$$ExternalSyntheticLambda0;->f$0:Landroidx/work/PeriodicWorkRequest;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Landroidx/work/multiprocess/IWorkManagerImpl;

    invoke-static {v0, v1, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->lambda$enqueueUniquePeriodicWork$0(Landroidx/work/PeriodicWorkRequest;Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method
