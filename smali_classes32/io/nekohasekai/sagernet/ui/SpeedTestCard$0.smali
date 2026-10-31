.class public final synthetic Lio/nekohasekai/sagernet/ui/SpeedTestCard$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

.field public final synthetic f$1:I

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/SpeedTestCard;ID)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$0;->f$0:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$0;->f$1:I

    iput-wide p3, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$0;->f$2:D

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$0;->f$0:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$0;->f$1:I

    iget-wide v2, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$0;->f$2:D

    invoke-virtual {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->lambda$postDownload$8$io-nekohasekai-sagernet-ui-SpeedTestCard(ID)V

    return-void
.end method
