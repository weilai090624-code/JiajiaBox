.class public final Lcom/google/common/util/concurrent/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Monitor$Guard;
    }
.end annotation


# instance fields
.field private activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final fair:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;-><init>(Z)V

    .line 351
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "fair"    # Z

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 360
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    .line 361
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 362
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Monitor;

    .line 204
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1070
    if-eqz p2, :cond_5

    .line 1071
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1073
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1076
    :cond_8
    :try_start_8
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 1077
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_18

    if-eqz v0, :cond_8

    .line 1079
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1080
    nop

    .line 1081
    return-void

    .line 1079
    :catchall_18
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1080
    throw v0
.end method

.method private awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .registers 9
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "nanos"    # J
    .param p4, "signalBeforeWaiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1102
    const/4 v0, 0x1

    .line 1105
    .local v0, "firstTime":Z
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_f

    .line 1106
    nop

    .line 1119
    if-nez v0, :cond_d

    .line 1120
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1106
    :cond_d
    const/4 v1, 0x0

    return v1

    .line 1108
    :cond_f
    if-eqz v0, :cond_1a

    .line 1109
    if-eqz p4, :cond_16

    .line 1110
    :try_start_13
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1112
    :cond_16
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1113
    const/4 v0, 0x0

    .line 1115
    :cond_1a
    iget-object v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v1

    move-wide p2, v1

    .line 1116
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v1
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_2f

    if-eqz v1, :cond_1

    .line 1117
    nop

    .line 1119
    if-nez v0, :cond_2d

    .line 1120
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1117
    :cond_2d
    const/4 v1, 0x1

    return v1

    .line 1119
    :catchall_2f
    move-exception v1

    if-nez v0, :cond_35

    .line 1120
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1122
    :cond_35
    throw v1
.end method

.method private awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "signalBeforeWaiting"    # Z

    .line 1085
    if-eqz p2, :cond_5

    .line 1086
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1088
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1091
    :cond_8
    :try_start_8
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 1092
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_18

    if-eqz v0, :cond_8

    .line 1094
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1095
    nop

    .line 1096
    return-void

    .line 1094
    :catchall_18
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1095
    throw v0
.end method

.method private beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1034
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 1035
    .local v0, "waiters":I
    if-nez v0, :cond_e

    .line 1037
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1038
    iput-object p1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1040
    :cond_e
    return-void
.end method

.method private endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 6
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1045
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 1046
    .local v0, "waiters":I
    if-nez v0, :cond_20

    .line 1048
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v1, "p":Lcom/google/common/util/concurrent/Monitor$Guard;
    const/4 v2, 0x0

    .line 1049
    .local v2, "pred":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_b
    if-ne v1, p1, :cond_1c

    .line 1050
    if-nez v2, :cond_14

    .line 1051
    iget-object v3, v1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_18

    .line 1053
    :cond_14
    iget-object v3, v1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1055
    :goto_18
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1056
    goto :goto_20

    .line 1048
    :cond_1c
    move-object v2, v1

    iget-object v1, v1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_b

    .line 1060
    .end local v1    # "p":Lcom/google/common/util/concurrent/Monitor$Guard;
    .end local v2    # "pred":Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_20
    :goto_20
    return-void
.end method

.method private static initNanoTime(J)J
    .registers 7
    .param p0, "timeoutNanos"    # J

    .line 934
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_7

    .line 935
    return-wide v0

    .line 937
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 938
    .local v2, "startTime":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_12

    const-wide/16 v0, 0x1

    goto :goto_13

    :cond_12
    move-wide v0, v2

    :goto_13
    return-wide v0
.end method

.method private isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1016
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 1017
    :catchall_5
    move-exception v0

    .line 1018
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalAllWaiters()V

    .line 1019
    throw v0
.end method

.method private static remainingNanos(JJ)J
    .registers 7
    .param p0, "startTime"    # J
    .param p2, "timeoutNanos"    # J

    .line 954
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_7

    goto :goto_e

    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sub-long v0, p2, v0

    :goto_e
    return-wide v0
.end method

.method private signalAllWaiters()V
    .registers 3

    .line 1026
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v0, "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_2
    if-eqz v0, :cond_c

    .line 1027
    iget-object v1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1026
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_2

    .line 1029
    .end local v0    # "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_c
    return-void
.end method

