.class public final Lio/nekohasekai/sagernet/ui/MorphDialog;
.super Landroid/app/Dialog;
.source "MorphDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;
    }
.end annotation


# static fields
.field private static final NEXT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESUMED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private after:Ljava/lang/Runnable;

.field private anchor:Landroid/view/View;

.field private anchorHidden:Z

.field private anim:Landroid/animation/ValueAnimator;

.field private baseDim:F

.field private bitmap:Landroid/graphics/Bitmap;

.field private cancellable:Z

.field private closing:Z

.field private frame:Landroid/widget/FrameLayout;

.field private image:Landroid/widget/ImageView;

.field private final imageClip:Landroid/graphics/Rect;

.field private imageH:I

.field private lastDim:I

.field private originalAlpha:F

.field private outside:Z

.field private panel:Landroid/view/View;

.field private final panelClip:Landroid/graphics/Rect;

.field private panelH:I

.field private panelW:I

.field private parentDialog:Landroid/app/Dialog;

.field private progress:F

.field private sh:I

.field private sw:I

.field private sx:I

.field private sy:I


# direct methods
.method public static synthetic $r8$lambda$XhFnVCre7sgcSOZiQGtE32ovrF0(Lio/nekohasekai/sagernet/ui/MorphDialog;)V
    .registers 1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->complete()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/MorphDialog;->NEXT:Ljava/lang/ThreadLocal;

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/MorphDialog;->RESUMED:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelClip:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->imageClip:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelW:I

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelH:I

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->imageH:I

    .line 23
    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->lastDim:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->originalAlpha:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->cancellable:Z

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->outside:Z

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    sget-object p1, Lio/nekohasekai/sagernet/ui/MorphDialog;->NEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    if-eqz v0, :cond_4f

    iget-object p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->bitmap:Landroid/graphics/Bitmap;

    iget p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->x:I

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sx:I

    iget p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->y:I

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sy:I

    iget p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->w:I

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sw:I

    iget p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->h:I

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sh:I

    iget-object p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->view:Landroid/view/View;

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    iget-object p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->parent:Landroid/app/Dialog;

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->parentDialog:Landroid/app/Dialog;

    :cond_4f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelClip:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->imageClip:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelW:I

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelH:I

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->imageH:I

    .line 23
    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->lastDim:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->originalAlpha:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->cancellable:Z

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->outside:Z

    .line 27
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->capture()V

    return-void
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/MorphDialog;)Landroid/widget/FrameLayout;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/MorphDialog;)Landroid/view/View;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lio/nekohasekai/sagernet/ui/MorphDialog;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->closing:Z

    return p0
.end method

.method static synthetic access$400(Lio/nekohasekai/sagernet/ui/MorphDialog;)V
    .registers 1

    .line 17
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->enter()V

    return-void
.end method

