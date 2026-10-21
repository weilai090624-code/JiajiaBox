.class Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;
.super Ljava/lang/Object;
.source "TrafficDashboardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/TrafficDashboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 50
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    const/4 v1, 0x0

    # setter for: Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->access$002(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Z)Z

    .line 51
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    # getter for: Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->homeMode:Z
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->access$100(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_3d

    .line 52
    :cond_27
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    # invokes: Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->render()V
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->access$200(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)V

    .line 53
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    const/4 v1, 0x1

    # setter for: Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshScheduled:Z
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->access$002(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Z)Z

    .line 54
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    # getter for: Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->access$300(Lio/nekohasekai/sagernet/ui/TrafficDashboardView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3d
    :goto_3d
    return-void
.end method
