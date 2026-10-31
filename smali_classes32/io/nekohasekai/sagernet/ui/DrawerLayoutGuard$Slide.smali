.class final Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;
.super Ljava/lang/Object;
.source "DrawerLayoutGuard.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Slide"
.end annotation


# instance fields
.field lease:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;->lease:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    return-void
.end method


# virtual methods
.method close(Landroid/view/View;)V
    .registers 5

    .line 60
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;->lease:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;->close()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;->lease:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    .line 61
    :cond_a
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const v0, 0x7f0a0fa9

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_19

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_19
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;->close(Landroid/view/View;)V

    return-void
.end method
