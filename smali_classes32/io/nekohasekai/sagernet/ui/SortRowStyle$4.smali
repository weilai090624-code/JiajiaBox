.class Lio/nekohasekai/sagernet/ui/SortRowStyle$4;
.super Ljava/lang/Object;
.source "SortRowStyle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/SortRowStyle;->addBorder(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$layers:Landroid/graphics/drawable/LayerDrawable;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/drawable/LayerDrawable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$4;->val$target:Landroid/view/View;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$4;->val$layers:Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 84
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$4;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 85
    :cond_9
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$4;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$4;->val$layers:Landroid/graphics/drawable/LayerDrawable;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$4;->val$target:Landroid/view/View;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$4;->val$layers:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_1a
    return-void
.end method
