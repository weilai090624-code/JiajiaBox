.class public final synthetic Lio/nekohasekai/sagernet/ui/SpeedTestCard$8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

.field public final synthetic f$1:I

.field public final synthetic f$2:D

.field public final synthetic f$3:D


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/SpeedTestCard;IDD)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$8;->f$0:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$8;->f$1:I

    iput-wide p3, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$8;->f$2:D

    iput-wide p5, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$8;->f$3:D

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$8;->f$0:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$8;->f$1:I

    iget-wide v2, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$8;->f$2:D

    iget-wide v4, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$8;->f$3:D

    invoke-virtual/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->lambda$postLatency$7$io-nekohasekai-sagernet-ui-SpeedTestCard(IDD)V

    return-void
.end method
