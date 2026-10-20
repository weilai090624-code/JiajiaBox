.class public final Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;
.super Lio/nekohasekai/sagernet/database/SagerDatabase;
.source "SagerDatabase_Impl.java"


# instance fields
.field private volatile _proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

.field private volatile _proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

.field private volatile _ruleEntity:Lio/nekohasekai/sagernet/database/RuleEntity$Dao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;

    .line 29
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;

    .line 29
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 29
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$300(Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 29
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;

    .line 29
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 198
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase;->assertNotMainThread()V

    .line 199
    invoke-super {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 201
    .local v2, "_db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase;->beginTransaction()V

    .line 202
    const-string v3, "DELETE FROM `proxy_groups`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    const-string v3, "DELETE FROM `proxy_entities`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    const-string v3, "DELETE FROM `rules`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    invoke-super {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-super {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase;->endTransaction()V

    .line 208
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 209
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 213
    :cond_0
    return-void

    .line 207
    :catchall_0
    move-exception v3

    invoke-super {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase;->endTransaction()V

    .line 208
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 209
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 191
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 192
    .local v0, "_shadowTablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v2

    .line 193
    .local v1, "_viewTables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v2, Landroidx/room/InvalidationTracker;

    const-string v3, "proxy_entities"

    const-string v4, "rules"

    const-string v5, "proxy_groups"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .param p1, "config"    # Landroidx/room/DatabaseConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 39
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl$1;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl$1;-><init>(Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;I)V

    const-string v2, "3d3db9106a89d6f20ef3fde6e81dbaa9"

    const-string v3, "0167b54061df52bf94cefcc2b95c240e"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v0, "_openCallback":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v1

    .line 184
    .local v1, "_sqliteConfig":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    .line 185
    .local v2, "_helper":Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    return-object v2
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "autoMigrationSpecs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 236
    .local p1, "autoMigrationSpecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;Landroidx/room/migration/AutoMigrationSpec;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "_autoMigrations":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    new-instance v1, Lio/nekohasekai/sagernet/database/SagerDatabase_AutoMigration_3_4_Impl;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase_AutoMigration_3_4_Impl;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lio/nekohasekai/sagernet/database/SagerDatabase_AutoMigration_4_5_Impl;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase_AutoMigration_4_5_Impl;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lio/nekohasekai/sagernet/database/SagerDatabase_AutoMigration_5_6_Impl;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase_AutoMigration_5_6_Impl;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-object v0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 229
    .local v0, "_autoMigrationSpecsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v0, "_typeConvertersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;>;"
    const-class v1, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    invoke-static {}, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-class v1, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    invoke-static {}, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-class v1, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    invoke-static {}, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-object v0
.end method

.method public groupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;
    .locals 1

    .line 245
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    return-object v0

    .line 248
    :cond_0
    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    if-nez v0, :cond_1

    .line 250
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    .line 252
    :cond_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_proxyGroup:Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    monitor-exit p0

    return-object v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public proxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;
    .locals 1

    .line 259
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    return-object v0

    .line 262
    :cond_0
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    .line 266
    :cond_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_proxyEntity:Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    monitor-exit p0

    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;
    .locals 1

    .line 273
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_ruleEntity:Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_ruleEntity:Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    return-object v0

    .line 276
    :cond_0
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_ruleEntity:Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    if-nez v0, :cond_1

    .line 278
    new-instance v0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_ruleEntity:Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    .line 280
    :cond_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/SagerDatabase_Impl;->_ruleEntity:Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    monitor-exit p0

    return-object v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
