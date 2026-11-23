.class Lio/nekohasekai/sagernet/ui/SortRowStyle$1;
.super Ljava/lang/Object;
.source "SortRowStyle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/SortRowStyle;->apply(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 18
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 19
    :cond_9
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v0

    .line 20
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$1;->val$view:Landroid/view/View;

    const v2, 0x7f0a0f7c

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 21
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_31

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_31

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$1;->val$view:Landroid/view/View;

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_31

    return-void

    .line 23
    :cond_31
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/SortRowStyle$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    # invokes: Lio/nekohasekai/sagernet/ui/SortRowStyle;->build(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v0}, Lio/nekohasekai/sagernet/ui/SortRowStyle;->access$000(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    return-void
.end method
