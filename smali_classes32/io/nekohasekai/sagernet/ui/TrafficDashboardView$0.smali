.class public final synthetic Lio/nekohasekai/sagernet/ui/TrafficDashboardView$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$0;->f$0:Landroid/view/View;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$0;->f$1:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$0;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$0;->f$0:Landroid/view/View;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$0;->f$1:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$0;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->lambda$installHome$0(Landroid/view/View;Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Landroid/view/View;)V

    return-void
.end method
