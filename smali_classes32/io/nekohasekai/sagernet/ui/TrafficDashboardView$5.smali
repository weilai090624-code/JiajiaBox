.class Lio/nekohasekai/sagernet/ui/TrafficDashboardView$5;
.super Ljava/lang/Object;
.source "TrafficDashboardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/TrafficDashboardView;-><init>(Landroid/content/Context;Z)V
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

    .line 184
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$5;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 187
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$5;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->m58lambda$new$0$ionekohasekaisagernetuiTrafficDashboardView()V

    return-void
.end method
