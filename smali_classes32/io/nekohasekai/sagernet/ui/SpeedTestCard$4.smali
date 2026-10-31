.class public final synthetic Lio/nekohasekai/sagernet/ui/SpeedTestCard$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/SpeedTestCard;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$4;->f$0:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$4;->f$1:I

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$4;->f$0:Lio/nekohasekai/sagernet/ui/SpeedTestCard;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$4;->f$1:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$4;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->lambda$postStatus$6$io-nekohasekai-sagernet-ui-SpeedTestCard(ILjava/lang/String;)V

    return-void
.end method
