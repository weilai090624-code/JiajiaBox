.class public Landroidx/profileinstaller/DeviceProfileWriter;
.super Ljava/lang/Object;
.source "DeviceProfileWriter.java"


# instance fields
.field private final mApkName:Ljava/lang/String;

.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mCurProfile:Ljava/io/File;

.field private final mDesiredVersion:[B

.field private mDeviceSupportsAotProfile:Z

.field private final mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mProfile:[Landroidx/profileinstaller/DexProfileData;

.field private final mProfileMetaSourceLocation:Ljava/lang/String;

.field private final mProfileSourceLocation:Ljava/lang/String;

.field private mTranscodedProfile:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 9
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "diagnosticsCallback"    # Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
    .param p4, "apkName"    # Ljava/lang/String;
    .param p5, "profileSourceLocation"    # Ljava/lang/String;
    .param p6, "profileMetaSourceLocation"    # Ljava/lang/String;
    .param p7, "curProfile"    # Ljava/io/File;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    .line 100
    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mAssetManager:Landroid/content/res/AssetManager;

    .line 101
    iput-object p2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 102
    iput-object p3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 103
    iput-object p4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfileSourceLocation:Ljava/lang/String;

    .line 105
    iput-object p6, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfileMetaSourceLocation:Ljava/lang/String;

    .line 106
    iput-object p7, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/io/File;

    .line 107
    invoke-static {}, Landroidx/profileinstaller/DeviceProfileWriter;->desiredVersion()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDesiredVersion:[B

    .line 108
    return-void
.end method

.method private addMetadata([Landroidx/profileinstaller/DexProfileData;[B)Landroidx/profileinstaller/DeviceProfileWriter;
    .registers 7
    .param p1, "profile"    # [Landroidx/profileinstaller/DexProfileData;
    .param p2, "desiredVersion"    # [B

    .line 265
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfileMetaSourceLocation:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->openStreamFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_43
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_9} :catch_30

    .line 266
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_2a

    .line 267
    :try_start_b
    sget-object v2, Landroidx/profileinstaller/ProfileTranscoder;->MAGIC_PROFM:[B

    invoke-static {v1, v2}, Landroidx/profileinstaller/ProfileTranscoder;->readHeader(Ljava/io/InputStream;[B)[B

    move-result-object v2

    .line 268
    .local v2, "metaVersion":[B
    invoke-static {v1, v2, p2, p1}, Landroidx/profileinstaller/ProfileTranscoder;->readMeta(Ljava/io/InputStream;[B[B[Landroidx/profileinstaller/DexProfileData;)[Landroidx/profileinstaller/DexProfileData;

    move-result-object v3

    iput-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1e

    .line 274
    nop

    .line 276
    if-eqz v1, :cond_1d

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1d} :catch_43
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1d} :catch_30

    .line 274
    :cond_1d
    return-object p0

    .line 265
    .end local v2    # "metaVersion":[B
    :catchall_1e
    move-exception v2

    if-eqz v1, :cond_29

    :try_start_21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v3

    :try_start_26
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "profile":[Landroidx/profileinstaller/DexProfileData;
    .end local p2    # "desiredVersion":[B
    :cond_29
    :goto_29
    throw v2

    .line 276
    .restart local p1    # "profile":[Landroidx/profileinstaller/DexProfileData;
    .restart local p2    # "desiredVersion":[B
    :cond_2a
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2f} :catch_43
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_4b

    .line 281
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_30
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/IllegalStateException;
    iput-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 283
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/16 v3, 0x8

    invoke-interface {v2, v3, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_4c

    .line 279
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_3b
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v3, 0x7

    invoke-interface {v2, v3, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_4b

    .line 276
    :catch_43
    move-exception v1

    .line 277
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/16 v3, 0x9

    invoke-interface {v2, v3, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 284
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_4b
    :goto_4b
    nop

    .line 285
    :goto_4c
    return-object v0
.end method

.method private assertDeviceAllowsProfileInstallerAotWritesCalled()V
    .registers 3

    .line 149
    iget-boolean v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    if-eqz v0, :cond_5

    .line 153
    return-void

    .line 150
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static desiredVersion()[B
    .registers 3

    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    .line 381
    return-object v2

    .line 385
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_11

    .line 386
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->V015_S:[B

    return-object v0

    .line 389
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_24

    .line 405
    return-object v2

    .line 402
    :pswitch_17
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->V010_P:[B

    return-object v0

    .line 397
    :pswitch_1a
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->V009_O_MR1:[B

    return-object v0

    .line 395
    :pswitch_1d
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->V005_O:[B

    return-object v0

    .line 392
    :pswitch_20
    sget-object v0, Landroidx/profileinstaller/ProfileVersion;->V001_N:[B

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x18
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private getProfileInputStream(Landroid/content/res/AssetManager;)Ljava/io/InputStream;
    .registers 6
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "profileStream":Ljava/io/InputStream;
    :try_start_1
    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfileSourceLocation:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->openStreamFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 227
    :goto_8
    goto :goto_19

    .line 225
    :catch_9
    move-exception v1

    .line 226
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v3, 0x7

    invoke-interface {v2, v3, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_19

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v3, 0x6

    invoke-interface {v2, v3, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_8

    .line 228
    :goto_19
    return-object v0
.end method

.method private openStreamFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "profileStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 203
    .local v1, "descriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v2

    .line 210
    .end local v1    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    goto :goto_21

    .line 204
    :catch_b
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_21

    const-string v3, "compressed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 207
    iget-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onDiagnosticReceived(ILjava/lang/Object;)V

    .line 211
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "message":Ljava/lang/String;
    :cond_21
    :goto_21
    return-object v0
.end method

.method private readProfileInternal(Ljava/io/InputStream;)[Landroidx/profileinstaller/DexProfileData;
    .registers 7
    .param p1, "profileStream"    # Ljava/io/InputStream;

    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, "profile":[Landroidx/profileinstaller/DexProfileData;
    const/4 v1, 0x7

    :try_start_2
    sget-object v2, Landroidx/profileinstaller/ProfileTranscoder;->MAGIC_PROF:[B

    invoke-static {p1, v2}, Landroidx/profileinstaller/ProfileTranscoder;->readHeader(Ljava/io/InputStream;[B)[B

    move-result-object v2

    .line 241
    .local v2, "baselineVersion":[B
    iget-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Landroidx/profileinstaller/ProfileTranscoder;->readProfile(Ljava/io/InputStream;[BLjava/lang/String;)[Landroidx/profileinstaller/DexProfileData;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_28
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_e} :catch_1c
    .catchall {:try_start_2 .. :try_end_e} :catchall_1a

    move-object v0, v3

    .line 248
    .end local v2    # "baselineVersion":[B
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    .line 251
    :goto_12
    goto :goto_32

    .line 249
    :catch_13
    move-exception v2

    .line 250
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {v3, v1, v2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 252
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_32

    .line 247
    :catchall_1a
    move-exception v2

    goto :goto_33

    .line 244
    :catch_1c
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_1d
    iget-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 248
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :try_start_24
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_13

    goto :goto_12

    .line 242
    :catch_28
    move-exception v2

    .line 243
    .local v2, "e":Ljava/io/IOException;
    :try_start_29
    iget-object v3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {v3, v1, v2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_1a

    .line 248
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_2e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_13

    goto :goto_12

    .line 253
    :goto_32
    return-object v0

    .line 248
    :goto_33
    :try_start_33
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    .line 251
    goto :goto_3d

    .line 249
    :catch_37
    move-exception v3

    .line 250
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {v4, v1, v3}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 252
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3d
    throw v2
.end method

.method private static requiresMetadata()Z
    .registers 4

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    .line 412
    return v2

    .line 417
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v3, 0x1

    if-lt v0, v1, :cond_10

    .line 418
    return v3

    .line 421
    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_18

    .line 439
    return v2

    .line 436
    :pswitch_16
    return v2

    .line 427
    :pswitch_17
    return v3

    :pswitch_data_18
    .packed-switch 0x18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method private result(ILjava/lang/Object;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/profileinstaller/DeviceProfileWriter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroidx/profileinstaller/DeviceProfileWriter$$ExternalSyntheticLambda0;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method


# virtual methods
.method public deviceAllowsProfileInstallerAotWrites()Z
    .registers 5

    .line 114
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDesiredVersion:[B

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V

    .line 116
    return v1

    .line 125
    :cond_10
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_26

    .line 126
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_33

    .line 127
    invoke-direct {p0, v3, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V

    .line 128
    return v1

    .line 132
    :cond_26
    :try_start_26
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_32

    .line 133
    invoke-direct {p0, v3, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_31} :catch_37

    .line 134
    return v1

    .line 141
    :cond_32
    nop

    .line 144
    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    .line 145
    return v0

    .line 136
    :catch_37
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v3, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V

    .line 140
    return v1
.end method

.method synthetic lambda$result$0$androidx-profileinstaller-DeviceProfileWriter(ILjava/lang/Object;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {v0, p1, p2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    return-void
.end method

.method public read()Landroidx/profileinstaller/DeviceProfileWriter;
    .registers 4

    .line 171
    invoke-direct {p0}, Landroidx/profileinstaller/DeviceProfileWriter;->assertDeviceAllowsProfileInstallerAotWritesCalled()V

    .line 172
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDesiredVersion:[B

    if-nez v0, :cond_8

    .line 173
    return-object p0

    .line 176
    :cond_8
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-direct {p0, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->getProfileInputStream(Landroid/content/res/AssetManager;)Ljava/io/InputStream;

    move-result-object v0

    .line 177
    .local v0, "profileStream":Ljava/io/InputStream;
    if-eqz v0, :cond_16

    .line 178
    invoke-direct {p0, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->readProfileInternal(Ljava/io/InputStream;)[Landroidx/profileinstaller/DexProfileData;

    move-result-object v1

    iput-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 180
    :cond_16
    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    if-eqz v1, :cond_2b

    .line 181
    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 182
    .local v1, "profile":[Landroidx/profileinstaller/DexProfileData;
    invoke-static {}, Landroidx/profileinstaller/DeviceProfileWriter;->requiresMetadata()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 183
    iget-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDesiredVersion:[B

    invoke-direct {p0, v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->addMetadata([Landroidx/profileinstaller/DexProfileData;[B)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object v2

    .line 184
    .local v2, "profileWriter":Landroidx/profileinstaller/DeviceProfileWriter;
    if-eqz v2, :cond_2b

    return-object v2

    .line 187
    .end local v1    # "profile":[Landroidx/profileinstaller/DexProfileData;
    .end local v2    # "profileWriter":Landroidx/profileinstaller/DeviceProfileWriter;
    :cond_2b
    return-object p0
.end method

.method public transcodeIfNeeded()Landroidx/profileinstaller/DeviceProfileWriter;
    .registers 8

    .line 307
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 308
    .local v0, "profile":[Landroidx/profileinstaller/DexProfileData;
    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDesiredVersion:[B

    .line 309
    .local v1, "desiredVersion":[B
    if-eqz v0, :cond_50

    if-nez v1, :cond_9

    goto :goto_50

    .line 312
    :cond_9
    invoke-direct {p0}, Landroidx/profileinstaller/DeviceProfileWriter;->assertDeviceAllowsProfileInstallerAotWritesCalled()V

    .line 313
    const/4 v2, 0x0

    :try_start_d
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_45
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_12} :catch_3c

    .line 314
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_12
    invoke-static {v3, v1}, Landroidx/profileinstaller/ProfileTranscoder;->writeHeader(Ljava/io/OutputStream;[B)V

    .line 315
    invoke-static {v3, v1, v0}, Landroidx/profileinstaller/ProfileTranscoder;->transcodeAndWriteBody(Ljava/io/OutputStream;[B[Landroidx/profileinstaller/DexProfileData;)Z

    move-result v4

    .line 321
    .local v4, "success":Z
    if-nez v4, :cond_28

    .line 322
    iget-object v5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v6, 0x5

    invoke-interface {v5, v6, v2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 326
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_32

    .line 327
    nop

    .line 331
    :try_start_24
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_45
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_27} :catch_3c

    .line 327
    return-object p0

    .line 330
    :cond_28
    :try_start_28
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:[B
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_32

    .line 331
    .end local v4    # "success":Z
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_45
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_31} :catch_3c

    goto :goto_4c

    .line 313
    :catchall_32
    move-exception v4

    :try_start_33
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v5

    :try_start_38
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "profile":[Landroidx/profileinstaller/DexProfileData;
    .end local v1    # "desiredVersion":[B
    :goto_3b
    throw v4
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_45
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_3c} :catch_3c

    .line 333
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "profile":[Landroidx/profileinstaller/DexProfileData;
    .restart local v1    # "desiredVersion":[B
    :catch_3c
    move-exception v3

    .line 334
    .local v3, "e":Ljava/lang/IllegalStateException;
    iget-object v4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/16 v5, 0x8

    invoke-interface {v4, v5, v3}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    goto :goto_4d

    .line 331
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_45
    move-exception v3

    .line 332
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    const/4 v5, 0x7

    invoke-interface {v4, v5, v3}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 335
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4c
    nop

    .line 336
    :goto_4d
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 337
    return-object p0

    .line 310
    :cond_50
    :goto_50
    return-object p0
.end method

.method public write()Z
    .registers 10

    .line 347
    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:[B

    .line 348
    .local v0, "transcodedProfile":[B
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 349
    return v1

    .line 351
    :cond_6
    invoke-direct {p0}, Landroidx/profileinstaller/DeviceProfileWriter;->assertDeviceAllowsProfileInstallerAotWritesCalled()V

    .line 353
    const/4 v2, 0x0

    :try_start_a
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_6f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_69
    .catchall {:try_start_a .. :try_end_f} :catchall_67

    .line 354
    .local v3, "bis":Ljava/io/InputStream;
    :try_start_f
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_5d

    .line 355
    .local v4, "os":Ljava/io/FileOutputStream;
    :try_start_16
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_53

    .line 362
    .local v5, "channel":Ljava/nio/channels/FileChannel;
    :try_start_1a
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v6
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_47

    .line 364
    .local v6, "lock":Ljava/nio/channels/FileLock;
    :try_start_1e
    invoke-static {v3, v4, v6}, Landroidx/profileinstaller/Encoding;->writeAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/channels/FileLock;)V

    .line 365
    const/4 v7, 0x1

    invoke-direct {p0, v7, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_3b

    .line 366
    nop

    .line 367
    if-eqz v6, :cond_2b

    :try_start_28
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_47

    :cond_2b
    if-eqz v5, :cond_30

    :try_start_2d
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_53

    :cond_30
    :try_start_30
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_5d

    :try_start_33
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_36} :catch_6f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_69
    .catchall {:try_start_33 .. :try_end_36} :catchall_67

    .line 372
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:[B

    .line 373
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 366
    return v7

    .line 352
    :catchall_3b
    move-exception v7

    if-eqz v6, :cond_46

    :try_start_3e
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v8

    :try_start_43
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "transcodedProfile":[B
    .end local v3    # "bis":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "channel":Ljava/nio/channels/FileChannel;
    :cond_46
    :goto_46
    throw v7
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    .end local v6    # "lock":Ljava/nio/channels/FileLock;
    .restart local v0    # "transcodedProfile":[B
    .restart local v3    # "bis":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "channel":Ljava/nio/channels/FileChannel;
    :catchall_47
    move-exception v6

    if-eqz v5, :cond_52

    :try_start_4a
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v7

    :try_start_4f
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "transcodedProfile":[B
    .end local v3    # "bis":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    :cond_52
    :goto_52
    throw v6
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    .end local v5    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v0    # "transcodedProfile":[B
    .restart local v3    # "bis":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catchall_53
    move-exception v5

    :try_start_54
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v6

    :try_start_59
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "transcodedProfile":[B
    .end local v3    # "bis":Ljava/io/InputStream;
    :goto_5c
    throw v5
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "transcodedProfile":[B
    .restart local v3    # "bis":Ljava/io/InputStream;
    :catchall_5d
    move-exception v4

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v5

    :try_start_63
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "transcodedProfile":[B
    :goto_66
    throw v4
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_67} :catch_6f
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_69
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    .line 372
    .end local v3    # "bis":Ljava/io/InputStream;
    .restart local v0    # "transcodedProfile":[B
    :catchall_67
    move-exception v1

    goto :goto_7a

    .line 369
    :catch_69
    move-exception v3

    .line 370
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x7

    :try_start_6b
    invoke-direct {p0, v4, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_74

    .line 367
    :catch_6f
    move-exception v3

    .line 368
    .local v3, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x6

    invoke-direct {p0, v4, v3}, Landroidx/profileinstaller/DeviceProfileWriter;->result(ILjava/lang/Object;)V
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_67

    .line 372
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_74
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:[B

    .line 373
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 374
    nop

    .line 375
    return v1

    .line 372
    :goto_7a
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:[B

    .line 373
    iput-object v2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:[Landroidx/profileinstaller/DexProfileData;

    .line 374
    throw v1
.end method