.method private signalNextWaiter()V
    .registers 3

    .line 983
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .local v0, "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    :goto_2
    if-eqz v0, :cond_13

    .line 984
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;->isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 985
    iget-object v1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 986
    goto :goto_13

    .line 983
    :cond_10
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_2

    .line 989
    .end local v0    # "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_13
    :goto_13
    return-void
.end method

.method private static toSafeNanos(JLjava/util/concurrent/TimeUnit;)J
    .registers 11
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 925
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 926
    .local v6, "timeoutNanos":J
    const-wide/16 v2, 0x0

    const-wide v4, 0x5ffffffffffffffdL    # 2.6815615859885185E154

    move-wide v0, v6

    invoke-static/range {v0 .. v5}, Lcom/google/common/primitives/Longs;->constrainToRange(JJJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 367
    return-void
.end method

.method public enter(JLjava/util/concurrent/TimeUnit;)Z
    .registers 15
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 376
    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 377
    .local v0, "timeoutNanos":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 378
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v3, :cond_12

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 379
    const/4 v3, 0x1

    return v3

    .line 381
    :cond_12
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    .line 383
    .local v3, "interrupted":Z
    :try_start_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_33

    .line 384
    .local v4, "startTime":J
    move-wide v6, v0

    .line 386
    .local v6, "remainingNanos":J
    :goto_1b
    :try_start_1b
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_21} :catch_2b
    .catchall {:try_start_1b .. :try_end_21} :catchall_33

    .line 393
    if-eqz v3, :cond_2a

    .line 394
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 386
    :cond_2a
    return v8

    .line 387
    :catch_2b
    move-exception v8

    .line 388
    .local v8, "interrupt":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    .line 389
    :try_start_2d
    invoke-static {v4, v5, v0, v1}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v9
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_33

    move-wide v6, v9

    .line 390
    .end local v8    # "interrupt":Ljava/lang/InterruptedException;
    goto :goto_1b

    .line 393
    .end local v4    # "startTime":J
    .end local v6    # "remainingNanos":J
    :catchall_33
    move-exception v4

    if-eqz v3, :cond_3d

    .line 394
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 396
    :cond_3d
    throw v4
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 612
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1c

    .line 615
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 616
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 618
    const/4 v1, 0x0

    .line 620
    .local v1, "satisfied":Z
    :try_start_a
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    move v1, v2

    .line 622
    if-nez v1, :cond_14

    .line 623
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 620
    :cond_14
    return v2

    .line 622
    :catchall_15
    move-exception v2

    if-nez v1, :cond_1b

    .line 623
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 625
    :cond_1b
    throw v2

    .line 613
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_1c
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 636
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_23

    .line 639
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->enter(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 640
    const/4 v0, 0x0

    return v0

    .line 643
    :cond_c
    const/4 v0, 0x0

    .line 645
    .local v0, "satisfied":Z
    :try_start_d
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_1a

    move v0, v1

    .line 647
    if-nez v0, :cond_19

    .line 648
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 645
    :cond_19
    return v1

    .line 647
    :catchall_1a
    move-exception v1

    if-nez v0, :cond_22

    .line 648
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 650
    :cond_22
    throw v1

    .line 637
    .end local v0    # "satisfied":Z
    :cond_23
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 661
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1c

    .line 664
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 665
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 667
    const/4 v1, 0x0

    .line 669
    .local v1, "satisfied":Z
    :try_start_a
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    move v1, v2

    .line 671
    if-nez v1, :cond_14

    .line 672
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 669
    :cond_14
    return v2

    .line 671
    :catchall_15
    move-exception v2

    if-nez v1, :cond_1b

    .line 672
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 674
    :cond_1b
    throw v2

    .line 662
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_1c
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 686
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_21

    .line 689
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 690
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 691
    const/4 v1, 0x0

    return v1

    .line 694
    :cond_e
    const/4 v1, 0x0

    .line 696
    .local v1, "satisfied":Z
    :try_start_f
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1a

    move v1, v2

    .line 698
    if-nez v1, :cond_19

    .line 699
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 696
    :cond_19
    return v2

    .line 698
    :catchall_1a
    move-exception v2

    if-nez v1, :cond_20

    .line 699
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 701
    :cond_20
    throw v2

    .line 687
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_21
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterInterruptibly()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 406
    return-void
.end method

.method public enterInterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 6
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 436
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_25

    .line 439
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 440
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 441
    .local v1, "signalBeforeWaiting":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 443
    const/4 v2, 0x0

    .line 445
    .local v2, "satisfied":Z
    :try_start_e
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_17

    .line 446
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1e

    .line 448
    :cond_17
    const/4 v2, 0x1

    .line 450
    if-nez v2, :cond_1d

    .line 451
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 454
    :cond_1d
    return-void

    .line 450
    :catchall_1e
    move-exception v3

    if-nez v2, :cond_24

    .line 451
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 453
    :cond_24
    throw v3

    .line 437
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "signalBeforeWaiting":Z
    .end local v2    # "satisfied":Z
    :cond_25
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 22
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 466
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p2 .. p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 467
    .local v3, "timeoutNanos":J
    iget-object v0, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, v1, :cond_8c

    .line 470
    iget-object v5, v1, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 471
    .local v5, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v6

    .line 472
    .local v6, "reentrant":Z
    const-wide/16 v7, 0x0

    .line 476
    .local v7, "startTime":J
    iget-boolean v0, v1, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    const/4 v9, 0x0

    if-nez v0, :cond_30

    .line 478
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 481
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 482
    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    goto :goto_3f

    .line 479
    :cond_2a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 485
    :cond_30
    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v7

    .line 486
    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    invoke-virtual {v5, v10, v11, v12}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 487
    return v9

    .line 491
    :cond_3f
    :goto_3f
    const/4 v13, 0x0

    .line 492
    .local v13, "satisfied":Z
    const/4 v14, 0x1

    .line 494
    .local v14, "threw":Z
    nop

    .line 495
    :try_start_42
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 498
    const-wide/16 v15, 0x0

    cmp-long v0, v7, v15

    if-nez v0, :cond_50

    move-wide v9, v3

    goto :goto_55

    :cond_50
    invoke-static {v7, v8, v3, v4}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v15

    move-wide v9, v15

    .line 496
    :goto_55
    invoke-direct {v1, v2, v9, v10, v6}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v9
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_76

    if-eqz v9, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 v9, 0x0

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 v9, 0x1

    .line 500
    .end local v13    # "satisfied":Z
    .local v9, "satisfied":Z
    :goto_5f
    const/4 v10, 0x0

    .line 501
    .end local v14    # "threw":Z
    .local v10, "threw":Z
    nop

    .line 503
    if-nez v9, :cond_75

    .line 506
    if-eqz v10, :cond_71

    if-nez v6, :cond_71

    .line 507
    :try_start_67
    invoke-direct/range {p0 .. p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_71

    .line 510
    :catchall_6b
    move-exception v0

    move-object v11, v0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 511
    throw v11

    .line 510
    :cond_71
    :goto_71
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 511
    nop

    .line 501
    :cond_75
    return v9

    .line 503
    .end local v9    # "satisfied":Z
    .end local v10    # "threw":Z
    .restart local v13    # "satisfied":Z
    .restart local v14    # "threw":Z
    :catchall_76
    move-exception v0

    if-nez v13, :cond_8b

    .line 506
    if-eqz v14, :cond_87

    if-nez v6, :cond_87

    .line 507
    :try_start_7d
    invoke-direct/range {p0 .. p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_87

    .line 510
    :catchall_81
    move-exception v0

    move-object v9, v0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 511
    throw v9

    .line 510
    :cond_87
    :goto_87
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 511
    nop

    .line 513
    :cond_8b
    throw v0

    .line 468
    .end local v5    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "reentrant":Z
    .end local v7    # "startTime":J
    .end local v13    # "satisfied":Z
    .end local v14    # "threw":Z
    :cond_8c
    move-object/from16 v12, p4

    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 6
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 518
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_25

    .line 521
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 522
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 523
    .local v1, "signalBeforeWaiting":Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 525
    const/4 v2, 0x0

    .line 527
    .local v2, "satisfied":Z
    :try_start_e
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_17

    .line 528
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1e

    .line 530
    :cond_17
    const/4 v2, 0x1

    .line 532
    if-nez v2, :cond_1d

    .line 533
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 536
    :cond_1d
    return-void

    .line 532
    :catchall_1e
    move-exception v3

    if-nez v2, :cond_24

    .line 533
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 535
    :cond_24
    throw v3

    .line 519
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "signalBeforeWaiting":Z
    .end local v2    # "satisfied":Z
    :cond_25
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 19
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 546
    move-object v1, p0

    move-object v2, p1

    invoke-static/range {p2 .. p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 547
    .local v3, "timeoutNanos":J
    iget-object v0, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, v1, :cond_88

    .line 550
    iget-object v5, v1, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 551
    .local v5, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const-wide/16 v6, 0x0

    .line 552
    .local v6, "startTime":J
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v8

    .line 553
    .local v8, "signalBeforeWaiting":Z
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    .line 555
    .local v9, "interrupted":Z
    :try_start_16
    iget-boolean v0, v1, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v0, :cond_20

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 556
    :cond_20
    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v10
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_7d

    move-wide v6, v10

    .line 557
    move-wide v10, v3

    .line 559
    .local v10, "remainingNanos":J
    :goto_26
    :try_start_26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v10, v11, v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2c} :catch_75
    .catchall {:try_start_26 .. :try_end_2c} :catchall_7d

    if-eqz v0, :cond_69

    .line 560
    nop

    .line 571
    .end local v10    # "remainingNanos":J
    :cond_2f
    const/4 v12, 0x0

    .line 575
    .local v12, "satisfied":Z
    :goto_30
    :try_start_30
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 576
    const/4 v0, 0x1

    .end local v12    # "satisfied":Z
    .local v0, "satisfied":Z
    goto :goto_4d

    .line 579
    .end local v0    # "satisfied":Z
    .restart local v12    # "satisfied":Z
    :cond_38
    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-nez v0, :cond_45

    .line 580
    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v10

    move-wide v6, v10

    .line 581
    move-wide v10, v3

    .restart local v10    # "remainingNanos":J
    goto :goto_49

    .line 583
    .end local v10    # "remainingNanos":J
    :cond_45
    invoke-static {v6, v7, v3, v4}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v10

    .line 585
    .restart local v10    # "remainingNanos":J
    :goto_49
    invoke-direct {p0, p1, v10, v11, v8}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v0
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_4d} :catch_65
    .catchall {:try_start_30 .. :try_end_4d} :catchall_5d

    .line 587
    .end local v10    # "remainingNanos":J
    .end local v12    # "satisfied":Z
    .restart local v0    # "satisfied":Z
    :goto_4d
    nop

    .line 594
    if-nez v0, :cond_53

    .line 595
    :try_start_50
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_7d

    .line 599
    :cond_53
    if-eqz v9, :cond_5c

    .line 600
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 587
    :cond_5c
    return v0

    .line 594
    .end local v0    # "satisfied":Z
    .restart local v12    # "satisfied":Z
    :catchall_5d
    move-exception v0

    if-nez v12, :cond_63

    .line 595
    :try_start_60
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 597
    :cond_63
    nop

    .end local v3    # "timeoutNanos":J
    .end local v5    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "startTime":J
    .end local v8    # "signalBeforeWaiting":Z
    .end local v9    # "interrupted":Z
    .end local p1    # "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    .end local p2    # "time":J
    .end local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_7d

    .line 588
    .restart local v3    # "timeoutNanos":J
    .restart local v5    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "startTime":J
    .restart local v8    # "signalBeforeWaiting":Z
    .restart local v9    # "interrupted":Z
    .restart local p1    # "guard":Lcom/google/common/util/concurrent/Monitor$Guard;
    .restart local p2    # "time":J
    .restart local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    :catch_65
    move-exception v0

    .line 589
    .local v0, "interrupt":Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .line 590
    const/4 v8, 0x0

    .line 591
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    goto :goto_30

    .line 562
    .end local v12    # "satisfied":Z
    .restart local v10    # "remainingNanos":J
    :cond_69
    nop

    .line 599
    if-eqz v9, :cond_73

    .line 600
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 562
    :cond_73
    const/4 v0, 0x0

    return v0

    .line 564
    :catch_75
    move-exception v0

    .line 565
    .restart local v0    # "interrupt":Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .line 566
    :try_start_77
    invoke-static {v6, v7, v3, v4}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v12
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_7d

    move-wide v10, v12

    .line 567
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    goto :goto_26

    .line 599
    .end local v10    # "remainingNanos":J
    :catchall_7d
    move-exception v0

    if-eqz v9, :cond_87

    .line 600
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 602
    :cond_87
    throw v0

    .line 548
    .end local v5    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "startTime":J
    .end local v8    # "signalBeforeWaiting":Z
    .end local v9    # "interrupted":Z
    :cond_88
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public getOccupiedDepth()I
    .registers 2

    .line 858
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    return v0
.end method

.method public getQueueLength()I
    .registers 2

    .line 868
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I
    .registers 4
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 908
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_18

    .line 911
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 913
    :try_start_9
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_11

    .line 915
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 913
    return v0

    .line 915
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 916
    throw v0

    .line 909
    :cond_18
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public hasQueuedThread(Ljava/lang/Thread;)Z
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 888
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public hasQueuedThreads()Z
    .registers 2

    .line 878
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 3
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 898
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFair()Z
    .registers 2

    .line 834
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    return v0
.end method

.method public isOccupied()Z
    .registers 2

    .line 842
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isOccupiedByCurrentThread()Z
    .registers 2

    .line 850
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public leave()V
    .registers 4

    .line 821
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 824
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 825
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_11

    .line 828
    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 829
    nop

    .line 830
    return-void

    .line 828
    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 829
    throw v1
.end method

.method public tryEnter()Z
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public tryEnterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 713
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_21

    .line 716
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 717
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_e

    .line 718
    const/4 v1, 0x0

    return v1

    .line 721
    :cond_e
    const/4 v1, 0x0

    .line 723
    .local v1, "satisfied":Z
    :try_start_f
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1a

    move v1, v2

    .line 725
    if-nez v1, :cond_19

    .line 726
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 723
    :cond_19
    return v2

    .line 725
    :catchall_1a
    move-exception v2

    if-nez v1, :cond_20

    .line 726
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 728
    :cond_20
    throw v2

    .line 714
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "satisfied":Z
    :cond_21
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 738
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    const/4 v1, 0x1

    if-ne v0, p0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    .line 741
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 742
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 744
    :cond_1a
    return-void

    .line 739
    :cond_1b
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 10
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 755
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 756
    .local v0, "timeoutNanos":J
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    const/4 v3, 0x1

    if-ne v2, p0, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    iget-object v4, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_2d

    .line 759
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 760
    return v3

    .line 762
    :cond_1c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_27

    .line 765
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v2

    return v2

    .line 763
    :cond_27
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 757
    :cond_2d
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .registers 5
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 773
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    const/4 v1, 0x1

    if-ne v0, p0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    .line 776
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 777
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 779
    :cond_1a
    return-void

    .line 774
    :cond_1b
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .registers 19
    .param p1, "guard"    # Lcom/google/common/util/concurrent/Monitor$Guard;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 789
    move-object v1, p0

    move-object v2, p1

    invoke-static/range {p2 .. p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 790
    .local v3, "timeoutNanos":J
    iget-object v0, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    const/4 v5, 0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v6, v1, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v6

    and-int/2addr v0, v6

    if-eqz v0, :cond_61

    .line 793
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 794
    return v5

    .line 796
    :cond_1e
    const/4 v0, 0x1

    .line 797
    .local v0, "signalBeforeWaiting":Z
    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v6

    .line 798
    .local v6, "startTime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    .line 800
    .local v8, "interrupted":Z
    move-wide v9, v3

    move-wide v10, v9

    move v9, v8

    move v8, v0

    .line 802
    .end local v0    # "signalBeforeWaiting":Z
    .local v8, "signalBeforeWaiting":Z
    .local v9, "interrupted":Z
    .local v10, "remainingNanos":J
    :goto_2b
    :try_start_2b
    invoke-direct {p0, p1, v10, v11, v8}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v0
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2f} :catch_3b
    .catchall {:try_start_2b .. :try_end_2f} :catchall_39

    .line 813
    if-eqz v9, :cond_38

    .line 814
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 802
    :cond_38
    return v0

    .line 813
    .end local v10    # "remainingNanos":J
    :catchall_39
    move-exception v0

    goto :goto_57

    .line 803
    .restart local v10    # "remainingNanos":J
    :catch_3b
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 804
    .local v0, "interrupt":Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .line 805
    :try_start_3f
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v12
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_39

    if-eqz v12, :cond_50

    .line 806
    nop

    .line 813
    if-eqz v9, :cond_4f

    .line 814
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    .line 806
    :cond_4f
    return v5

    .line 808
    :cond_50
    const/4 v8, 0x0

    .line 809
    :try_start_51
    invoke-static {v6, v7, v3, v4}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v12
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_39

    move-wide v10, v12

    .line 810
    .end local v0    # "interrupt":Ljava/lang/InterruptedException;
    goto :goto_2b

    .line 813
    .end local v10    # "remainingNanos":J
    :goto_57
    if-eqz v9, :cond_60

    .line 814
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 816
    :cond_60
    throw v0

    .line 791
    .end local v6    # "startTime":J
    .end local v8    # "signalBeforeWaiting":Z
    .end local v9    # "interrupted":Z
    :cond_61
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
.end method
