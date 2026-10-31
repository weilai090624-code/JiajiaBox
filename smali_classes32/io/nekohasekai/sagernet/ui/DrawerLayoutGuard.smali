.class public final Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard;
.super Ljava/lang/Object;
.source "DrawerLayoutGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;,
        Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;,
        Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;
    }
.end annotation


# static fields
.field private static final HOLD_TAG:I = 0x7f0a0fa8

.field private static final SLIDE_TAG:I = 0x7f0a0fa9


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquire(Landroid/view/ViewGroup;)Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;
    .registers 5

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3f

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_3f

    :cond_10
    const v0, 0x7f0a0fa8

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 42
    instance-of v3, v1, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;

    if-eqz v3, :cond_23

    new-instance p0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    check-cast v1, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;

    invoke-direct {p0, v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;-><init>(Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$1;)V

    return-object p0

    .line 44
    :cond_23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutSuppressed()Z

    move-result v1

    if-eqz v1, :cond_2a

    return-object v2

    .line 45
    :cond_2a
    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;-><init>(Landroid/view/ViewGroup;)V

    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 47
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 49
    new-instance p0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    invoke-direct {p0, v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;-><init>(Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$1;)V

    return-object p0

    :cond_3f
    :goto_3f
    return-object v2
.end method

.method public static background(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 53
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0a00e1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 54
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard;->acquire(Landroid/view/ViewGroup;)Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object v0
.end method

.method public static slide(Landroid/view/View;F)V
    .registers 5

    const v0, 0x7f0a0fa9

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2a

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2a

    .line 70
    instance-of p1, v1, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;

    if-eqz p1, :cond_17

    goto :goto_33

    .line 71
    :cond_17
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard;->background(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;

    move-result-object p1

    if-nez p1, :cond_1e

    goto :goto_33

    .line 73
    :cond_1e
    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;

    invoke-direct {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;-><init>(Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;)V

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 75
    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    .line 76
    :cond_2a
    instance-of p1, v1, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;

    if-eqz p1, :cond_33

    check-cast v1, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;

    invoke-virtual {v1, p0}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Slide;->close(Landroid/view/View;)V

    :cond_33
    :goto_33
    return-void
.end method
