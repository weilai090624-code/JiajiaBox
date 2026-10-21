.class public final Lmoe/matsuri/nb4a/ui/RuleAssetsInstaller;
.super Ljava/lang/Object;
.source "RuleAssetsInstaller.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized install(Landroid/content/Context;Ljava/io/File;)V
    .registers 14

    const-class v0, Lmoe/matsuri/nb4a/ui/RuleAssetsInstaller;

    monitor-enter v0

    .line 11
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 12
    const-string v1, "geoip.db"

    const-string v2, "geosite.db"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    const/4 v4, 0x2

    if-ge v3, v4, :cond_c3

    aget-object v4, v1, v3

    .line 13
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_c5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_2c

    goto/16 :goto_b9

    .line 15
    :cond_2c
    nop

    .line 17
    const/4 v6, 0x0

    :try_start_2e
    const-string v7, ".tmp"

    invoke-static {v4, v7, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3c} :catch_9d
    .catchall {:try_start_2e .. :try_end_3c} :catchall_9b

    .line 19
    :try_start_3c
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_8f

    .line 20
    const v9, 0x8000

    :try_start_44
    new-array v9, v9, [B

    .line 22
    :goto_46
    invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_51

    invoke-virtual {v8, v9, v2, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_46

    .line 23
    :cond_51
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_85

    .line 24
    :try_start_58
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_8f

    if-eqz v7, :cond_60

    :try_start_5d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 25
    :cond_60
    invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_64} :catch_9d
    .catchall {:try_start_5d .. :try_end_64} :catchall_9b

    if-eqz v5, :cond_6c

    .line 29
    if-eqz v6, :cond_b9

    :goto_68
    :try_start_68
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_c5

    goto :goto_b9

    .line 25
    :cond_6c
    :try_start_6c
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot install "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_85} :catch_9d
    .catchall {:try_start_6c .. :try_end_85} :catchall_9b

    .line 18
    :catchall_85
    move-exception v5

    :try_start_86
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v8

    :try_start_8b
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8e
    throw v5
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception v5

    if-eqz v7, :cond_9a

    :try_start_92
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception v7

    :try_start_97
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    throw v5
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9b} :catch_9d
    .catchall {:try_start_97 .. :try_end_9b} :catchall_9b

    .line 29
    :catchall_9b
    move-exception p0

    goto :goto_bd

    .line 26
    :catch_9d
    move-exception v5

    .line 27
    :try_start_9e
    const-string v7, "RuleAssetsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b6
    .catchall {:try_start_9e .. :try_end_b6} :catchall_9b

    .line 29
    if-eqz v6, :cond_b9

    goto :goto_68

    .line 12
    :cond_b9
    :goto_b9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_10

    .line 29
    :goto_bd
    if-eqz v6, :cond_c2

    :try_start_bf
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 30
    :cond_c2
    throw p0
    :try_end_c3
    .catchall {:try_start_bf .. :try_end_c3} :catchall_c5

    .line 32
    :cond_c3
    monitor-exit v0

    return-void

    .line 10
    :catchall_c5
    move-exception p0

    monitor-exit v0

    throw p0
.end method
