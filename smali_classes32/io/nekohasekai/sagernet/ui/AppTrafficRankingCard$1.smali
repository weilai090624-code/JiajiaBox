.class Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;
.super Ljava/lang/Object;
.source "AppTrafficRankingCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

.field final synthetic val$error:Ljava/lang/String;

.field final synthetic val$generation:I

.field final synthetic val$names:Ljava/util/Map;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;ILjava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->val$generation:I

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->val$result:Ljava/util/List;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->val$names:Ljava/util/Map;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 93
    iget v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->val$generation:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    # getter for: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->epoch:I
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$200(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_44

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->active()Z
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$300(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_44

    .line 94
    :cond_14
    invoke-static {}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->isMoving()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->isTransitioning(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_38

    .line 95
    :cond_23
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    # getter for: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$400(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->val$result:Ljava/util/List;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->val$names:Ljava/util/Map;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->val$error:Ljava/lang/String;

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->render(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$600(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_38
    :goto_38
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    # getter for: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->main:Landroid/os/Handler;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$500(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x50

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 93
    :cond_44
    :goto_44
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$1;->this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    # getter for: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$400(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
