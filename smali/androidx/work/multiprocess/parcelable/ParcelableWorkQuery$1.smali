.class Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery$1;
.super Ljava/lang/Object;
.source "ParcelableWorkQuery.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 90
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;
    .locals 1
    .param p1, "size"    # I

    .line 95
    new-array v0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery$1;->newArray(I)[Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    move-result-object p1

    return-object p1
.end method
