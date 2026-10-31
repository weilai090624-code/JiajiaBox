.class public final synthetic Lio/nekohasekai/sagernet/ui/IpQualityCard$7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/IpQualityCard;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/IpQualityCard;ILio/nekohasekai/sagernet/ui/IpQualityCard$Result;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$7;->f$0:Lio/nekohasekai/sagernet/ui/IpQualityCard;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$7;->f$1:I

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$7;->f$2:Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$7;->f$0:Lio/nekohasekai/sagernet/ui/IpQualityCard;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$7;->f$1:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$7;->f$2:Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->lambda$runQuery$6$io-nekohasekai-sagernet-ui-IpQualityCard(ILio/nekohasekai/sagernet/ui/IpQualityCard$Result;)V

    return-void
.end method
