.class final Landroidx/camera/view/ForwardingLiveData;
.super Landroidx/lifecycle/MediatorLiveData;
.source "ForwardingLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MediatorLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mLiveDataSource:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    .local p0, "this":Landroidx/camera/view/ForwardingLiveData;, "Landroidx/camera/view/ForwardingLiveData<TT;>;"
    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    .local p0, "this":Landroidx/camera/view/ForwardingLiveData;, "Landroidx/camera/view/ForwardingLiveData<TT;>;"
    iget-object v0, p0, Landroidx/camera/view/ForwardingLiveData;->mLiveDataSource:Landroidx/lifecycle/LiveData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/camera/view/ForwardingLiveData;->mLiveDataSource:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method setSource(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "liveDataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Landroidx/camera/view/ForwardingLiveData;, "Landroidx/camera/view/ForwardingLiveData<TT;>;"
    .local p1, "liveDataSource":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<TT;>;"
    iget-object v0, p0, Landroidx/camera/view/ForwardingLiveData;->mLiveDataSource:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Landroidx/camera/view/ForwardingLiveData;->mLiveDataSource:Landroidx/lifecycle/LiveData;

    invoke-super {p0, v0}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 39
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/ForwardingLiveData;->mLiveDataSource:Landroidx/lifecycle/LiveData;

    .line 40
    new-instance v0, Landroidx/camera/view/ForwardingLiveData$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/view/ForwardingLiveData$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/view/ForwardingLiveData;)V

    invoke-super {p0, p1, v0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 41
    return-void
.end method
