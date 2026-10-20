.class public final synthetic Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

.field public final synthetic f$2:Lio/nekohasekai/sagernet/database/ProxyGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1$$ExternalSyntheticLambda1;->f$1:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1$$ExternalSyntheticLambda1;->f$2:Lio/nekohasekai/sagernet/database/ProxyGroup;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1$$ExternalSyntheticLambda1;->f$1:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1$$ExternalSyntheticLambda1;->f$2:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-static {v0, v1, v2, p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$showGroupSwitcher$1;->$r8$lambda$RvxAunOYpAXsBo35T0WG3uqh6R4(Landroid/app/Dialog;Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyGroup;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
