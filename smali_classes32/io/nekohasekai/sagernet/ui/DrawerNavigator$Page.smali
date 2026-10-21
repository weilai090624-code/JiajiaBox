.class final Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;
.super Ljava/lang/Object;
.source "DrawerNavigator.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Page"
.end annotation


# instance fields
.field fragment:Ljava/lang/Object;

.field host:Landroid/widget/FrameLayout;

.field manager:Ljava/lang/Object;

.field motion:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

.field observer:Landroid/view/ViewTreeObserver;

.field pageLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

.field parent:Landroid/view/View;

.field parentLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

.field pendingStart:Ljava/lang/Runnable;

.field ready:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field view:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 70
    # invokes: Lio/nekohasekai/sagernet/ui/DrawerNavigator;->cancelPending(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->access$000(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->releaseMotion()V

    return-void
.end method

.method releaseMotion()V
    .registers 3

    .line 65
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parentLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->close()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parentLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 66
    :cond_a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->pageLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->close()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->pageLayer:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    .line 67
    :cond_13
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->motion:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;->close()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->motion:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    :cond_1c
    return-void
.end method
