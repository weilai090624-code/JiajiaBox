.class final Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;
.super Ljava/lang/Object;
.source "MotionWorkQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/MotionWorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Lease"
.end annotation


# instance fields
.field private released:Z

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/MotionWorkQueue;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;->this$0:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method close()V
    .registers 2

    .line 31
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;->released:Z

    if-eqz v0, :cond_5

    goto :goto_10

    :cond_5
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;->released:Z

    .line 33
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;->this$0:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    # getter for: Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->disposed:Z
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->access$000(Lio/nekohasekai/sagernet/ui/MotionWorkQueue;)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_10
    return-void

    .line 34
    :cond_11
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;->this$0:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    # operator-- for: Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->leases:I
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->access$110(Lio/nekohasekai/sagernet/ui/MotionWorkQueue;)I

    .line 35
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;->this$0:Lio/nekohasekai/sagernet/ui/MotionWorkQueue;

    # invokes: Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->signal()V
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->access$200(Lio/nekohasekai/sagernet/ui/MotionWorkQueue;)V

    return-void
.end method
