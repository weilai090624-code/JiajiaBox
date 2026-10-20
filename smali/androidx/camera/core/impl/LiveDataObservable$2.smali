.class Landroidx/camera/core/impl/LiveDataObservable$2;
.super Ljava/lang/Object;
.source "LiveDataObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/impl/LiveDataObservable;->addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/LiveDataObservable;

.field final synthetic val$newAdapter:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

.field final synthetic val$oldAdapter:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/LiveDataObservable;Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/impl/LiveDataObservable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$oldAdapter",
            "val$newAdapter"
        }
    .end annotation

    .line 121
    .local p0, "this":Landroidx/camera/core/impl/LiveDataObservable$2;, "Landroidx/camera/core/impl/LiveDataObservable$2;"
    iput-object p1, p0, Landroidx/camera/core/impl/LiveDataObservable$2;->this$0:Landroidx/camera/core/impl/LiveDataObservable;

    iput-object p2, p0, Landroidx/camera/core/impl/LiveDataObservable$2;->val$oldAdapter:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    iput-object p3, p0, Landroidx/camera/core/impl/LiveDataObservable$2;->val$newAdapter:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    .local p0, "this":Landroidx/camera/core/impl/LiveDataObservable$2;, "Landroidx/camera/core/impl/LiveDataObservable$2;"
    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable$2;->this$0:Landroidx/camera/core/impl/LiveDataObservable;

    iget-object v0, v0, Landroidx/camera/core/impl/LiveDataObservable;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Landroidx/camera/core/impl/LiveDataObservable$2;->val$oldAdapter:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 125
    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable$2;->this$0:Landroidx/camera/core/impl/LiveDataObservable;

    iget-object v0, v0, Landroidx/camera/core/impl/LiveDataObservable;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Landroidx/camera/core/impl/LiveDataObservable$2;->val$newAdapter:Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 126
    return-void
.end method
