.class Lio/nekohasekai/sagernet/ui/CloudUpdate$1;
.super Ljava/lang/Object;
.source "CloudUpdate.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/CloudUpdate;->onCreate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onActivityResumed$0()V
    .registers 0

    .line 41
    # invokes: Lio/nekohasekai/sagernet/ui/CloudUpdate;->deliver()V
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$700()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 39
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 45
    # getter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->owner:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2c

    # getter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->owner:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 p1, 0x0

    # setter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->resumed:Z
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$202(Z)Z

    # getter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->shown:Landroid/app/Dialog;
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$400()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    # getter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->shown:Landroid/app/Dialog;
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$400()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    # setter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->shown:Landroid/app/Dialog;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$402(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_26
    # setter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$502(Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    # setter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressText:Landroid/widget/TextView;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$602(Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_2c
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 42
    # getter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->owner:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_e

    const/4 p1, 0x0

    # setter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->resumed:Z
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$202(Z)Z

    :cond_e
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 41
    # invokes: Lio/nekohasekai/sagernet/ui/CloudUpdate;->isMain(Landroid/app/Activity;)Z
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$000(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->owner:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$102(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    # setter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->resumed:Z
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$202(Z)Z

    # getter for: Lio/nekohasekai/sagernet/ui/CloudUpdate;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->access$300()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/nekohasekai/sagernet/ui/CloudUpdate$1$0;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$1$0;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 44
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 40
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 43
    return-void
.end method
