.class final Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;
.super Landroid/view/View;
.source "PopupBackdrop.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/PopupBackdrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Layer"
.end annotation


# instance fields
.field height:I

.field image:Landroid/graphics/Bitmap;

.field installed:Z

.field nativeBlur:Z

.field final paint:Landroid/graphics/Paint;

.field final root:Landroid/view/ViewGroup;

.field strength:I

.field final transition:Lio/nekohasekai/sagernet/ui/BlurTransition;

.field users:I

.field watching:Z

.field width:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 4

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lio/nekohasekai/sagernet/ui/BlurTransition;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/BlurTransition;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->transition:Lio/nekohasekai/sagernet/ui/BlurTransition;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->strength:I

    .line 49
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method acquire()Z
    .registers 5

    .line 50
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->watching:Z

    const/4 v1, 0x1

    if-nez v0, :cond_39

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v0, v2, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->nativeBlur:Z

    if-nez v0, :cond_29

    .line 52
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->capture()Z

    move-result v0

    if-nez v0, :cond_1a

    return v3

    :cond_1a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->installed:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->setAlpha(F)V

    .line 53
    :cond_29
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->watching:Z

    .line 54
    :cond_39
    iget v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->users:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->users:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    const v2, 0x7f0a0f51

    invoke-virtual {v0, v2, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->transition:Lio/nekohasekai/sagernet/ui/BlurTransition;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/BlurTransition;->step(Z)F

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    return v1
.end method

.method capture()Z
    .registers 11

    .line 57
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_9f

    if-gtz v1, :cond_13

    goto/16 :goto_9f

    :cond_13
    add-int/lit8 v3, v0, 0x7

    const/4 v4, 0x0

    .line 58
    :try_start_16
    div-int/lit8 v3, v3, 0x8

    const/4 v5, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v1, 0x7

    div-int/lit8 v6, v6, 0x8

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_2b} :catch_8b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_2b} :catch_89
    .catchall {:try_start_16 .. :try_end_2b} :catchall_87

    :try_start_2b
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v3, v3

    int-to-float v9, v0

    div-float/2addr v3, v9

    int-to-float v6, v6

    int-to-float v9, v1

    div-float/2addr v6, v9

    invoke-virtual {v8, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 59
    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->installed:Z

    if-eqz v3, :cond_46

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_46} :catch_84
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_46} :catch_82
    .catchall {:try_start_2b .. :try_end_46} :catchall_7f

    :cond_46
    :try_start_46
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_70

    :try_start_4b
    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->installed:Z

    if-eqz v3, :cond_58

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_58
    const/4 v3, 0x3

    .line 60
    invoke-static {v7, v3}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->blur(Landroid/graphics/Bitmap;I)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->image:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_63

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_63
    iput-object v7, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->image:Landroid/graphics/Bitmap;
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_65} :catch_84
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4b .. :try_end_65} :catch_82
    .catchall {:try_start_4b .. :try_end_65} :catchall_7f

    :try_start_65
    iput v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->width:I

    iput v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->height:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->layout(IIII)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->invalidate()V
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_6f} :catch_8b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_65 .. :try_end_6f} :catch_89
    .catchall {:try_start_65 .. :try_end_6f} :catchall_87

    return v5

    :catchall_70
    move-exception v0

    .line 59
    :try_start_71
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->installed:Z

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_7e
    throw v0
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_7f} :catch_84
    .catch Ljava/lang/OutOfMemoryError; {:try_start_71 .. :try_end_7f} :catch_82
    .catchall {:try_start_71 .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v0

    move-object v4, v7

    goto :goto_99

    :catch_82
    move-exception v0

    goto :goto_85

    :catch_84
    move-exception v0

    :goto_85
    move-object v4, v7

    goto :goto_8c

    :catchall_87
    move-exception v0

    goto :goto_99

    :catch_89
    move-exception v0

    goto :goto_8c

    :catch_8b
    move-exception v0

    .line 61
    :goto_8c
    :try_start_8c
    const-string v1, "PopupBackdrop"

    const-string v3, "Cannot capture popup background"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_87

    if-eqz v4, :cond_98

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_98
    return v2

    :goto_99
    if-eqz v4, :cond_9e

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9e
    throw v0

    :cond_9f
    :goto_9f
    return v2
.end method

.method clear()V
    .registers 4

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->users:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->transition:Lio/nekohasekai/sagernet/ui/BlurTransition;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/BlurTransition;->reset()V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_24
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->nativeBlur:Z

    if-eqz v1, :cond_36

    iget v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->strength:I

    if-lez v1, :cond_31

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lio/nekohasekai/sagernet/ui/BlurEffects;->apply(Landroid/view/View;I)V

    :cond_31
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->nativeBlur:Z

    const/4 v1, -0x1

    iput v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->strength:I

    :cond_36
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->watching:Z

    if-eqz v1, :cond_41

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->watching:Z

    :cond_41
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->installed:Z

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->installed:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_6a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    const v1, 0x7f0a0f51

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-ne v0, p0, :cond_86

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_86

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->refreshNative(Landroid/view/ViewGroup;)V

    :cond_86
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->image:Landroid/graphics/Bitmap;

    :cond_8f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 63
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->width:I

    iget v3, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->height:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_19
    return-void
.end method

.method public onPreDraw()Z
    .registers 5

    .line 65
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->transition:Lio/nekohasekai/sagernet/ui/BlurTransition;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->users:I

    const/4 v2, 0x1

    if-lez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/BlurTransition;->step(Z)F

    move-result v0

    .line 66
    iget v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->users:I

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->clear()V

    return v2

    .line 67
    :cond_1b
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->nativeBlur:Z

    if-eqz v1, :cond_34

    .line 68
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/BlurEffects;->level(F)I

    move-result v0

    .line 69
    iget v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->strength:I

    if-eq v0, v1, :cond_4e

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lio/nekohasekai/sagernet/ui/BlurEffects;->apply(Landroid/view/View;I)V

    iput v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->strength:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->refreshNative(Landroid/view/ViewGroup;)V

    goto :goto_4e

    .line 71
    :cond_34
    iget v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->width:I

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_48

    iget v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->height:I

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_4b

    :cond_48
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->capture()Z

    :cond_4b
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->setAlpha(F)V

    .line 72
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->transition:Lio/nekohasekai/sagernet/ui/BlurTransition;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/BlurTransition;->running()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_5b
    return v2
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 76
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->clear()V

    return-void
.end method

.method release()V
    .registers 3

    .line 55
    iget v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->users:I

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->users:I

    :cond_8
    iget v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->users:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->transition:Lio/nekohasekai/sagernet/ui/BlurTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/BlurTransition;->step(Z)F

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_17
    return-void
.end method
