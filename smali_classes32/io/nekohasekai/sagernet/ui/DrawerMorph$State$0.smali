.class public final synthetic Lio/nekohasekai/sagernet/ui/DrawerMorph$State$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$0;->f$0:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$0;->f$0:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->lambda$new$0$io-nekohasekai-sagernet-ui-DrawerMorph$State(Landroid/animation/ValueAnimator;)V

    return-void
.end method
