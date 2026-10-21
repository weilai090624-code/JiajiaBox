.class final Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;
.super Ljava/lang/Object;
.source "DrawerWorkGate.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerWorkGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field moving:Z

.field final observers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field posted:Z

.field final queue:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

.field final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State$0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State$0;-><init>(Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;)V

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->queue:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    .line 35
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->observers:Ljava/util/Map;

    .line 37
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->root:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method movementChanged()V
    .registers 5

    .line 39
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->queue:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->isMoving()Z

    move-result v0

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->moving:Z

    if-ne v0, v1, :cond_b

    goto :goto_27

    :cond_b
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->moving:Z

    .line 40
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->observers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Runnable;

    array-length v2, v0

    :goto_1d
    if-ge v1, v2, :cond_27

    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_27
    :goto_27
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 48
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->schedule()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .line 50
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->root:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->posted:Z

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->queue:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->dispose()V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->observers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 51
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->root:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 52
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->root:Landroid/view/View;

    const v0, 0x7f0a0f7d

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_28

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->root:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->posted:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->queue:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->drainOne()V

    return-void
.end method

.method schedule()V
    .registers 2

    .line 43
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->posted:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->queue:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->hasReadyWork()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->posted:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->root:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method
