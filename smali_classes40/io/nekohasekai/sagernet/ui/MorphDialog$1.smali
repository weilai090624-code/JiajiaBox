.class Lio/nekohasekai/sagernet/ui/MorphDialog$1;
.super Ljava/lang/Object;
.source "MorphDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/MorphDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/MorphDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$1;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$1;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    # getter for: Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->access$100(Lio/nekohasekai/sagernet/ui/MorphDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_3c

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$1;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    # getter for: Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->access$200(Lio/nekohasekai/sagernet/ui/MorphDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1a

    goto :goto_3c

    :cond_1a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$1;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    # getter for: Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->access$100(Lio/nekohasekai/sagernet/ui/MorphDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$1;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$1;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    # getter for: Lio/nekohasekai/sagernet/ui/MorphDialog;->closing:Z
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->access$300(Lio/nekohasekai/sagernet/ui/MorphDialog;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$1;->this$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    # invokes: Lio/nekohasekai/sagernet/ui/MorphDialog;->enter()V
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->access$400(Lio/nekohasekai/sagernet/ui/MorphDialog;)V

    :cond_3c
    :goto_3c
    return v1
.end method
