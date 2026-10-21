.class final Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;
.super Ljava/lang/Object;
.source "DrawerLayers.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerLayers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Binding"
.end annotation


# instance fields
.field final afterLayout:Ljava/lang/Runnable;

.field lease:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

.field pending:Z

.field final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding$0;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding$0;-><init>(Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->afterLayout:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 3

    .line 67
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->view:Landroid/view/View;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->afterLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->pending:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->lease:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->lease:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    :cond_14
    return-void
.end method

.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-DrawerLayers$Binding()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->pending:Z

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->update(Z)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 54
    invoke-static {p1, p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->observe(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->run()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 55
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->unobserve(Landroid/view/View;)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->clear()V

    return-void
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->update(Z)V

    return-void
.end method

.method update(Z)V
    .registers 3

    .line 58
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->view:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->isMoving(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 59
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->lease:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-nez v0, :cond_28

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->view:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayers;->acquire(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->lease:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    goto :goto_28

    .line 60
    :cond_1d
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->view:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->isMoving(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->clear()V

    :cond_28
    :goto_28
    if-eqz p1, :cond_4c

    .line 63
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->lease:Lio/nekohasekai/sagernet/ui/DrawerLayers$Lease;

    if-nez p1, :cond_4c

    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->pending:Z

    if-nez p1, :cond_4c

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->view:Landroid/view/View;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->isMoving(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_4c

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->pending:Z

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->view:Landroid/view/View;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayers$Binding;->afterLayout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_4c
    return-void
.end method
