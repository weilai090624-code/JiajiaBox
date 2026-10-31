.class Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;
.super Ljava/lang/Object;
.source "DrawerNavigator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/DrawerNavigator;->transition(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

.field final synthetic val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 393
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 395
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    iget-boolean v0, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->opening:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    iget-boolean v0, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->earlyUnlocked:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->current()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    if-ne v0, v1, :cond_33

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const-wide/16 v2, 0xf0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_33

    .line 396
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->earlyUnlocked:Z

    .line 398
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iget-object p1, p1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->complete()V

    .line 399
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->releaseWorkGate()V

    :cond_33
    return-void
.end method
