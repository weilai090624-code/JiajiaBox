.class Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest$1;
.super Ljava/lang/Object;
.source "ParcelableRemoteWorkRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;
    .locals 1
    .param p1, "size"    # I

    .line 66
    new-array v0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest$1;->newArray(I)[Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    move-result-object p1

    return-object p1
.end method
