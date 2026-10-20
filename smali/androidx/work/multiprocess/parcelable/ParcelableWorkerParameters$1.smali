.class Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters$1;
.super Ljava/lang/Object;
.source "ParcelableWorkerParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
    .locals 1
    .param p1, "size"    # I

    .line 81
    new-array v0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters$1;->newArray(I)[Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    move-result-object p1

    return-object p1
.end method
