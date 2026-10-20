.class public final Lio/nekohasekai/sagernet/ui/PopupBackdrop;
.super Ljava/lang/Object;
.source "PopupBackdrop.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;
    }
.end annotation


# static fields
.field private static final BIND_TAG:I = 0x7f0a0f50

.field private static final ROOT_TAG:I = 0x7f0a0f51


# instance fields
.field private layer:Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;

.field private final surface:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->surface:Landroid/view/View;

    return-void
.end method

.method private static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .line 19
    nop

    :goto_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_15

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_15

    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p0, :cond_13

    goto :goto_15

    :cond_13
    move-object p0, v0

    goto :goto_1

    :cond_15
    :goto_15
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1c

    check-cast p0, Landroid/app/Activity;

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public static bind(Landroid/view/View;)V
    .registers 3

    .line 15
    const v0, 0x7f0a0f50

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    return-void

    :cond_a
    new-instance v1, Lio/nekohasekai/sagernet/ui/PopupBackdrop;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v1, p0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 17
    :cond_1e
    return-void
.end method

.method static nativeStrength(Landroid/view/ViewGroup;)F
    .registers 3

    .line 61
    const v0, 0x7f0a0f51

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 62
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    check-cast p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;

    .line 63
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->nativeBlur:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->strength:I

    if-lez v0, :cond_1e

    iget p0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->strength:I

    int-to-float p0, p0

    const/high16 v0, 0x42400000    # 48.0f

    div-float v1, p0, v0

    :cond_1e
    return v1
.end method


# virtual methods
.method synthetic lambda$onViewAttachedToWindow$0$io-nekohasekai-sagernet-ui-PopupBackdrop()V
    .registers 5

    .line 22
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->surface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->layer:Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;

    if-eqz v0, :cond_d

    goto :goto_51

    :cond_d
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->surface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1a

    return-void

    .line 23
    :cond_1a
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->surface:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_2f

    goto :goto_50

    .line 24
    :cond_2f
    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0f51

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;

    if-eqz v3, :cond_3f

    check-cast v2, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;

    goto :goto_44

    :cond_3f
    new-instance v2, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;

    invoke-direct {v2, v0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;-><init>(Landroid/view/ViewGroup;)V

    .line 25
    :goto_44
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->acquire()Z

    move-result v3

    if-eqz v3, :cond_4f

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->layer:Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 26
    :cond_4f
    return-void

    .line 23
    :cond_50
    :goto_50
    return-void

    .line 22
    :cond_51
    :goto_51
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 21
    new-instance v0, Lio/nekohasekai/sagernet/ui/PopupBackdrop$0;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$0;-><init>(Lio/nekohasekai/sagernet/ui/PopupBackdrop;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 27
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->layer:Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->layer:Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->layer:Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/PopupBackdrop$Layer;->release()V

    :cond_c
    return-void
.end method
