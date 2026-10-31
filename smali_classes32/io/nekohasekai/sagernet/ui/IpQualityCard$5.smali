.class public final synthetic Lio/nekohasekai/sagernet/ui/IpQualityCard$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/IpQualityCard;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/IpQualityCard;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$5;->f$0:Lio/nekohasekai/sagernet/ui/IpQualityCard;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$5;->f$0:Lio/nekohasekai/sagernet/ui/IpQualityCard;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$5;->f$1:I

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->lambda$startQuery$5$io-nekohasekai-sagernet-ui-IpQualityCard(I)V

    return-void
.end method
