.class public final synthetic Lio/nekohasekai/sagernet/ui/AiRoutingCard$3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;JLandroid/app/Dialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$3;->f$0:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    iput-wide p2, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$3;->f$1:J

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$3;->f$2:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$3;->f$0:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    iget-wide v1, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$3;->f$1:J

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$3;->f$2:Landroid/app/Dialog;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->lambda$showNodeDialog$8$io-nekohasekai-sagernet-ui-AiRoutingCard(JLandroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
