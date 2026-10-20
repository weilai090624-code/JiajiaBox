.class public final synthetic Lio/nekohasekai/sagernet/ui/CloudUpdate$17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/CloudUpdate;"
    method = "lambda$message$8"
    proto = "(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$17;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$17;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->lambda$message$8(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
