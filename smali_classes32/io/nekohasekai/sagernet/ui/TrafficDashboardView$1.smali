.class Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;
.super Ljava/lang/Object;
.source "TrafficDashboardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->installHome(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$findViewById:Landroid/view/View;

.field final synthetic val$findViewById2:Landroid/view/View;

.field final synthetic val$trafficDashboardView:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;


# direct methods
.method constructor <init>(Landroid/view/View;Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->val$findViewById:Landroid/view/View;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->val$trafficDashboardView:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->val$findViewById2:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 126
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->val$findViewById:Landroid/view/View;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->val$trafficDashboardView:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$1;->val$findViewById2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->lambda$installHome$1(Landroid/view/View;Lio/nekohasekai/sagernet/ui/TrafficDashboardView;Landroid/view/View;)V

    return-void
.end method
