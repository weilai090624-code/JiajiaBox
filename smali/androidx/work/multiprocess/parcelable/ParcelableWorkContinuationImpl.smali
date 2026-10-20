.class public Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;
.super Ljava/lang/Object;
.source "ParcelableWorkContinuationImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final sValues:[Landroidx/work/ExistingWorkPolicy;


# instance fields
.field private mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Landroidx/work/ExistingWorkPolicy;->values()[Landroidx/work/ExistingWorkPolicy;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->sValues:[Landroidx/work/ExistingWorkPolicy;

    .line 101
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$1;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$1;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->readBooleanValue(Landroid/os/Parcel;)Z

    move-result v1

    .line 70
    .local v1, "hasName":Z
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, "ordinal":I
    sget-object v3, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->sValues:[Landroidx/work/ExistingWorkPolicy;

    aget-object v3, v3, v2

    .line 77
    .local v3, "workPolicy":Landroidx/work/ExistingWorkPolicy;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 78
    .local v4, "requestSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v5, "requests":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/WorkRequestHolder;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 80
    .local v6, "loader":Ljava/lang/ClassLoader;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_1

    .line 81
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    .line 83
    .local v8, "parcelledRequest":Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;
    invoke-virtual {v8}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->getWorkRequest()Landroidx/work/WorkRequest;

    move-result-object v9

    check-cast v9, Landroidx/work/impl/WorkRequestHolder;

    .line 84
    .local v9, "requestHolder":Landroidx/work/impl/WorkRequestHolder;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v8    # "parcelledRequest":Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;
    .end local v9    # "requestHolder":Landroidx/work/impl/WorkRequestHolder;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 87
    .end local v7    # "i":I
    :cond_1
    const/4 v7, 0x0

    .line 88
    .local v7, "parents":Ljava/util/List;, "Ljava/util/List<Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;>;"
    invoke-static {p1}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->readBooleanValue(Landroid/os/Parcel;)Z

    move-result v8

    .line 89
    .local v8, "hasParents":Z
    if-eqz v8, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 91
    .local v9, "parentsSize":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v10

    .line 92
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_2

    .line 93
    nop

    .line 94
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    .line 95
    .local v11, "parcelledContinuation":Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;
    invoke-virtual {v11}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->getInfo()Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v11    # "parcelledContinuation":Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 98
    .end local v9    # "parentsSize":I
    .end local v10    # "i":I
    :cond_2
    new-instance v9, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-direct {v9, v0, v3, v5, v7}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;-><init>(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;Ljava/util/List;)V

    iput-object v9, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 1
    .param p1, "continuation"    # Landroidx/work/impl/WorkContinuationImpl;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;-><init>(Landroidx/work/impl/WorkContinuationImpl;)V

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;)V
    .locals 0
    .param p1, "info"    # Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getInfo()Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    return-object v0
.end method

.method public toWorkContinuationImpl(Landroidx/work/impl/WorkManagerImpl;)Landroidx/work/impl/WorkContinuationImpl;
    .locals 1
    .param p1, "workManager"    # Landroidx/work/impl/WorkManagerImpl;

    .line 165
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-virtual {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->toWorkContinuationImpl(Landroidx/work/impl/WorkManagerImpl;)Landroidx/work/impl/WorkContinuationImpl;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 125
    .local v1, "hasName":Z
    invoke-static {p1, v1}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->writeBooleanValue(Landroid/os/Parcel;Z)V

    .line 126
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v3, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-virtual {v3}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->getExistingWorkPolicy()Landroidx/work/ExistingWorkPolicy;

    move-result-object v3

    .line 131
    .local v3, "policy":Landroidx/work/ExistingWorkPolicy;
    invoke-virtual {v3}, Landroidx/work/ExistingWorkPolicy;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v4, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-virtual {v4}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->getWork()Ljava/util/List;

    move-result-object v4

    .line 134
    .local v4, "requests":Ljava/util/List;, "Ljava/util/List<+Landroidx/work/WorkRequest;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 136
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 137
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/work/WorkRequest;

    .line 138
    .local v6, "request":Landroidx/work/WorkRequest;
    new-instance v7, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    invoke-direct {v7, v6}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;-><init>(Landroidx/work/WorkRequest;)V

    .line 139
    .local v7, "parcelledRequest":Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;
    invoke-virtual {p1, v7, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    .end local v6    # "request":Landroidx/work/WorkRequest;
    .end local v7    # "parcelledRequest":Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-virtual {v5}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->getParentInfos()Ljava/util/List;

    move-result-object v5

    .line 144
    .local v5, "parents":Ljava/util/List;, "Ljava/util/List<Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 145
    .local v2, "hasParents":Z
    :goto_1
    invoke-static {p1, v2}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->writeBooleanValue(Landroid/os/Parcel;Z)V

    .line 146
    if-eqz v2, :cond_3

    .line 147
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 149
    new-instance v7, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    .line 150
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-direct {v7, v8}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;-><init>(Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;)V

    .line 151
    .local v7, "parcelledContinuationImpl":Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;
    invoke-virtual {p1, v7, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    .end local v7    # "parcelledContinuationImpl":Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 154
    .end local v6    # "i":I
    :cond_3
    return-void
.end method
