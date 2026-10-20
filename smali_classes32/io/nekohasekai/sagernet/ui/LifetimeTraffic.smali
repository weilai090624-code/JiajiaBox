.class public final Lio/nekohasekai/sagernet/ui/LifetimeTraffic;
.super Ljava/lang/Object;
.source "LifetimeTraffic.java"


# static fields
.field private static volatile cachedTotal:J

.field private static dirty:Z

.field private static initialized:Z

.field private static volatile lastRead:J

.field private static previousDownload:J

.field private static previousUpload:J

.field private static final reading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static serviceTotal:J

.field private static session:Ljava/lang/Object;

.field private static final worker:Ljava/util/concurrent/ScheduledExecutorService;

.field private static writePending:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->reading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(JJ)J
    .registers 8

    .line 112
    const-wide v0, 0x7fffffffffffffffL

    sub-long v2, v0, p0

    cmp-long v2, v2, p2

    if-gez v2, :cond_c

    goto :goto_e

    :cond_c
    add-long v0, p0, p2

    :goto_e
    return-wide v0
.end method

.method public static cachedRead(Landroid/content/Context;)J
    .registers 7

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 30
    sget-wide v2, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->lastRead:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    sget-wide v2, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->lastRead:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2d

    :cond_15
    sget-object v0, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->reading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 32
    sget-object v0, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic$0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic$0;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 46
    :cond_2d
    sget-wide v0, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->cachedTotal:J

    return-wide v0
.end method

.method private static file(Landroid/content/Context;)Landroid/util/AtomicFile;
    .registers 4

    .line 108
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "jj-lifetime-proxy-traffic.bin"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static declared-synchronized flush(Landroid/content/Context;)V
    .registers 6

    const-class v0, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-boolean v1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->initialized:Z

    if-eqz v1, :cond_3b

    sget-boolean v1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->dirty:Z

    if-nez v1, :cond_c

    goto :goto_3b

    .line 81
    :cond_c
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->file(Landroid/content/Context;)Landroid/util/AtomicFile;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3d

    .line 82
    nop

    .line 84
    :try_start_11
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_2b
    .catchall {:try_start_11 .. :try_end_15} :catchall_3d

    .line 85
    :try_start_15
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    sget-wide v3, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->serviceTotal:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 87
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 88
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 89
    const/4 v2, 0x0

    sput-boolean v2, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->dirty:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_28} :catch_29
    .catchall {:try_start_15 .. :try_end_28} :catchall_3d

    .line 93
    goto :goto_39

    .line 90
    :catch_29
    move-exception v2

    goto :goto_2d

    :catch_2b
    move-exception v2

    const/4 v1, 0x0

    .line 91
    :goto_2d
    if-eqz v1, :cond_32

    :try_start_2f
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 92
    :cond_32
    const-string p0, "LifetimeTraffic"

    const-string v1, "Cannot save cumulative proxy traffic"

    invoke-static {p0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_3d

    .line 94
    :goto_39
    monitor-exit v0

    return-void

    .line 80
    :cond_3b
    :goto_3b
    monitor-exit v0

    return-void

    .line 79
    :catchall_3d
    move-exception p0

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method static synthetic lambda$cachedRead$0(Landroid/content/Context;)V
    .registers 9

    .line 35
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v4, "jj-lifetime-proxy-traffic.bin"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_16} :catch_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_38
    .catchall {:try_start_1 .. :try_end_16} :catchall_36

    .line 37
    :try_start_16
    sget-wide v2, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->cachedTotal:J

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sput-wide v2, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->cachedTotal:J
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2c

    .line 38
    :try_start_28
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2b} :catch_41
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_38
    .catchall {:try_start_28 .. :try_end_2b} :catchall_36

    goto :goto_42

    .line 35
    :catchall_2c
    move-exception p0

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v1

    :try_start_32
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw p0
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_36} :catch_41
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_38
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    .line 43
    :catchall_36
    move-exception p0

    goto :goto_4f

    .line 39
    :catch_38
    move-exception p0

    .line 40
    :try_start_39
    const-string v1, "LifetimeTraffic"

    const-string v2, "Cannot refresh cumulative proxy traffic"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 38
    :catch_41
    move-exception p0

    .line 41
    :goto_42
    nop

    .line 42
    :goto_43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->lastRead:J
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_36

    .line 43
    sget-object p0, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->reading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44
    return-void

    .line 43
    :goto_4f
    sget-object v1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->reading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0
