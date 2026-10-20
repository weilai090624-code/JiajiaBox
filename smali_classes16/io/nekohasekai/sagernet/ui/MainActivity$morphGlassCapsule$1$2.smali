.class public final Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/MainActivity;->morphGlassCapsule(Landroid/graphics/Rect;JLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "io/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationStart",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationRepeat",
        "onAnimationCancel",
        "onAnimationEnd",
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
.field final synthetic $capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

.field final synthetic $lp:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic $onEnd:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $target:Landroid/graphics/Rect;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/MainActivity;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Lio/nekohasekai/sagernet/ui/MainActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "$lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "$target"    # Landroid/graphics/Rect;
    .param p3, "$capsule"    # Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    .param p4, "$receiver"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p5, "$onEnd"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup$MarginLayoutParams;",
            "Landroid/graphics/Rect;",
            "Lio/nekohasekai/sagernet/ui/JJGlassCapsule;",
            "Lio/nekohasekai/sagernet/ui/MainActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$target:Landroid/graphics/Rect;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->this$0:Lio/nekohasekai/sagernet/ui/MainActivity;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$onEnd:Lkotlin/jvm/functions/Function0;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$target:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 542
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$target:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 543
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$target:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 544
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$target:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 545
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$lp:Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->this$0:Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 547
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity$morphGlassCapsule$1$2;->$onEnd:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 548
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    return-void
.end method
