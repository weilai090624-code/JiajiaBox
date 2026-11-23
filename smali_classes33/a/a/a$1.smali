.class La/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a;->onCreate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onActivityResumed$0()V
    .registers 0

    # invokes: La/a/a;->deliver()V
    invoke-static {}, La/a/a;->access$700()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    # getter for: La/a/a;->owner:Ljava/lang/ref/WeakReference;
    invoke-static {}, La/a/a;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2c

    # getter for: La/a/a;->owner:Ljava/lang/ref/WeakReference;
    invoke-static {}, La/a/a;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 p1, 0x0

    # setter for: La/a/a;->resumed:Z
    invoke-static {p1}, La/a/a;->access$202(Z)Z

    # getter for: La/a/a;->shown:Landroid/app/Dialog;
    invoke-static {}, La/a/a;->access$400()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    # getter for: La/a/a;->shown:Landroid/app/Dialog;
    invoke-static {}, La/a/a;->access$400()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    # setter for: La/a/a;->shown:Landroid/app/Dialog;
    invoke-static {v0}, La/a/a;->access$402(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_26
    # setter for: La/a/a;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, La/a/a;->access$502(Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    # setter for: La/a/a;->progressText:Landroid/widget/TextView;
    invoke-static {v0}, La/a/a;->access$602(Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_2c
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    # getter for: La/a/a;->owner:Ljava/lang/ref/WeakReference;
    invoke-static {}, La/a/a;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_e

    const/4 p1, 0x0

    # setter for: La/a/a;->resumed:Z
    invoke-static {p1}, La/a/a;->access$202(Z)Z

    :cond_e
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    # invokes: La/a/a;->isMain(Landroid/app/Activity;)Z
    invoke-static {p1}, La/a/a;->access$000(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: La/a/a;->owner:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, La/a/a;->access$102(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    # setter for: La/a/a;->resumed:Z
    invoke-static {p1}, La/a/a;->access$202(Z)Z

    # getter for: La/a/a;->MAIN:Landroid/os/Handler;
    invoke-static {}, La/a/a;->access$300()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, La/a/a$1$0;

    invoke-direct {v0}, La/a/a$1$0;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
