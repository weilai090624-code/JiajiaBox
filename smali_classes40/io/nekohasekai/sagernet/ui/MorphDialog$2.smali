.class Lio/nekohasekai/sagernet/ui/MorphDialog$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MorphDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/MorphDialog;->run(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

.field final synthetic val$done:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/MorphDialog;Ljava/lang/Runnable;)V
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

    .line 52
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$2;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$2;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 52
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$2;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    const/4 v0, 0x0

    # setter for: Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;
    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->access$502(Lio/nekohasekai/sagernet/ui/MorphDialog;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$2;->val$done:Ljava/lang/Runnable;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_e
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$2;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    # getter for: Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->access$600(Lio/nekohasekai/sagernet/ui/MorphDialog;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$2;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    # getter for: Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->access$200(Lio/nekohasekai/sagernet/ui/MorphDialog;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$2;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    # getter for: Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->access$200(Lio/nekohasekai/sagernet/ui/MorphDialog;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
