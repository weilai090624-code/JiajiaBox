.class public final synthetic Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;"
    method = "lambda$new$2"
    proto = "(Landroid/content/DialogInterface;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$6;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$6;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->lambda$new$2$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel(Landroid/content/DialogInterface;)V

    return-void
.end method
