.class Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;-><init>(Landroid/content/Context;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;


# direct methods
.method constructor <init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)V
    .registers 2
    .param p1, "this$0"    # Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 154
    iput-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    # getter for: Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mIsDragging:Z
    invoke-static {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->access$000(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 158
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    # getter for: Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->access$100(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 159
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    # getter for: Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->access$100(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 161
    :cond_19
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    # getter for: Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    invoke-static {v2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->access$200(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/simplecityapps/recyclerview_fastscroll/utils/Utils;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, -0x1

    goto :goto_30

    :cond_2f
    const/4 v2, 0x1

    :goto_30
    iget-object v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    invoke-virtual {v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->getWidth()I

    move-result v3

    mul-int v2, v2, v3

    filled-new-array {v2}, [I

    move-result-object v2

    const-string v3, "offsetX"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    # setter for: Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->access$102(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 162
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    # getter for: Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->access$100(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    # getter for: Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->access$100(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 164
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$1;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    # getter for: Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->access$100(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 166
    :cond_67
    return-void
.end method
