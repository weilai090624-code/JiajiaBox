.class public final Lio/nekohasekai/sagernet/ui/MundoProbe;
.super Ljava/lang/Object;
.source "MundoProbe.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final SEEN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile err:Ljava/lang/Throwable;

.field private volatile ok:Z

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/MundoProbe;->SEEN:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/nekohasekai/sagernet/ui/MundoProbe;->port:I

    return-void
.end method

.method public static open(I)Z
    .registers 7

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 32
    sget-object v1, Lio/nekohasekai/sagernet/ui/MundoProbe;->SEEN:Ljava/util/Set;

    monitor-enter v1

    :try_start_7
    sget-object v2, Lio/nekohasekai/sagernet/ui/MundoProbe;->SEEN:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_98

    .line 33
    const/4 v1, 0x1

    if-eqz v2, :cond_50

    .line 34
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_21

    const/4 v3, 0x1

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    .line 35
    :goto_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "probe port="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " thread="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " main="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MundoCore;->diag(Ljava/lang/String;)V

    .line 37
    :cond_50
    new-instance v0, Lio/nekohasekai/sagernet/ui/MundoProbe;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/MundoProbe;-><init>(I)V

    .line 38
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "MundoProbe"

    invoke-direct {v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 40
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 41
    const-wide/16 v4, 0x2bc

    :try_start_64
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_69

    :catch_68
    move-exception v1

    .line 42
    :goto_69
    if-eqz v2, :cond_95

    iget-boolean v1, v0, Lio/nekohasekai/sagernet/ui/MundoProbe;->ok:Z

    if-nez v1, :cond_95

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/MundoProbe;->err:Ljava/lang/Throwable;

    if-eqz v1, :cond_95

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "probe port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " failed "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/MundoProbe;->err:Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MundoCore;->diag(Ljava/lang/String;)V

    .line 45
    :cond_95
    iget-boolean p0, v0, Lio/nekohasekai/sagernet/ui/MundoProbe;->ok:Z

    return p0

    .line 32
    :catchall_98
    move-exception p0

    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw p0
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 18
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 20
    :try_start_5
    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "127.0.0.1"

    iget v3, p0, Lio/nekohasekai/sagernet/ui/MundoProbe;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/MundoProbe;->ok:Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    goto :goto_1a

    .line 22
    :catchall_17
    move-exception v1

    .line 23
    :try_start_18
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/MundoProbe;->err:Ljava/lang/Throwable;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_21

    .line 25
    :goto_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_20

    :catchall_1e
    move-exception v0

    .line 26
    nop

    .line 27
    :goto_20
    return-void

    .line 25
    :catchall_21
    move-exception v1

    :try_start_22
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_27

    :catchall_26
    move-exception v0

    .line 26
    :goto_27
    throw v1
.end method
