.class public final Lcom/king/zxing/manager/BeepManager;
.super Ljava/lang/Object;
.source "BeepManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Ljava/io/Closeable;


# static fields
.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final context:Landroid/content/Context;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/king/zxing/manager/BeepManager;->context:Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/zxing/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 46
    invoke-direct {p0}, Lcom/king/zxing/manager/BeepManager;->updatePrefs()V

    .line 47
    return-void
.end method

.method private buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 78
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/king/zxing/R$raw;->zxl_beep:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    move-object v7, v1

    .line 79
    .local v7, "file":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 80
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 81
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 83
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-object v0

    .line 85
    .end local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 88
    const/4 v2, 0x0

    return-object v2
.end method

.method private declared-synchronized updatePrefs()V
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/king/zxing/manager/BeepManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/king/zxing/manager/BeepManager;->buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 61
    .end local p0    # "this":Lcom/king/zxing/manager/BeepManager;
    :cond_0
    iget-object v0, p0, Lcom/king/zxing/manager/BeepManager;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/king/zxing/manager/BeepManager;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/king/zxing/manager/BeepManager;->vibrator:Landroid/os/Vibrator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/king/zxing/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/king/zxing/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local p0    # "this":Lcom/king/zxing/manager/BeepManager;
    :cond_0
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/king/zxing/manager/BeepManager;->close()V

    .line 95
    invoke-direct {p0}, Lcom/king/zxing/manager/BeepManager;->updatePrefs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 93
    .end local p0    # "this":Lcom/king/zxing/manager/BeepManager;
    .end local p1    # "mp":Landroid/media/MediaPlayer;
    .end local p2    # "what":I
    .end local p3    # "extra":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized playBeepSoundAndVibrate()V
    .locals 3

    monitor-enter p0

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/king/zxing/manager/BeepManager;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/king/zxing/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/king/zxing/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 70
    .end local p0    # "this":Lcom/king/zxing/manager/BeepManager;
    :cond_0
    iget-boolean v0, p0, Lcom/king/zxing/manager/BeepManager;->vibrate:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/king/zxing/manager/BeepManager;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPlayBeep(Z)V
    .locals 0
    .param p1, "playBeep"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/king/zxing/manager/BeepManager;->playBeep:Z

    .line 55
    return-void
.end method

.method public setVibrate(Z)V
    .locals 0
    .param p1, "vibrate"    # Z

    .line 50
    iput-boolean p1, p0, Lcom/king/zxing/manager/BeepManager;->vibrate:Z

    .line 51
    return-void
.end method
