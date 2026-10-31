.class Lio/nekohasekai/sagernet/ui/TrafficDashboardView$7;
.super Ljava/lang/Object;
.source "TrafficDashboardView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    .line 321
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$7;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 20

    .line 324
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView$7;->this$0:Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->m60lambda$new$5$ionekohasekaisagernetuiTrafficDashboardView(Landroid/view/View;IIIIIIII)V

    return-void
.end method
