.class public final synthetic Lio/nekohasekai/sagernet/ui/AiChooser$3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$3;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiChooser$3;->f$0:Landroid/view/View;

    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ui/AiChooser;->lambda$show$1(Landroid/view/View;Landroid/content/DialogInterface;)V

    return-void
.end method
