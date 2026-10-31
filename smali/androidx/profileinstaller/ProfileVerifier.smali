.class public final Landroidx/profileinstaller/ProfileVerifier;
.super Ljava/lang/Object;
.source "ProfileVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;,
        Landroidx/profileinstaller/ProfileVerifier$Cache;,
        Landroidx/profileinstaller/ProfileVerifier$Api33Impl;
    }
.end annotation


# static fields
.field private static final CUR_PROFILES_BASE_DIR:Ljava/lang/String; = "/data/misc/profiles/cur/0/"

.field private static final PROFILE_FILE_NAME:Ljava/lang/String; = "primary.prof"

.field private static final PROFILE_INSTALLED_CACHE_FILE_NAME:Ljava/lang/String; = "profileInstalled"

.field private static final REF_PROFILES_BASE_DIR:Ljava/lang/String; = "/data/misc/profiles/ref/"

.field private static final SYNC_OBJ:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ProfileVerifier"

.field private static sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

.field private static final sFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v0

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static getCompilationStatusAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;",
            ">;"
        }
    .end annotation

    .line 341
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    return-object v0
.end method

.method private static getPackageLastUpdateTime(Landroid/content/Context;)J
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 321
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_15

    .line 322
    invoke-static {v0, p0}, Landroidx/profileinstaller/ProfileVerifier$Api33Impl;->getPackageInfo(Landroid/content/pm/PackageManager;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide v1

    .line 324
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide v1
.end method

.method private static setCompilationStatus(IZZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .registers 6
    .param p0, "resultCode"    # I
    .param p1, "hasReferenceProfile"    # Z
    .param p2, "hasCurrentProfile"    # Z
    .param p3, "hasEmbeddedProfile"    # Z

    .line 305
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;-><init>(IZZZ)V

    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 311
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    return-object v0
.end method

.method public static writeProfileVerification(Landroid/content/Context;)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/profileinstaller/ProfileVerifier;->writeProfileVerification(Landroid/content/Context;Z)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    return-object v0
.end method

.method static writeProfileVerification(Landroid/content/Context;Z)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceVerifyCurrentProfile"    # Z

    .line 130
    if-nez p1, :cond_9

    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    if-eqz v0, :cond_9

    .line 131
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    return-object v0

    .line 134
    :cond_9
    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    if-nez p1, :cond_16

    :try_start_e
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    if-eqz v0, :cond_16

    .line 137
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_45

    return-object v0

    .line 142
    :cond_16
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v6, "dexopt/baseline.prof"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_48
    .catchall {:try_start_1a .. :try_end_24} :catchall_45

    move-object v6, v0

    .line 143
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_25
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_37

    cmp-long v0, v7, v2

    if-lez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 144
    .local v0, "hasEmbeddedProfile":Z
    :goto_30
    if-eqz v6, :cond_35

    :try_start_32
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_48
    .catchall {:try_start_32 .. :try_end_35} :catchall_45

    .line 146
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_35
    move v6, v0

    goto :goto_4b

    .line 142
    .end local v0    # "hasEmbeddedProfile":Z
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_37
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_44

    :try_start_3b
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_44

    :catchall_3f
    move-exception v0

    move-object v8, v0

    :try_start_41
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "forceVerifyCurrentProfile":Z
    :cond_44
    :goto_44
    throw v7
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_48
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    .line 296
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "forceVerifyCurrentProfile":Z
    :catchall_45
    move-exception v0

    goto/16 :goto_140

    .line 144
    :catch_48
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    move v0, v6

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    .local v6, "hasEmbeddedProfile":Z
    :goto_4b
    :try_start_4b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v0, v7, :cond_138

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-ne v0, v7, :cond_59

    goto/16 :goto_138

    .line 162
    :cond_59
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/misc/profiles/ref/"

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "primary.prof"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 164
    .local v7, "referenceProfileFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 165
    .local v8, "referenceProfileSize":J
    nop

    .line 166
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7d

    cmp-long v0, v8, v2

    if-lez v0, :cond_7d

    const/4 v0, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    move v10, v0

    .line 169
    .local v10, "hasReferenceProfile":Z
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/misc/profiles/cur/0/"

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "primary.prof"

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v11, v0

    .line 171
    .local v11, "currentProfileFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 172
    .local v12, "currentProfileSize":J
    nop

    .line 173
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_9b
    .catchall {:try_start_4b .. :try_end_9b} :catchall_45

    if-eqz v0, :cond_a2

    cmp-long v0, v12, v2

    if-lez v0, :cond_a2

    const/4 v5, 0x1

    :cond_a2
    move v2, v5

    .line 179
    .local v2, "hasCurrentProfile":Z
    :try_start_a3
    invoke-static/range {p0 .. p0}, Landroidx/profileinstaller/ProfileVerifier;->getPackageLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v14
    :try_end_a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a3 .. :try_end_a7} :catch_12d
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_45

    move-wide/from16 v21, v14

    .line 187
    .local v21, "packageLastUpdateTime":J
    nop

    .line 190
    :try_start_aa
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "profileInstalled"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 191
    .local v3, "cacheFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 192
    .local v5, "currentCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_bb
    .catchall {:try_start_aa .. :try_end_bb} :catchall_45

    if-eqz v0, :cond_ce

    .line 194
    :try_start_bd
    invoke-static {v3}, Landroidx/profileinstaller/ProfileVerifier$Cache;->readFromFile(Ljava/io/File;)Landroidx/profileinstaller/ProfileVerifier$Cache;

    move-result-object v0
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c1} :catch_c3
    .catchall {:try_start_bd .. :try_end_c1} :catchall_45

    move-object v5, v0

    .line 202
    goto :goto_ce

    .line 195
    :catch_c3
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 196
    .restart local v0    # "e":Ljava/io/IOException;
    const/high16 v4, 0x20000

    :try_start_c8
    invoke-static {v4, v10, v2, v6}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    :cond_ce
    :goto_ce
    const/4 v0, 0x2

    if-eqz v5, :cond_df

    iget-wide v14, v5, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    cmp-long v16, v14, v21

    if-nez v16, :cond_df

    iget v14, v5, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v14, v0, :cond_dc

    goto :goto_df

    .line 237
    :cond_dc
    iget v14, v5, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .local v14, "resultCode":I
    goto :goto_ed

    .line 224
    .end local v14    # "resultCode":I
    :cond_df
    :goto_df
    if-nez v6, :cond_e4

    .line 225
    const/high16 v14, 0x50000

    .restart local v14    # "resultCode":I
    goto :goto_ed

    .line 226
    .end local v14    # "resultCode":I
    :cond_e4
    if-eqz v10, :cond_e8

    .line 227
    const/4 v14, 0x1

    .restart local v14    # "resultCode":I
    goto :goto_ed

    .line 228
    .end local v14    # "resultCode":I
    :cond_e8
    if-eqz v2, :cond_ec

    .line 229
    const/4 v14, 0x2

    .restart local v14    # "resultCode":I
    goto :goto_ed

    .line 231
    .end local v14    # "resultCode":I
    :cond_ec
    const/4 v14, 0x0

    .line 244
    .restart local v14    # "resultCode":I
    :goto_ed
    if-eqz p1, :cond_f4

    if-eqz v2, :cond_f4

    if-eq v14, v4, :cond_f4

    .line 246
    const/4 v14, 0x2

    .line 251
    :cond_f4
    if-eqz v5, :cond_106

    iget v15, v5, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v15, v0, :cond_106

    if-ne v14, v4, :cond_106

    .line 265
    move v0, v14

    .end local v14    # "resultCode":I
    .local v0, "resultCode":I
    iget-wide v14, v5, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    cmp-long v4, v8, v14

    if-gez v4, :cond_107

    .line 266
    const/4 v14, 0x3

    move v4, v14

    .end local v0    # "resultCode":I
    .restart local v14    # "resultCode":I
    goto :goto_108

    .line 251
    :cond_106
    move v0, v14

    .line 271
    .end local v14    # "resultCode":I
    .restart local v0    # "resultCode":I
    :cond_107
    move v4, v0

    .end local v0    # "resultCode":I
    .local v4, "resultCode":I
    :goto_108
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$Cache;

    const/4 v15, 0x1

    move-object v14, v0

    move/from16 v16, v4

    move-wide/from16 v17, v21

    move-wide/from16 v19, v12

    invoke-direct/range {v14 .. v20}, Landroidx/profileinstaller/ProfileVerifier$Cache;-><init>(IIJJ)V

    move-object v14, v0

    .line 280
    .local v14, "newCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    if-eqz v5, :cond_11e

    invoke-virtual {v5, v14}, Landroidx/profileinstaller/ProfileVerifier$Cache;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_11c
    .catchall {:try_start_c8 .. :try_end_11c} :catchall_45

    if-nez v0, :cond_127

    .line 282
    :cond_11e
    :try_start_11e
    invoke-virtual {v14, v3}, Landroidx/profileinstaller/ProfileVerifier$Cache;->writeOnFile(Ljava/io/File;)V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_122
    .catchall {:try_start_11e .. :try_end_121} :catchall_45

    .line 286
    goto :goto_127

    .line 283
    :catch_122
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 284
    .local v0, "e":Ljava/io/IOException;
    const/high16 v4, 0x30000

    .line 290
    .end local v0    # "e":Ljava/io/IOException;
    :cond_127
    :goto_127
    :try_start_127
    invoke-static {v4, v10, v2, v6}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 180
    .end local v3    # "cacheFile":Ljava/io/File;
    .end local v4    # "resultCode":I
    .end local v5    # "currentCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    .end local v14    # "newCache":Landroidx/profileinstaller/ProfileVerifier$Cache;
    .end local v21    # "packageLastUpdateTime":J
    :catch_12d
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 181
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/high16 v3, 0x10000

    invoke-static {v3, v10, v2, v6}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 151
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "hasCurrentProfile":Z
    .end local v7    # "referenceProfileFile":Ljava/io/File;
    .end local v8    # "referenceProfileSize":J
    .end local v10    # "hasReferenceProfile":Z
    .end local v11    # "currentProfileFile":Ljava/io/File;
    .end local v12    # "currentProfileSize":J
    :cond_138
    :goto_138
    const/high16 v0, 0x40000

    invoke-static {v0, v5, v5, v6}, Landroidx/profileinstaller/ProfileVerifier;->setCompilationStatus(IZZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 296
    .end local v6    # "hasEmbeddedProfile":Z
    :goto_140
    monitor-exit v1
    :try_end_141
    .catchall {:try_start_127 .. :try_end_141} :catchall_45

    throw v0
.end method
