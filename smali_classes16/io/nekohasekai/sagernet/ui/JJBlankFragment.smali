.class public final Lio/nekohasekai/sagernet/ui/JJBlankFragment;
.super Lio/nekohasekai/sagernet/ui/ToolbarFragment;
.source "JJBlankFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    new-instance v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->home(Landroid/view/View;)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method