.method static synthetic access$502(Lio/nekohasekai/sagernet/ui/MorphDialog;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 17
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$600(Lio/nekohasekai/sagernet/ui/MorphDialog;)Landroid/widget/ImageView;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static anchor(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor(Landroid/view/View;Landroid/app/Dialog;)V

    return-void
.end method

.method public static anchor(Landroid/view/View;Landroid/app/Dialog;)V
    .registers 6

    .line 25
    new-instance v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;-><init>(Lio/nekohasekai/sagernet/ui/MorphDialog$1;)V

    iput-object p0, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->view:Landroid/view/View;

    iput-object p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->parent:Landroid/app/Dialog;

    if-eqz p0, :cond_4f

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_4f

    const/4 p1, 0x2

    :try_start_13
    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, p1, v2

    iput v2, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->x:I

    const/4 v2, 0x1

    aget p1, p1, v2

    iput p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->w:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->h:I

    iget p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->w:I

    if-lez p1, :cond_4f

    iget p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->h:I

    if-lez p1, :cond_4f

    iget p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->w:I

    iget v2, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->h:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_4c} :catch_4d

    goto :goto_4f

    :catch_4d
    iput-object v1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    :cond_4f
    :goto_4f
    sget-object p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->NEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static beginGroup(Landroid/view/View;Landroid/app/Dialog;)V
    .registers 5

    .line 61
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor(Landroid/view/View;Landroid/app/Dialog;)V

    sget-object p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->NEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/nekohasekai/sagernet/ui/MorphDialog$0;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/MorphDialog$0;-><init>(Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private capture()V
    .registers 4

    .line 28
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4c

    :cond_b
    const/4 v0, 0x2

    :try_start_c
    new-array v0, v0, [I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sx:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sy:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sw:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sh:I

    iget v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sw:I

    if-lez v1, :cond_4c

    if-gtz v0, :cond_34

    goto :goto_4c

    :cond_34
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_48} :catch_49
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_48} :catch_49

    return-void

    :catch_49
    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->bitmap:Landroid/graphics/Bitmap;

    :cond_4c
    :goto_4c
    return-void
.end method

.method private closeAncestors()V
    .registers 4

    .line 69
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->parentDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->parentDialog:Landroid/app/Dialog;

    :goto_5
    if-eqz v0, :cond_1b

    instance-of v2, v0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    if-eqz v2, :cond_16

    check-cast v0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/MorphDialog;->parentDialog:Landroid/app/Dialog;

    iput-object v1, v0, Lio/nekohasekai/sagernet/ui/MorphDialog;->parentDialog:Landroid/app/Dialog;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->closeImmediately()V

    move-object v0, v2

    goto :goto_5

    :cond_16
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    move-object v0, v1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method private closeImmediately()V
    .registers 3

    .line 68
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->closing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->closing:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    :cond_17
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->after:Ljava/lang/Runnable;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->complete()V

    return-void
.end method

.method private complete()V
    .registers 3

    .line 59
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchorHidden:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    if-eqz v0, :cond_10

    iget v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->originalAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchorHidden:Z

    :cond_10
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->bitmap:Landroid/graphics/Bitmap;

    :cond_24
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->after:Ljava/lang/Runnable;

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->after:Ljava/lang/Runnable;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2d
    return-void
.end method

.method public static defer(Landroid/app/Dialog;Ljava/lang/Runnable;)Z
    .registers 5

    .line 20
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lio/nekohasekai/sagernet/ui/MorphDialog;->RESUMED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    return v1

    :cond_f
    check-cast p0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->closing:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->finish(Ljava/lang/Runnable;)V

    return v2
.end method

.method private dim(F)V
    .registers 5

    const/high16 v0, 0x42000000    # 32.0f

    mul-float p1, p1, v0

    .line 60
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/16 v1, 0x20

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->lastDim:I

    if-eq p1, v1, :cond_28

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->lastDim:I

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_28

    iget v2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->baseDim:F

    int-to-float p1, p1

    mul-float v2, v2, p1

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    :cond_28
    return-void
.end method

.method private static dp(Landroid/content/Context;F)I
    .registers 2

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private enter()V
    .registers 4

    .line 46
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->closing:Z

    if-nez v0, :cond_77

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    if-nez v0, :cond_f

    goto :goto_77

    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_64

    iget v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sw:I

    if-lez v0, :cond_64

    iget v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sh:I

    if-gtz v0, :cond_42

    goto :goto_64

    :cond_42
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->originalAlpha:F

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchorHidden:Z

    :cond_5c
    iput v2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->progress:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->run(ZLjava/lang/Runnable;)V

    return-void

    :cond_64
    :goto_64
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    if-eqz v0, :cond_6d

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6d
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iput v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->progress:F

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->dim(F)V

    :cond_77
    :goto_77
    return-void
.end method

.method public static finish(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 58
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    if-eqz v0, :cond_a

    check-cast p0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->finish(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_12
    return-void
.end method

.method public static finishAll(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 70
    new-instance v0, Lio/nekohasekai/sagernet/ui/MorphDialog$7;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/ui/MorphDialog$7;-><init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->finish(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static finishParent(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 56
    new-instance v0, Lio/nekohasekai/sagernet/ui/MorphDialog$8;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/ui/MorphDialog$8;-><init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->finish(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static groupConfirm(Landroid/app/Dialog;Ljava/lang/Object;)V
    .registers 3

    .line 71
    new-instance v0, Lio/nekohasekai/sagernet/ui/MorphDialog$9;

    invoke-direct {v0, p1}, Lio/nekohasekai/sagernet/ui/MorphDialog$9;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->finishAll(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static groupDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 2

    .line 62
    sget-object v0, Lio/nekohasekai/sagernet/ui/MorphDialog;->NEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_e
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$beginGroup$4(Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;)V
    .registers 3

    .line 61
    sget-object v0, Lio/nekohasekai/sagernet/ui/MorphDialog;->NEXT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_16

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    if-eqz p0, :cond_16

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_16
    return-void
.end method

.method static synthetic lambda$finishAll$6(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 70
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    if-eqz v0, :cond_9

    check-cast p0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->closeAncestors()V

    :cond_9
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method

.method static synthetic lambda$finishParent$2(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 56
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    if-eqz v0, :cond_13

    check-cast p0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->parentDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_13
    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_18
    return-void
.end method

.method static synthetic lambda$groupConfirm$7(Ljava/lang/Object;)V
    .registers 4

    .line 71
    :try_start_0
    const-string v0, "kotlin.jvm.functions.Function0"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "invoke"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    const-string v0, "MorphDialog"

    const-string v1, "group confirmation"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$preserveParentPositions$5(Ljava/util/LinkedHashMap;Landroid/content/DialogInterface;)V
    .registers 3

    .line 66
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_8

    :cond_28
    return-void
.end method

.method static synthetic lambda$returnToParent$3(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 57
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    if-eqz v0, :cond_12

    check-cast p0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->parentDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private prepareFrame()V
    .registers 9

    .line 31
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_b9

    :cond_17
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;

    new-instance v5, Lio/nekohasekai/sagernet/ui/MorphDialog$6;

    invoke-direct {v5, p0}, Lio/nekohasekai/sagernet/ui/MorphDialog$6;-><init>(Lio/nekohasekai/sagernet/ui/MorphDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v3, 0x43480000    # 200.0f

    .line 33
    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/MorphDialog;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v5, 0x43d20000    # 420.0f

    invoke-static {v0, v5}, Lio/nekohasekai/sagernet/ui/MorphDialog;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v0, v7}, Lio/nekohasekai/sagernet/ui/MorphDialog;->dp(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 34
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-direct {v5, v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v3, v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 35
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b4

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sw:I

    iget v6, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sh:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 36
    :cond_b4
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method private static releaseBlur(Landroid/view/View;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_3a

    :cond_3
    const v0, 0x7f0a0f50

    .line 74
    :try_start_6
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "io.nekohasekai.sagernet.ui.PopupBackdrop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    nop

    .line 75
    :cond_23
    :goto_23
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3a

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->releaseBlur(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3a
    :goto_3a
    return-void
.end method

.method public static returnToParent(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 57
    new-instance v0, Lio/nekohasekai/sagernet/ui/MorphDialog$10;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/ui/MorphDialog$10;-><init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->finish(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    return-void
.end method

.method private run(ZLjava/lang/Runnable;)V
    .registers 16

    .line 48
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2a

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_2a

    new-array v3, v0, [I

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v3, v2

    iput v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sx:I

    aget v3, v3, v1

    iput v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sy:I

    :cond_2a
    new-array v3, v0, [I

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sx:I

    aget v5, v3, v2

    sub-int/2addr v4, v5

    int-to-float v7, v4

    iget v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sy:I

    aget v3, v3, v1

    sub-int/2addr v4, v3

    int-to-float v9, v4

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v8, v3

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v10, v3

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v11, v3

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v12, v3

    const/4 v3, 0x0

    cmpg-float v4, v11, v3

    if-lez v4, :cond_e0

    cmpg-float v4, v12, v3

    if-gtz v4, :cond_64

    goto/16 :goto_e0

    .line 49
    :cond_64
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_82

    .line 50
    iget v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->progress:F

    goto :goto_83

    :cond_82
    const/4 v4, 0x0

    :goto_83
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_89

    const/4 p1, 0x0

    goto :goto_8b

    :cond_89
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_8b
    new-array v0, v0, [F

    aput v4, v0, v2

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    sub-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x43960000    # 300.0f

    mul-float p1, p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    new-instance v5, Lio/nekohasekai/sagernet/ui/MorphDialog$4;

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lio/nekohasekai/sagernet/ui/MorphDialog$4;-><init>(Lio/nekohasekai/sagernet/ui/MorphDialog;FFFFFF)V

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    new-instance v0, Lio/nekohasekai/sagernet/ui/MorphDialog$2;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/ui/MorphDialog$2;-><init>(Lio/nekohasekai/sagernet/ui/MorphDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->anim:Landroid/animation/ValueAnimator;

    if-ne p2, p1, :cond_e5

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_e0
    :goto_e0
    if-eqz p2, :cond_e5

    .line 49
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_e5
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->finish(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finish(Ljava/lang/Runnable;)V
    .registers 3

    .line 55
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->closing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->closing:Z

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->after:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->releaseBlur(Landroid/view/View;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_31

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    if-eqz p1, :cond_31

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_31

    :cond_28
    new-instance p1, Lio/nekohasekai/sagernet/ui/MorphDialog$3;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/MorphDialog$3;-><init>(Lio/nekohasekai/sagernet/ui/MorphDialog;)V

    invoke-direct {p0, v0, p1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->run(ZLjava/lang/Runnable;)V

    return-void

    :cond_31
    :goto_31
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->complete()V

    return-void
.end method

.method synthetic lambda$prepareFrame$0$io-nekohasekai-sagernet-ui-MorphDialog(Landroid/view/View;)V
    .registers 2

    .line 32
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->cancellable:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->outside:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->dismiss()V

    :cond_b
    return-void
.end method

.method synthetic lambda$run$1$io-nekohasekai-sagernet-ui-MorphDialog(FFFFFFLandroid/animation/ValueAnimator;)V
    .registers 11

    .line 51
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Float;

    invoke-virtual {p7}, Ljava/lang/Float;->floatValue()F

    move-result p7

    iput p7, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->progress:F

    invoke-direct {p0, p7}, Lio/nekohasekai/sagernet/ui/MorphDialog;->dim(F)V

    sub-float v0, p2, p1

    mul-float v0, v0, p7

    add-float/2addr p1, v0

    sub-float v0, p4, p3

    mul-float v0, v0, p7

    add-float/2addr p3, v0

    iget v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sw:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr p5, v0

    mul-float p5, p5, p7

    add-float/2addr v1, p5

    iget p5, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sh:I

    int-to-float v0, p5

    int-to-float p5, p5

    sub-float/2addr p6, p5

    mul-float p6, p6, p7

    add-float/2addr v0, p6

    iget-object p5, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    sub-float p2, p1, p2

    invoke-virtual {p5, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    sub-float p4, p3, p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p4

    const/4 p5, 0x0

    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p6

    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result p4

    iget p6, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelW:I

    if-ne p2, p6, :cond_64

    iget p6, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelH:I

    if-eq p4, p6, :cond_74

    :cond_64
    iput p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelW:I

    iput p4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelH:I

    iget-object p6, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelClip:Landroid/graphics/Rect;

    invoke-virtual {p6, p5, p5, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    iget-object p4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panelClip:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_74
    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->panel:Landroid/view/View;

    const p4, 0x3e4ccccd    # 0.2f

    sub-float/2addr p7, p4

    div-float/2addr p7, p4

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p4, p7}, Ljava/lang/Math;->min(FF)F

    move-result p6

    const/4 v2, 0x0

    invoke-static {v2, p6}, Ljava/lang/Math;->max(FF)F

    move-result p6

    invoke-virtual {p2, p6}, Landroid/view/View;->setAlpha(F)V

    iget p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sw:I

    int-to-float p2, p2

    div-float/2addr v1, p2

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setX(F)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setY(F)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sh:I

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->imageH:I

    if-eq p1, p2, :cond_c4

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->imageH:I

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->imageClip:Landroid/graphics/Rect;

    iget p3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->sw:I

    invoke-virtual {p2, p5, p5, p3, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->imageClip:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_c4
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->image:Landroid/widget/ImageView;

    sub-float p2, p4, p7

    invoke-static {p4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 77
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->cancellable:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public preserveParentPositions()V
    .registers 6

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->parentDialog:Landroid/app/Dialog;

    :goto_7
    if-eqz v1, :cond_34

    .line 65
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v3, -0xf1

    or-int/lit8 v3, v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_29
    instance-of v2, v1, Lio/nekohasekai/sagernet/ui/MorphDialog;

    if-eqz v2, :cond_32

    check-cast v1, Lio/nekohasekai/sagernet/ui/MorphDialog;

    iget-object v1, v1, Lio/nekohasekai/sagernet/ui/MorphDialog;->parentDialog:Landroid/app/Dialog;

    goto :goto_7

    :cond_32
    const/4 v1, 0x0

    goto :goto_7

    .line 66
    :cond_34
    new-instance v1, Lio/nekohasekai/sagernet/ui/MorphDialog$5;

    invoke-direct {v1, v0}, Lio/nekohasekai/sagernet/ui/MorphDialog$5;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    .line 39
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->cancellable:Z

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 2

    .line 40
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->outside:Z

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .registers 5

    .line 42
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->baseDim:F

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->prepareFrame()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    :cond_30
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    if-eqz v0, :cond_3c

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 44
    :cond_3c
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;->frame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ui/MorphDialog$1;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/MorphDialog$1;-><init>(Lio/nekohasekai/sagernet/ui/MorphDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_4c
    return-void
.end method
