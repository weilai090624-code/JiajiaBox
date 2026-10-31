.class Landroidx/work/impl/utils/LiveDataUtils$1$1;
.super Ljava/lang/Object;
.source "LiveDataUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/LiveDataUtils$1;->onChanged(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/utils/LiveDataUtils$1;

.field final synthetic val$input:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/LiveDataUtils$1;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/work/impl/utils/LiveDataUtils$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->this$0:Landroidx/work/impl/utils/LiveDataUtils$1;

    iput-object p2, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->val$input:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 72
    iget-object v0, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->this$0:Landroidx/work/impl/utils/LiveDataUtils$1;

    iget-object v0, v0, Landroidx/work/impl/utils/LiveDataUtils$1;->val$lock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_5
    iget-object v1, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->this$0:Landroidx/work/impl/utils/LiveDataUtils$1;

    iget-object v1, v1, Landroidx/work/impl/utils/LiveDataUtils$1;->val$mappingMethod:Landroidx/arch/core/util/Function;

    iget-object v2, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->val$input:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    .local v1, "newOutput":Ljava/lang/Object;, "TOut;"
    iget-object v2, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->this$0:Landroidx/work/impl/utils/LiveDataUtils$1;

    iget-object v2, v2, Landroidx/work/impl/utils/LiveDataUtils$1;->mCurrentOutput:Ljava/lang/Object;

    if-nez v2, :cond_23

    if-eqz v1, :cond_23

    .line 75
    iget-object v2, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->this$0:Landroidx/work/impl/utils/LiveDataUtils$1;

    iput-object v1, v2, Landroidx/work/impl/utils/LiveDataUtils$1;->mCurrentOutput:Ljava/lang/Object;

    .line 76
    iget-object v2, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->this$0:Landroidx/work/impl/utils/LiveDataUtils$1;

    iget-object v2, v2, Landroidx/work/impl/utils/LiveDataUtils$1;->val$outputLiveData:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_3e

    .line 77
    :cond_23
    iget-object v2, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->this$0:Landroidx/work/impl/utils/LiveDataUtils$1;

    iget-object v2, v2, Landroidx/work/impl/utils/LiveDataUtils$1;->mCurrentOutput:Ljava/lang/Object;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->this$0:Landroidx/work/impl/utils/LiveDataUtils$1;

    iget-object v2, v2, Landroidx/work/impl/utils/LiveDataUtils$1;->mCurrentOutput:Ljava/lang/Object;

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 79
    iget-object v2, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->this$0:Landroidx/work/impl/utils/LiveDataUtils$1;

    iput-object v1, v2, Landroidx/work/impl/utils/LiveDataUtils$1;->mCurrentOutput:Ljava/lang/Object;

    .line 80
    iget-object v2, p0, Landroidx/work/impl/utils/LiveDataUtils$1$1;->this$0:Landroidx/work/impl/utils/LiveDataUtils$1;

    iget-object v2, v2, Landroidx/work/impl/utils/LiveDataUtils$1;->val$outputLiveData:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 82
    .end local v1    # "newOutput":Ljava/lang/Object;, "TOut;"
    :cond_3e
    :goto_3e
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_40

    throw v1
.end method
