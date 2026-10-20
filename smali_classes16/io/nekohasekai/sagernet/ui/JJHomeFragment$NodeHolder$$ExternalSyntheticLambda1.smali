.class public final synthetic Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

.field public final synthetic f$1:Lio/nekohasekai/sagernet/database/ProxyEntity;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder$$ExternalSyntheticLambda1;->f$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder$$ExternalSyntheticLambda1;->f$1:Lio/nekohasekai/sagernet/database/ProxyEntity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder$$ExternalSyntheticLambda1;->f$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder$$ExternalSyntheticLambda1;->f$1:Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-static {v0, v1, p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->$r8$lambda$duWgRU3IKjpO1uU4T_JfCmL0220(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
