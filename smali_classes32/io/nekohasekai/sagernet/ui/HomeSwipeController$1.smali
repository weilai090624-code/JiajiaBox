.class Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeSwipeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

.field final synthetic val$completed:Z


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    iput-boolean p2, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->val$completed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 228
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    # getter for: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$000(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eq v0, p1, :cond_9

    return-void

    .line 229
    :cond_9
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    # getter for: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$100(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 230
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    # getter for: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$200(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 231
    :try_start_1c
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    # getter for: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->host:Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$400(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    move-result-object p1

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    # getter for: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->toBlank:Z
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$300(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)Z

    move-result v0

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->val$completed:Z

    invoke-interface {p1, v0, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;->finishSwipe(ZZ)V
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_53

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    # invokes: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$500(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)V

    .line 232
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    const/4 v0, 0x0

    # setter for: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->animator:Landroid/animation/ValueAnimator;
    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$002(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 233
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    const/4 v1, 0x0

    # setter for: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->active:Z
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$602(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z

    .line 234
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    # setter for: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->eligible:Z
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$702(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z

    .line 235
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    # setter for: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->settling:Z
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$802(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Z)Z

    .line 236
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    # setter for: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->outgoing:Landroid/view/View;
    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$102(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/view/View;)Landroid/view/View;

    .line 237
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    # setter for: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->incoming:Landroid/view/View;
    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$202(Lio/nekohasekai/sagernet/ui/HomeSwipeController;Landroid/view/View;)Landroid/view/View;

    return-void

    :catchall_53
    move-exception p1

    .line 231
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/HomeSwipeController$1;->this$0:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    # invokes: Lio/nekohasekai/sagernet/ui/HomeSwipeController;->endMotion()V
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->access$500(Lio/nekohasekai/sagernet/ui/HomeSwipeController;)V

    throw p1
.end method
