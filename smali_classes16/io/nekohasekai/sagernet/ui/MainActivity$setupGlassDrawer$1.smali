.class public final Lio/nekohasekai/sagernet/ui/MainActivity$setupGlassDrawer$1;
.super Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/MainActivity;->setupGlassDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "io/nekohasekai/sagernet/ui/MainActivity$setupGlassDrawer$1",
        "Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;",
        "onDrawerClosed",
        "",
        "drawerView",
        "Landroid/view/View;",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/MainActivity;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V
    .locals 0
    .param p1, "$receiver"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$setupGlassDrawer$1;->this$0:Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 321
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    const-string v0, "drawerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity$setupGlassDrawer$1;->this$0:Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$getGlassExpanded$p(Lio/nekohasekai/sagernet/ui/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity$setupGlassDrawer$1;->this$0:Lio/nekohasekai/sagernet/ui/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$collapseGlassToMenu(Lio/nekohasekai/sagernet/ui/MainActivity;Z)V

    .line 324
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0
    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->slide(Landroid/view/View;F)V
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 1
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity$setupGlassDrawer$1;->this$0:Lio/nekohasekai/sagernet/ui/MainActivity;
    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->drawerState(Landroid/app/Activity;I)V
    return-void
.end method
