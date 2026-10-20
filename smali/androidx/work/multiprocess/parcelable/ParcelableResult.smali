.class public Landroidx/work/multiprocess/parcelable/ParcelableResult;
.super Ljava/lang/Object;
.source "ParcelableResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mResult:Landroidx/work/ListenableWorker$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableResult$1;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableResult$1;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 46
    .local v0, "resultType":I
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {v1, p1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroid/os/Parcel;)V

    .line 47
    .local v1, "parcelableOutputData":Landroidx/work/multiprocess/parcelable/ParcelableData;
    invoke-virtual {v1}, Landroidx/work/multiprocess/parcelable/ParcelableData;->getData()Landroidx/work/Data;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/work/multiprocess/parcelable/ParcelableResult;->intToResultType(ILandroidx/work/Data;)Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    iput-object v2, p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/ListenableWorker$Result;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroidx/work/ListenableWorker$Result;)V
    .locals 0
    .param p1, "result"    # Landroidx/work/ListenableWorker$Result;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/ListenableWorker$Result;

    .line 40
    return-void
.end method

.method private static intToResultType(ILandroidx/work/Data;)Landroidx/work/ListenableWorker$Result;
    .locals 4
    .param p0, "resultType"    # I
    .param p1, "data"    # Landroidx/work/Data;

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "result":Landroidx/work/ListenableWorker$Result;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 102
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 104
    invoke-static {p1}, Landroidx/work/ListenableWorker$Result;->success(Landroidx/work/Data;)Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 106
    invoke-static {p1}, Landroidx/work/ListenableWorker$Result;->failure(Landroidx/work/Data;)Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 109
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown result type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static resultTypeOf(Landroidx/work/ListenableWorker$Result;)I
    .locals 3
    .param p0, "result"    # Landroidx/work/ListenableWorker$Result;

    .line 86
    instance-of v0, p0, Landroidx/work/ListenableWorker$Result$Retry;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    instance-of v0, p0, Landroidx/work/ListenableWorker$Result$Success;

    if-eqz v0, :cond_1

    .line 89
    const/4 v0, 0x2

    return v0

    .line 90
    :cond_1
    instance-of v0, p0, Landroidx/work/ListenableWorker$Result$Failure;

    if-eqz v0, :cond_2

    .line 91
    const/4 v0, 0x3

    return v0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getResult()Landroidx/work/ListenableWorker$Result;
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/ListenableWorker$Result;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/ListenableWorker$Result;

    invoke-static {v0}, Landroidx/work/multiprocess/parcelable/ParcelableResult;->resultTypeOf(Landroidx/work/ListenableWorker$Result;)I

    move-result v0

    .line 73
    .local v0, "resultType":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/ListenableWorker$Result;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker$Result;->getOutputData()Landroidx/work/Data;

    move-result-object v1

    .line 76
    .local v1, "outputData":Landroidx/work/Data;
    new-instance v2, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {v2, v1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroidx/work/Data;)V

    .line 77
    .local v2, "parcelableOutputData":Landroidx/work/multiprocess/parcelable/ParcelableData;
    invoke-virtual {v2, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    return-void
.end method
