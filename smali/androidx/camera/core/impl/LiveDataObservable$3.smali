.class Landroidx/camera/core/impl/LiveDataObservable$3;
.super Ljava/lang/Object;
.source "LiveDataObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/impl/LiveDataObservable;->removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/LiveDataObservable;

.field final synthetic val$adapter:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/LiveDataObservable;Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/impl/LiveDataObservable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adapter"
        }
    .end annotation

    .line 138
    .local p0, "this":Landroidx/camera/core/impl/LiveDataObservable$3;, "Landroidx/camera/core/impl/LiveDataObservable$3;"
    iput-object p1, p0, Landroidx/camera/core/impl/LiveDataObservable$3;->this$0:Landroidx/camera/core/impl/LiveDataObservable;

    iput-object p2, p0, Landroidx/camera/core/impl/LiveDataObservable$3;->val$adapter:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 141
    .local p0, "this":Landroidx/camera/core/impl/LiveDataObservable$3;, "Landroidx/camera/core/impl/LiveDataObservable$3;"
    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable$3;->this$0:Landroidx/camera/core/impl/LiveDataObservable;

    iget-object v0, v0, Landroidx/camera/core/impl/LiveDataObservable;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Landroidx/camera/core/impl/LiveDataObservable$3;->val$adapter:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 142
    return-void
.end method
