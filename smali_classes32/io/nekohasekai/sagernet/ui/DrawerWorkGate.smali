.class public final Lio/nekohasekai/sagernet/ui/DrawerWorkGate;
.super Ljava/lang/Object;
.source "DrawerWorkGate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;,
        Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;
    }
.end annotation


# static fields
.field private static final TAG:I = 0x7f0a0f7d


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static begin(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;
    .registers 4

    const/4 v0, 0x1

    .line 63
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->state(Landroid/view/View;Z)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    move-result-object p0

    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->queue:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->begin()Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;-><init>(Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;Lio/nekohasekai/sagernet/ui/DrawerWorkGate$1;)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->movementChanged()V

    return-object v0
.end method

.method public static cancel(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->state(Landroid/view/View;Z)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->queue:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->cancel(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public static defer(Landroid/view/View;Ljava/lang/Runnable;)Z
    .registers 4

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->state(Landroid/view/View;Z)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, v1, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->queue:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    invoke-virtual {v1, p0, p1}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->defer(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v0
.end method

.method public static drawerMoving(Landroid/view/View;Z)V
    .registers 3

    .line 65
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->state(Landroid/view/View;Z)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    move-result-object p0

    if-eqz p0, :cond_e

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->queue:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->drawerMoving(Z)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->movementChanged()V

    :cond_e
    return-void
.end method

.method public static isMoving(Landroid/view/View;)Z
    .registers 2

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->state(Landroid/view/View;Z)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    move-result-object p0

    if-eqz p0, :cond_11

    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->queue:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->isMoving()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v0
.end method

.method static synthetic lambda$post$0(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method static synthetic lambda$post$1(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 76
    :cond_7
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$0;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$0;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->publish(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static observe(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x1

    .line 81
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->state(Landroid/view/View;Z)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->observers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static post(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)Z
    .registers 4

    .line 74
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$2;

    invoke-direct {v0, p1, p2}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$2;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static publish(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2

    .line 71
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->defer(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method private static state(Landroid/view/View;Z)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 58
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0a0f7d

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 59
    instance-of v3, v2, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    if-eqz v3, :cond_16

    check-cast v2, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    return-object v2

    :cond_16
    if-nez p1, :cond_19

    return-object v0

    .line 61
    :cond_19
    new-instance p1, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method public static unobserve(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    .line 82
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->state(Landroid/view/View;Z)Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->observers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method
