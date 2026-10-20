.class public Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;
.super Ljava/lang/Object;
.source "ParcelableRuntimeExtras.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras$1;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras$1;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 54
    .local v0, "loader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 55
    .local v1, "network":Landroid/net/Network;
    invoke-static {p1}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->readBooleanValue(Landroid/os/Parcel;)Z

    move-result v2

    .line 56
    .local v2, "hasNetwork":Z
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/net/Network;

    .line 60
    :cond_0
    const/4 v3, 0x0

    .line 61
    .local v3, "triggeredContentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p1}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->readBooleanValue(Landroid/os/Parcel;)Z

    move-result v4

    .line 62
    .local v4, "hasContentUris":Z
    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 64
    .local v5, "parceledUris":[Landroid/os/Parcelable;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 65
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 66
    .local v8, "parcelable":Landroid/os/Parcelable;
    move-object v9, v8

    check-cast v9, Landroid/net/Uri;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v8    # "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 70
    .end local v5    # "parceledUris":[Landroid/os/Parcelable;
    :cond_1
    const/4 v5, 0x0

    .line 71
    .local v5, "triggeredContentAuthorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->readBooleanValue(Landroid/os/Parcel;)Z

    move-result v6

    .line 72
    .local v6, "hasContentAuthorities":Z
    if-eqz v6, :cond_2

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 75
    :cond_2
    new-instance v7, Landroidx/work/WorkerParameters$RuntimeExtras;

    invoke-direct {v7}, Landroidx/work/WorkerParameters$RuntimeExtras;-><init>()V

    iput-object v7, p0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 76
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_3

    .line 77
    iget-object v7, p0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    iput-object v1, v7, Landroidx/work/WorkerParameters$RuntimeExtras;->network:Landroid/net/Network;

    .line 79
    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_5

    .line 80
    if-eqz v3, :cond_4

    .line 81
    iget-object v7, p0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    iput-object v3, v7, Landroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentUris:Ljava/util/List;

    .line 83
    :cond_4
    if-eqz v5, :cond_5

    .line 84
    iget-object v7, p0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    iput-object v5, v7, Landroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentAuthorities:Ljava/util/List;

    .line 87
    :cond_5
    return-void
.end method

.method public constructor <init>(Landroidx/work/WorkerParameters$RuntimeExtras;)V
    .locals 0
    .param p1, "runtimeExtras"    # Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getRuntimeExtras()Landroidx/work/WorkerParameters$RuntimeExtras;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "network":Landroid/net/Network;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 113
    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    iget-object v0, v1, Landroidx/work/WorkerParameters$RuntimeExtras;->network:Landroid/net/Network;

    .line 116
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 117
    .local v3, "hasNetwork":Z
    :goto_0
    invoke-static {p1, v3}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->writeBooleanValue(Landroid/os/Parcel;Z)V

    .line 118
    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    :cond_2
    const/4 v4, 0x0

    .line 123
    .local v4, "triggeredContentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v5, 0x0

    .line 124
    .local v5, "triggeredAuthorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_3

    .line 125
    iget-object v6, p0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    iget-object v4, v6, Landroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentUris:Ljava/util/List;

    .line 126
    iget-object v6, p0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    iget-object v5, v6, Landroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentAuthorities:Ljava/util/List;

    .line 129
    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 130
    .local v6, "hasContentUris":Z
    :goto_1
    invoke-static {p1, v6}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->writeBooleanValue(Landroid/os/Parcel;Z)V

    .line 131
    if-eqz v6, :cond_6

    .line 132
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/Uri;

    .line 133
    .local v7, "contentUriArray":[Landroid/net/Uri;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_5

    .line 134
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    aput-object v9, v7, v8

    .line 133
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 136
    .end local v8    # "i":I
    :cond_5
    invoke-virtual {p1, v7, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 139
    .end local v7    # "contentUriArray":[Landroid/net/Uri;
    :cond_6
    if-eqz v5, :cond_7

    .line 140
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    nop

    .line 141
    .local v1, "hasContentAuthorities":Z
    :goto_3
    invoke-static {p1, v1}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->writeBooleanValue(Landroid/os/Parcel;Z)V

    .line 142
    if-eqz v1, :cond_8

    .line 143
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 145
    :cond_8
    return-void
.end method
