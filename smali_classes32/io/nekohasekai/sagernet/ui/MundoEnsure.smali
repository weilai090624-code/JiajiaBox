.class public final Lio/nekohasekai/sagernet/ui/MundoEnsure;
.super Ljava/lang/Object;
.source "MundoEnsure.java"


# static fields
.field private static final SALT:I

.field private static currentKey:Ljava/lang/String;

.field private static currentPort:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3ff

    and-long/2addr v0, v2

    long-to-int v1, v0

    sput v1, Lio/nekohasekai/sagernet/ui/MundoEnsure;->SALT:I

    .line 7
    const/4 v0, -0x1

    sput v0, Lio/nekohasekai/sagernet/ui/MundoEnsure;->currentPort:I

    .line 8
    const/4 v0, 0x0

    sput-object v0, Lio/nekohasekai/sagernet/ui/MundoEnsure;->currentKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensure(Ljava/util/Map;Ljava/lang/String;I)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 11
    invoke-static {}, Lio/nekohasekai/sagernet/ui/MundoCore;->lock()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 12
    if-eqz p1, :cond_22

    :try_start_7
    sget-object v0, Lio/nekohasekai/sagernet/ui/MundoEnsure;->currentKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget v0, Lio/nekohasekai/sagernet/ui/MundoEnsure;->currentPort:I

    if-lez v0, :cond_22

    sget v0, Lio/nekohasekai/sagernet/ui/MundoEnsure;->currentPort:I

    .line 13
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MundoCore;->portOpenPub(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 14
    sget p0, Lio/nekohasekai/sagernet/ui/MundoEnsure;->currentPort:I

    monitor-exit p2

    return p0

    .line 48
    :catchall_1f
    move-exception p0

    goto/16 :goto_11e

    .line 16
    :cond_22
    const/4 v0, 0x0

    if-nez p1, :cond_27

    const/4 v1, 0x0

    goto :goto_2b

    :cond_27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2b
    sget v2, Lio/nekohasekai/sagernet/ui/MundoEnsure;->SALT:I

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x3e8

    rem-int/2addr v1, v2

    const/16 v3, 0x55f0

    add-int/2addr v1, v3

    .line 17
    nop

    :goto_39
    if-ge v0, v2, :cond_4d

    .line 18
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/MundoCore;->portOpenPub(I)Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_4d

    .line 19
    :cond_42
    add-int/lit8 v1, v1, 0x1

    .line 20
    const/16 v4, 0x5dc0

    if-lt v1, v4, :cond_4a

    const/16 v1, 0x55f0

    .line 17
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 22
    :cond_4d
    :goto_4d
    invoke-static {p0, p1, v1}, Lio/nekohasekai/sagernet/ui/MundoCore;->buildSinglePub(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 23
    const/4 v0, -0x1

    if-nez p0, :cond_6c

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensure build failed key="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MundoCore;->diag(Ljava/lang/String;)V

    .line 25
    monitor-exit p2

    return v0

    .line 27
    :cond_6c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 28
    sget v4, Lio/nekohasekai/sagernet/ui/MundoEnsure;->currentPort:I

    if-lez v4, :cond_97

    .line 29
    const-string v4, ""

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/MundoCore;->startPub(Ljava/lang/String;)Z

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    .line 31
    :goto_80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_97

    sget v6, Lio/nekohasekai/sagernet/ui/MundoEnsure;->currentPort:I

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/MundoCore;->portOpenPub(I)Z

    move-result v6
    :try_end_8e
    .catchall {:try_start_7 .. :try_end_8e} :catchall_1f

    if-eqz v6, :cond_97

    .line 32
    const-wide/16 v6, 0x32

    :try_start_92
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_95
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_95} :catch_96
    .catchall {:try_start_92 .. :try_end_95} :catchall_1f

    goto :goto_80

    :catch_96
    move-exception v4

    .line 35
    :cond_97
    :try_start_97
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MundoCore;->startPub(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_bf

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensure start failed key="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " port="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MundoCore;->diag(Ljava/lang/String;)V

    .line 37
    monitor-exit p2

    return v0

    .line 39
    :cond_bf
    const-wide/16 v4, 0x1f40

    invoke-static {v1, v4, v5}, Lio/nekohasekai/sagernet/ui/MundoCore;->waitPortPub(IJ)Z

    move-result p0

    if-nez p0, :cond_e9

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensure wait failed key="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " port="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MundoCore;->diag(Ljava/lang/String;)V

    .line 41
    monitor-exit p2

    return v0

    .line 43
    :cond_e9
    sput v1, Lio/nekohasekai/sagernet/ui/MundoEnsure;->currentPort:I

    .line 44
    sput-object p1, Lio/nekohasekai/sagernet/ui/MundoEnsure;->currentKey:Ljava/lang/String;

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ensure key="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " fresh port="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " total_ms="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MundoCore;->diag(Ljava/lang/String;)V

    .line 47
    monitor-exit p2

    return v1

    .line 48
    :goto_11e
    monitor-exit p2
    :try_end_11f
    .catchall {:try_start_97 .. :try_end_11f} :catchall_1f

    throw p0
.end method
