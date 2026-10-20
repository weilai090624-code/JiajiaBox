.class Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;
.super Ljava/lang/Object;
.source "FullScreenBackdrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->captureWarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

.field final synthetic val$h:I

.field final synthetic val$prepared:Landroid/graphics/Bitmap;

.field final synthetic val$version:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;IIILandroid/graphics/Bitmap;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$version:I

    iput p3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$w:I

    iput p4, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$h:I

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$prepared:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 54
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->disposed:Z
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$000(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b1

    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$version:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->generation:I
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$100(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)I

    move-result v2

    if-ne v0, v2, :cond_b1

    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$w:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$200(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_b1

    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$h:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$200(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_31

    goto/16 :goto_b1

    .line 56
    :cond_31
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->moving:Z
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$500(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Z

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->drawerProgress:F
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$600(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_50

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->drawerProgress:F
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$600(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_a5

    :cond_50
    invoke-static {}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->isMoving()Z

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$700(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    move-result-object v0

    const v2, 0x7f0a0f48

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_66

    goto :goto_a5

    .line 57
    :cond_66
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # setter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->warming:Z
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$302(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;Z)Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->image:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$900(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$prepared:Landroid/graphics/Bitmap;

    # setter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->image:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$902(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    iget v3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$w:I

    # setter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->width:I
    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$1002(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;I)I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    iget v3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$h:I

    # setter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->height:I
    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$1102(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;I)I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    iget v3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$version:I

    # setter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->imageGeneration:I
    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$1202(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;I)I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->destination:Landroid/graphics/Rect;
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$1300(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$w:I

    iget v4, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$h:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->invalidate()V

    if-eqz v0, :cond_c8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    .line 56
    :cond_a5
    :goto_a5
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->main:Landroid/os/Handler;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$800(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x50

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 54
    :cond_b1
    :goto_b1
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # setter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->warming:Z
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$302(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;Z)Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->val$prepared:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # getter for: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->disposed:Z
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$000(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Z

    move-result v0

    if-nez v0, :cond_c8

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;->this$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    # invokes: Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->requestWarm()V
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->access$400(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)V

    :cond_c8
    return-void
.end method
