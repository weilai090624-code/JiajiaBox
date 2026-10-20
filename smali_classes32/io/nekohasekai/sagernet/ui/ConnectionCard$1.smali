.class Lio/nekohasekai/sagernet/ui/ConnectionCard$1;
.super Ljava/lang/Object;
.source "ConnectionCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConnectionCard;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

.field final synthetic val$generation:I

.field final synthetic val$problem:Ljava/lang/String;

.field final synthetic val$resolved:Ljava/util/Map;

.field final synthetic val$resultRows:Lio/nekohasekai/sagernet/ui/ConnectionRows;

.field final synthetic val$resultTypes:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;ILio/nekohasekai/sagernet/ui/ConnectionRows;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->val$generation:I

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->val$resultRows:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->val$resultTypes:Lorg/json/JSONObject;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->val$resolved:Ljava/util/Map;

    iput-object p6, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->val$problem:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 69
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->val$generation:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$800(Lio/nekohasekai/sagernet/ui/ConnectionCard;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_67

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # invokes: Lio/nekohasekai/sagernet/ui/ConnectionCard;->active()Z
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$900(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_67

    .line 70
    :cond_15
    invoke-static {}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->isMoving()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->isTransitioning(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_5b

    .line 71
    :cond_24
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # setter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;
    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$1002(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$1100(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->val$resultRows:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    # setter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$102(Lio/nekohasekai/sagernet/ui/ConnectionCard;Lio/nekohasekai/sagernet/ui/ConnectionRows;)Lio/nekohasekai/sagernet/ui/ConnectionRows;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->val$resultTypes:Lorg/json/JSONObject;

    if-nez v1, :cond_44

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_44
    # setter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->types:Lorg/json/JSONObject;
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$702(Lio/nekohasekai/sagernet/ui/ConnectionCard;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->val$resolved:Ljava/util/Map;

    # setter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->labels:Ljava/util/Map;
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$502(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->val$problem:Ljava/lang/String;

    # setter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$1302(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # invokes: Lio/nekohasekai/sagernet/ui/ConnectionCard;->render()V
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$1400(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V

    return-void

    .line 70
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$1200(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x50

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 69
    :cond_67
    :goto_67
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # setter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;
    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$1002(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$1100(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
