.class public final synthetic Lio/nekohasekai/sagernet/ui/MorphDialog$8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$8;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$8;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$8;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$8;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->lambda$finishParent$2(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    return-void
.end method
