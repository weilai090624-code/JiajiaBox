.class public final synthetic Lio/nekohasekai/sagernet/ui/AiRoutingCard$6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$6;->f$0:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$6;->f$1:Ljava/util/List;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$6;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$6;->f$0:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$6;->f$1:Ljava/util/List;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$6;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->lambda$choose$2$io-nekohasekai-sagernet-ui-AiRoutingCard(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
