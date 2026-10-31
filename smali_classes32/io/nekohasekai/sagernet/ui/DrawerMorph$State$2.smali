.class Lio/nekohasekai/sagernet/ui/DrawerMorph$State$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DrawerMorph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/DrawerMorph$State;-><init>(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFILkotlin/jvm/functions/Function0;Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$2;->this$0:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 204
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$2;->this$0:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stop(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 209
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$2;->this$0:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    iget-boolean p1, p1, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-eqz p1, :cond_7

    return-void

    .line 212
    :cond_7
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$2;->this$0:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    iget-object p1, p1, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;->finishWhenIdle()V

    return-void
.end method
