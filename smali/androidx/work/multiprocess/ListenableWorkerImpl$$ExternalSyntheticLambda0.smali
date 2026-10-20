.class public final synthetic Landroidx/work/multiprocess/ListenableWorkerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/work/multiprocess/ListenableWorkerImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/work/WorkerParameters;

.field public final synthetic f$3:Landroidx/work/impl/utils/futures/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/multiprocess/ListenableWorkerImpl;Ljava/lang/String;Landroidx/work/WorkerParameters;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/work/multiprocess/ListenableWorkerImpl;

    iput-object p2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$$ExternalSyntheticLambda0;->f$2:Landroidx/work/WorkerParameters;

    iput-object p4, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$$ExternalSyntheticLambda0;->f$3:Landroidx/work/impl/utils/futures/SettableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/work/multiprocess/ListenableWorkerImpl;

    iget-object v1, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$$ExternalSyntheticLambda0;->f$2:Landroidx/work/WorkerParameters;

    iget-object v3, p0, Landroidx/work/multiprocess/ListenableWorkerImpl$$ExternalSyntheticLambda0;->f$3:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/multiprocess/ListenableWorkerImpl;->lambda$executeWorkRequest$0$androidx-work-multiprocess-ListenableWorkerImpl(Ljava/lang/String;Landroidx/work/WorkerParameters;Landroidx/work/impl/utils/futures/SettableFuture;)V

    return-void
.end method
