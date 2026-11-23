.class Lio/nekohasekai/sagernet/ui/SortRowStyle$2;
.super Ljava/lang/Object;
.source "SortRowStyle.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/SortRowStyle;->apply(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$sync:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$2;->val$sync:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .line 29
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 30
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 31
    return v1

    .line 33
    :cond_13
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$2;->val$sync:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 34
    return v1
.end method
