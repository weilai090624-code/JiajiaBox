.class Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->show()V
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

    .line 352
    iput-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$3;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 355
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 356
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$3;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    const/4 v1, 0x0

    # setter for: Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAnimatingShow:Z
    invoke-static {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->access$302(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;Z)Z

    .line 357
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 361
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 362
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$3;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    const/4 v1, 0x0

    # setter for: Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mAnimatingShow:Z
    invoke-static {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->access$302(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;Z)Z

    .line 363
    return-void
.end method