.end method

.method static synthetic lambda$record$1(Landroid/content/Context;)V
    .registers 3

    .line 72
    const-class v0, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->writePending:Z

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 73
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->flush(Landroid/content/Context;)V

    .line 74
    return-void

    .line 72
    :catchall_b
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static declared-synchronized read(Landroid/content/Context;)J
    .registers 7

    const-class v0, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;

    monitor-enter v0

    .line 97
    const-wide/16 v1, 0x0

    :try_start_5
    new-instance v3, Ljava/io/DataInputStream;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->file(Landroid/content/Context;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_12} :catch_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_2b
    .catchall {:try_start_5 .. :try_end_12} :catchall_29

    .line 98
    :try_start_12
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1f

    .line 99
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1d} :catch_37
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_2b
    .catchall {:try_start_1a .. :try_end_1d} :catchall_29

    .line 98
    monitor-exit v0

    return-wide v4

    .line 97
    :catchall_1f
    move-exception p0

    :try_start_20
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v3

    :try_start_25
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    throw p0
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_29} :catch_37
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_2b
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 96
    :catchall_29
    move-exception p0

    goto :goto_35

    .line 101
    :catch_2b
    move-exception p0

    .line 102
    :try_start_2c
    const-string v3, "LifetimeTraffic"

    const-string v4, "Cannot read cumulative proxy traffic"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    .line 103
    monitor-exit v0

    return-wide v1

    .line 96
    :goto_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_29

    throw p0

    .line 99
    :catch_37
    move-exception p0

    .line 100
    monitor-exit v0

    return-wide v1
.end method

.method public static declared-synchronized record(Landroid/content/Context;Ljava/lang/Object;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .registers 14

    const-class v0, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-boolean v1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->initialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_10

    .line 51
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->read(Landroid/content/Context;)J

    move-result-wide v3

    sput-wide v3, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->serviceTotal:J

    .line 52
    sput-boolean v2, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->initialized:Z

    .line 54
    :cond_10
    invoke-virtual {p2}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getTxTotal()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 55
    invoke-virtual {p2}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getRxTotal()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 56
    sget-object p2, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->session:Ljava/lang/Object;

    if-eq p2, p1, :cond_2c

    .line 57
    sput-wide v5, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->previousUpload:J

    .line 58
    sput-wide v5, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->previousDownload:J

    .line 59
    sput-object p1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->session:Ljava/lang/Object;

    .line 61
    :cond_2c
    sget-wide p1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->previousUpload:J

    cmp-long p1, v3, p1

    if-ltz p1, :cond_37

    sget-wide p1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->previousUpload:J

    sub-long p1, v3, p1

    goto :goto_38

    :cond_37
    move-wide p1, v3

    .line 62
    :goto_38
    sget-wide v9, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->previousDownload:J

    cmp-long v1, v7, v9

    if-ltz v1, :cond_43

    sget-wide v9, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->previousDownload:J

    sub-long v9, v7, v9

    goto :goto_44

    :cond_43
    move-wide v9, v7

    .line 61
    :goto_44
    invoke-static {p1, p2, v9, v10}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->add(JJ)J

    move-result-wide p1

    .line 63
    sput-wide v3, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->previousUpload:J

    .line 64
    sput-wide v7, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->previousDownload:J
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_76

    .line 65
    cmp-long v1, p1, v5

    if-nez v1, :cond_52

    monitor-exit v0

    return-void

    .line 66
    :cond_52
    :try_start_52
    sget-wide v3, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->serviceTotal:J

    invoke-static {v3, v4, p1, p2}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->add(JJ)J

    move-result-wide p1

    sput-wide p1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->serviceTotal:J

    .line 67
    sput-boolean v2, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->dirty:Z

    .line 68
    sget-boolean p1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->writePending:Z

    if-nez p1, :cond_74

    .line 69
    sput-boolean v2, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->writePending:Z

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 71
    sget-object p1, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lio/nekohasekai/sagernet/ui/LifetimeTraffic$1;

    invoke-direct {p2, p0}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic$1;-><init>(Landroid/content/Context;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-interface {p1, p2, v1, v2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_74
    .catchall {:try_start_52 .. :try_end_74} :catchall_76

    .line 76
    :cond_74
    monitor-exit v0

    return-void

    .line 49
    :catchall_76
    move-exception p0

    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw p0
.end method
