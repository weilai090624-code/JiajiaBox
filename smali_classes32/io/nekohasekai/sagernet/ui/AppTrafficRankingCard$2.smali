.class public final synthetic Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;Landroid/content/Context;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$2;->f$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$2;->f$1:Landroid/content/Context;

    iput p3, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$2;->f$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$2;->f$1:Landroid/content/Context;

    iget v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$2;->f$2:I

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->lambda$request$2$io-nekohasekai-sagernet-ui-AppTrafficRankingCard(Landroid/content/Context;I)V

    return-void
.end method
