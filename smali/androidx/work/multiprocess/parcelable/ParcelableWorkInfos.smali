.class public Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;
.super Ljava/lang/Object;
.source "ParcelableWorkInfos.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos$1;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos$1;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 52
    .local v0, "parcelledArray":[Landroid/os/Parcelable;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;->mInfos:Ljava/util/List;

    .line 53
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 54
    .local v3, "parcelable":Landroid/os/Parcelable;
    move-object v4, v3

    check-cast v4, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;

    .line 55
    .local v4, "parcelled":Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;
    iget-object v5, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;->mInfos:Ljava/util/List;

    invoke-virtual {v4}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;->getWorkInfo()Landroidx/work/WorkInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v3    # "parcelable":Landroid/os/Parcelable;
    .end local v4    # "parcelled":Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroidx/work/WorkInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;->mInfos:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getWorkInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;->mInfos:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;

    .line 80
    .local v0, "parcelledArray":[Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;->mInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 81
    new-instance v2, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;

    iget-object v3, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;->mInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/WorkInfo;

    invoke-direct {v2, v3}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;-><init>(Landroidx/work/WorkInfo;)V

    aput-object v2, v0, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 84
    return-void
.end method
