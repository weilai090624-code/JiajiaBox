.class final Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;
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
    name = "Hold"
.end annotation


# instance fields
.field users:I

.field view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;->view:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 27
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;->release()V

    return-void
.end method

.method release()V
    .registers 5

    .line 16
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;->view:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_1b

    :cond_5
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;->view:Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const v2, 0x7f0a0fa8

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1b

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_1b
    :goto_1b
    return-void
.end method
