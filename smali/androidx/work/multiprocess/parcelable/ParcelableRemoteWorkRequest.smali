.class public Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;
.super Ljava/lang/Object;
.source "ParcelableRemoteWorkRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mParcelableWorkerParameters:Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

.field private final mWorkerClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest$1;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest$1;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->mWorkerClassName:Ljava/lang/String;

    .line 54
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->mParcelableWorkerParameters:Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/work/WorkerParameters;)V
    .locals 1
    .param p1, "workerClassName"    # Ljava/lang/String;
    .param p2, "workerParameters"    # Landroidx/work/WorkerParameters;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->mWorkerClassName:Ljava/lang/String;

    .line 47
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    invoke-direct {v0, p2}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;-><init>(Landroidx/work/WorkerParameters;)V

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->mParcelableWorkerParameters:Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getParcelableWorkerParameters()Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->mParcelableWorkerParameters:Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    return-object v0
.end method

.method public getWorkerClassName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->mWorkerClassName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->mWorkerClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;->mParcelableWorkerParameters:Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    invoke-virtual {v0, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    return-void
.end method
