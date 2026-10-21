.class final Lio/nekohasekai/sagernet/ui/MotionWorkQueue;
.super Ljava/lang/Object;
.source "MotionWorkQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;
    }
.end annotation


# instance fields
.field private disposed:Z

.field private drawerMoving:Z

.field private leases:I

.field private final pending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final ready:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->pending:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->ready:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lio/nekohasekai/sagernet/ui/MotionWorkQueue;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->disposed:Z

    return p0
.end method

.method static synthetic access$110(Lio/nekohasekai/sagernet/ui/MotionWorkQueue;)I
    .registers 3

    .line 20
    iget v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->leases:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->leases:I

    return v0
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/MotionWorkQueue;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->signal()V

    return-void
.end method

.method private signal()V
    .registers 2

    .line 62
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->hasReadyWork()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->ready:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_b
    return-void
.end method


# virtual methods
.method begin()Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;
    .registers 2

    .line 39
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->disposed:Z

    if-nez v0, :cond_a

    iget v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->leases:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->leases:I

    :cond_a
    new-instance v0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;-><init>(Lio/nekohasekai/sagernet/ui/MotionWorkQueue;)V

    return-object v0
.end method

.method cancel(Ljava/lang/Object;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->pending:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method defer(Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .registers 6

    .line 47
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 48
    :cond_6
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->isMoving()Z

    move-result v0

    .line 49
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->pending:Ljava/util/Map;

    if-nez v0, :cond_12

    .line 48
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 49
    :cond_12
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method dispose()V
    .registers 2

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->disposed:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->pending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->leases:I

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->drawerMoving:Z

    return-void
.end method

.method drainOne()V
    .registers 4

    .line 55
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->hasReadyWork()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 56
    :cond_7
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->pending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 58
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->pending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :try_start_26
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2d

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->signal()V

    return-void

    :catchall_2d
    move-exception v0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->signal()V

    throw v0
.end method

.method drawerMoving(Z)V
    .registers 3

    .line 42
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->disposed:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->drawerMoving:Z

    if-ne v0, p1, :cond_9

    goto :goto_e

    .line 43
    :cond_9
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->drawerMoving:Z

    .line 44
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->signal()V

    :cond_e
    :goto_e
    return-void
.end method

.method hasReadyWork()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->disposed:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->isMoving()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->pending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method isMoving()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->disposed:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->drawerMoving:Z

    if-nez v0, :cond_c

    iget v0, p0, Lio/nekohasekai/sagernet/ui/MotionWorkQueue;->leases:I

    if-lez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
