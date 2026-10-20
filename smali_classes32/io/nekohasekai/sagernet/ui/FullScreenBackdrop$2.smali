.class public final synthetic Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$2;->f$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .registers 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$2;->f$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->lambda$new$2$io-nekohasekai-sagernet-ui-FullScreenBackdrop()Z

    move-result v0

    return v0
.end method
