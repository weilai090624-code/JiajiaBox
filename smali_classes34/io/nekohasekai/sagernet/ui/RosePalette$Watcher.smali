.class final Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;
.super Ljava/lang/Object;
.source "RosePalette.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/RosePalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watcher"
.end annotation


# instance fields
.field last:J

.field posted:Z

.field final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->root:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 1

    .line 31
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->schedule()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 42
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->schedule()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 43
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->root:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->posted:Z

    return-void
.end method

.method public run()V
    .registers 12

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->posted:Z

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    .line 35
    :cond_c
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->root:Landroid/view/View;

    const v2, 0x7f0a01e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->root:Landroid/view/View;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->isTransitioning(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6d

    invoke-static {}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->isMoving()Z

    move-result v2

    if-nez v2, :cond_6d

    if-eqz v1, :cond_2f

    const v2, 0x7f0a0f48

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    goto :goto_6d

    .line 37
    :cond_2f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 38
    iget-wide v3, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->last:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-eqz v8, :cond_4e

    sub-long v5, v1, v3

    const-wide/16 v8, 0x1f4

    cmp-long v10, v5, v8

    if-gez v10, :cond_4e

    iput-boolean v7, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->posted:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->root:Landroid/view/View;

    sub-long/2addr v1, v3

    sub-long/2addr v8, v1

    invoke-virtual {v0, p0, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 39
    :cond_4e
    iput-wide v1, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->last:J

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->dark(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v7

    .line 40
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->root:Landroid/view/View;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/RosePalette;->backdrop(Landroid/view/View;)V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->root:Landroid/view/View;

    # invokes: Lio/nekohasekai/sagernet/ui/RosePalette;->walk(Landroid/view/View;ZZ)V
    invoke-static {v2, v1, v0}, Lio/nekohasekai/sagernet/ui/RosePalette;->access$000(Landroid/view/View;ZZ)V

    return-void

    .line 36
    :cond_6d
    :goto_6d
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->schedule()V

    return-void
.end method

.method schedule()V
    .registers 4

    .line 32
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->posted:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->posted:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->root:Landroid/view/View;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    return-void
.end method
