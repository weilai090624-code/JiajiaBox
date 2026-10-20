.class public final Lio/nekohasekai/sagernet/ui/JJHomeFragment$GroupDeleteCancel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final dialog:Landroid/app/Dialog;

.field private final fragment:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method public constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Landroid/app/Dialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$GroupDeleteCancel;->fragment:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$GroupDeleteCancel;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$GroupDeleteCancel;->fragment:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    # invokes: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->showGroupSwitcher()V
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$showGroupSwitcher(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V

    :cond_11
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$GroupDeleteCancel;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
