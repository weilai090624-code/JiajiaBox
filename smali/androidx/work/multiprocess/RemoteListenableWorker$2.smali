.class Landroidx/work/multiprocess/RemoteListenableWorker$2;
.super Ljava/lang/Object;
.source "RemoteListenableWorker.java"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteListenableWorker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "[B",
        "Landroidx/work/ListenableWorker$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/multiprocess/RemoteListenableWorker;


# direct methods
.method constructor <init>(Landroidx/work/multiprocess/RemoteListenableWorker;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/multiprocess/RemoteListenableWorker;

    .line 148
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteListenableWorker$2;->this$0:Landroidx/work/multiprocess/RemoteListenableWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply([B)Landroidx/work/ListenableWorker$Result;
    .locals 4
    .param p1, "input"    # [B

    .line 151
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/parcelable/ParcelableResult;

    .line 153
    .local v0, "parcelableResult":Landroidx/work/multiprocess/parcelable/ParcelableResult;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    const-string v3, "Cleaning up"

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableWorker$2;->this$0:Landroidx/work/multiprocess/RemoteListenableWorker;

    iget-object v1, v1, Landroidx/work/multiprocess/RemoteListenableWorker;->mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    invoke-virtual {v1}, Landroidx/work/multiprocess/ListenableWorkerImplClient;->unbindService()V

    .line 155
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableResult;->getResult()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/RemoteListenableWorker$2;->apply([B)Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    return-object p1
.end method
