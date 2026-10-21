.class public final Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;
.super Ljava/lang/Object;
.source "GlassEngine.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/widget/GlassEngine;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "io/nekohasekai/sagernet/widget/GlassEngine$attachListener$1",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "onViewAttachedToWindow",
        "",
        "v",
        "Landroid/view/View;",
        "onViewDetachedFromWindow",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/widget/GlassEngine;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/widget/GlassEngine;)V
    .registers 2
    .param p1, "$receiver"    # Lio/nekohasekai/sagernet/widget/GlassEngine;

    iput-object p1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;->this$0:Lio/nekohasekai/sagernet/widget/GlassEngine;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "root":Landroid/view/View;
    iget-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;->this$0:Lio/nekohasekai/sagernet/widget/GlassEngine;

    invoke-static {v1, v0}, Lio/nekohasekai/sagernet/widget/GlassEngine;->access$setSource$p(Lio/nekohasekai/sagernet/widget/GlassEngine;Landroid/view/View;)V

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;->this$0:Lio/nekohasekai/sagernet/widget/GlassEngine;

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 121
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;->this$0:Lio/nekohasekai/sagernet/widget/GlassEngine;

    # getter for: Lio/nekohasekai/sagernet/widget/GlassEngine;->source:Landroid/view/View;
    invoke-static {v0}, Lio/nekohasekai/sagernet/widget/GlassEngine;->access$getSource$p(Lio/nekohasekai/sagernet/widget/GlassEngine;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;->this$0:Lio/nekohasekai/sagernet/widget/GlassEngine;

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 125
    :cond_1a
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;->this$0:Lio/nekohasekai/sagernet/widget/GlassEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/widget/GlassEngine;->access$setSource$p(Lio/nekohasekai/sagernet/widget/GlassEngine;Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;->this$0:Lio/nekohasekai/sagernet/widget/GlassEngine;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/widget/GlassEngine;->access$setSnapshot$p(Lio/nekohasekai/sagernet/widget/GlassEngine;Landroid/graphics/Bitmap;)V

    .line 127
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;->this$0:Lio/nekohasekai/sagernet/widget/GlassEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/widget/GlassEngine;->access$setFirst$p(Lio/nekohasekai/sagernet/widget/GlassEngine;Z)V

    .line 128
    return-void
.end method
