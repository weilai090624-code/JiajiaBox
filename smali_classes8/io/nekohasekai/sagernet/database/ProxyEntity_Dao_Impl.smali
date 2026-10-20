.class public final Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;
.super Ljava/lang/Object;
.source "ProxyEntity_Dao_Impl.java"

# interfaces
.implements Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfProxyEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfProxyEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteByGroup:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfProxyEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 62
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$1;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__insertionAdapterOfProxyEntity:Landroidx/room/EntityInsertionAdapter;

    .line 122
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$2;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__deletionAdapterOfProxyEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 135
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$3;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__updateAdapterOfProxyEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 196
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$4;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$4;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    .line 204
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$5;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$5;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfDeleteByGroup:Landroidx/room/SharedSQLiteStatement;

    .line 212
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$6;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$6;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    .line 220
    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1048
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addProxy(Lio/nekohasekai/sagernet/database/ProxyEntity;)J
    .locals 3
    .param p1, "proxy"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proxy"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 225
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 227
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__insertionAdapterOfProxyEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 228
    .local v0, "_result":J
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    nop

    .line 231
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 229
    return-wide v0

    .line 231
    .end local v0    # "_result":J
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 232
    throw v0
.end method

.method public countByGroup(J)J
    .locals 6
    .param p1, "groupId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 833
    const-string v0, "SELECT COUNT(*) FROM proxy_entities WHERE groupId = ?"

    .line 834
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT COUNT(*) FROM proxy_entities WHERE groupId = ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 835
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 836
    .local v2, "_argIndex":I
    invoke-virtual {v1, v2, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 837
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 838
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 841
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 842
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v4, "_result":J
    goto :goto_0

    .line 844
    .end local v4    # "_result":J
    :cond_0
    const-wide/16 v4, 0x0

    .line 846
    .restart local v4    # "_result":J
    :goto_0
    nop

    .line 848
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 849
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 846
    return-wide v4

    .line 848
    .end local v4    # "_result":J
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 849
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 850
    throw v4
.end method

.method public deleteAll(J)I
    .locals 4
    .param p1, "groupId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 345
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfDeleteByGroup:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 346
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 347
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 349
    :try_start_0
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 352
    .local v2, "_result":I
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    nop

    .line 355
    :try_start_2
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfDeleteByGroup:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 353
    return v2

    .line 355
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 356
    nop

    .end local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    .end local v1    # "_argIndex":I
    .end local p1    # "groupId":J
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    .restart local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    .restart local v1    # "_argIndex":I
    .restart local p1    # "groupId":J
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfDeleteByGroup:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 359
    throw v2
.end method

.method public deleteByGroup(J)V
    .locals 4
    .param p1, "groupId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 326
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfDeleteByGroup:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 327
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 328
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 330
    :try_start_0
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 332
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 333
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :try_start_2
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 336
    nop

    .line 338
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfDeleteByGroup:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 339
    nop

    .line 340
    return-void

    .line 335
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 336
    nop

    .end local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    .end local v1    # "_argIndex":I
    .end local p1    # "groupId":J
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 338
    .restart local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    .restart local v1    # "_argIndex":I
    .restart local p1    # "groupId":J
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfDeleteByGroup:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 339
    throw v2
.end method

.method public deleteByGroup([J)V
    .locals 9
    .param p1, "groupId"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1025
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1026
    .local v0, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "DELETE FROM proxy_entities WHERE groupId in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    array-length v1, p1

    .line 1028
    .local v1, "_inputSize":I
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 1029
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    .local v2, "_sql":Ljava/lang/String;
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v2}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v3

    .line 1032
    .local v3, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v4, 0x1

    .line 1033
    .local v4, "_argIndex":I
    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-wide v7, p1, v6

    .line 1034
    .local v7, "_item":J
    invoke-interface {v3, v4, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 1035
    nop

    .end local v7    # "_item":J
    add-int/lit8 v4, v4, 0x1

    .line 1033
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1037
    :cond_0
    iget-object v5, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1039
    :try_start_0
    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 1040
    iget-object v5, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    iget-object v5, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1043
    nop

    .line 1044
    return-void

    .line 1042
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1043
    throw v5
.end method

.method public deleteById(J)I
    .locals 4
    .param p1, "proxyId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proxyId"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 306
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 307
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 308
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 310
    :try_start_0
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 312
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 313
    .local v2, "_result":I
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    nop

    .line 316
    :try_start_2
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 314
    return v2

    .line 316
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 317
    nop

    .end local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    .end local v1    # "_argIndex":I
    .end local p1    # "proxyId":J
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 319
    .restart local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    .restart local v1    # "_argIndex":I
    .restart local p1    # "proxyId":J
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 320
    throw v2
.end method

.method public deleteProxy(Lio/nekohasekai/sagernet/database/ProxyEntity;)I
    .locals 3
    .param p1, "proxy"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proxy"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "_total":I
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 253
    :try_start_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__deletionAdapterOfProxyEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    nop

    .line 257
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 255
    return v0

    .line 257
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 258
    throw v1
.end method

.method public deleteProxy(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proxies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;)I"
        }
    .end annotation

    .line 263
    .local p1, "proxies":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyEntity;>;"
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "_total":I
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 267
    :try_start_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__deletionAdapterOfProxyEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result v1

    add-int/2addr v0, v1

    .line 268
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    nop

    .line 271
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 269
    return v0

    .line 271
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 272
    throw v1
.end method

.method public getAll()Ljava/util/List;
    .locals 83
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation

    .line 381
    move-object/from16 v1, p0

    const-string v2, "select * from proxy_entities"

    .line 382
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "select * from proxy_entities"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 383
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 384
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 386
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 387
    .local v0, "_cursorIndexOfId":I
    const-string v5, "groupId"

    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 388
    .local v5, "_cursorIndexOfGroupId":I
    const-string v6, "type"

    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 389
    .local v6, "_cursorIndexOfType":I
    const-string v7, "userOrder"

    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 390
    .local v7, "_cursorIndexOfUserOrder":I
    const-string v8, "tx"

    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 391
    .local v8, "_cursorIndexOfTx":I
    const-string v9, "rx"

    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 392
    .local v9, "_cursorIndexOfRx":I
    const-string v10, "status"

    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 393
    .local v10, "_cursorIndexOfStatus":I
    const-string v11, "ping"

    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 394
    .local v11, "_cursorIndexOfPing":I
    const-string v12, "uuid"

    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 395
    .local v12, "_cursorIndexOfUuid":I
    const-string v13, "error"

    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 396
    .local v13, "_cursorIndexOfError":I
    const-string v14, "socksBean"

    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 397
    .local v14, "_cursorIndexOfSocksBean":I
    const-string v15, "httpBean"

    invoke-static {v3, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 398
    .local v15, "_cursorIndexOfHttpBean":I
    const-string v1, "ssBean"

    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 399
    .local v1, "_cursorIndexOfSsBean":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "vmessBean"

    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 400
    .local v2, "_cursorIndexOfVmessBean":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_2
    const-string v4, "trojanBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 401
    .local v4, "_cursorIndexOfTrojanBean":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfTrojanBean":I
    .local v18, "_cursorIndexOfTrojanBean":I
    const-string v4, "trojanGoBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 402
    .local v4, "_cursorIndexOfTrojanGoBean":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfTrojanGoBean":I
    .local v19, "_cursorIndexOfTrojanGoBean":I
    const-string v4, "mieruBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 403
    .local v4, "_cursorIndexOfMieruBean":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfMieruBean":I
    .local v20, "_cursorIndexOfMieruBean":I
    const-string v4, "naiveBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 404
    .local v4, "_cursorIndexOfNaiveBean":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfNaiveBean":I
    .local v21, "_cursorIndexOfNaiveBean":I
    const-string v4, "hysteriaBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 405
    .local v4, "_cursorIndexOfHysteriaBean":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfHysteriaBean":I
    .local v22, "_cursorIndexOfHysteriaBean":I
    const-string v4, "tuicBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 406
    .local v4, "_cursorIndexOfTuicBean":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfTuicBean":I
    .local v23, "_cursorIndexOfTuicBean":I
    const-string v4, "sshBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 407
    .local v4, "_cursorIndexOfSshBean":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfSshBean":I
    .local v24, "_cursorIndexOfSshBean":I
    const-string v4, "wgBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 408
    .local v4, "_cursorIndexOfWgBean":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfWgBean":I
    .local v25, "_cursorIndexOfWgBean":I
    const-string v4, "shadowTLSBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 409
    .local v4, "_cursorIndexOfShadowTLSBean":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfShadowTLSBean":I
    .local v26, "_cursorIndexOfShadowTLSBean":I
    const-string v4, "anyTLSBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 410
    .local v4, "_cursorIndexOfAnyTLSBean":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfAnyTLSBean":I
    .local v27, "_cursorIndexOfAnyTLSBean":I
    const-string v4, "chainBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 411
    .local v4, "_cursorIndexOfChainBean":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfChainBean":I
    .local v28, "_cursorIndexOfChainBean":I
    const-string v4, "nekoBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 412
    .local v4, "_cursorIndexOfNekoBean":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfNekoBean":I
    .local v29, "_cursorIndexOfNekoBean":I
    const-string v4, "configBean"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 413
    .local v4, "_cursorIndexOfConfigBean":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfConfigBean":I
    .local v30, "_cursorIndexOfConfigBean":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v31, v2

    .end local v2    # "_cursorIndexOfVmessBean":I
    .local v31, "_cursorIndexOfVmessBean":I
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 414
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyEntity;>;"
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 417
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 419
    .local v33, "_tmpId":J
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 421
    .local v35, "_tmpGroupId":J
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 423
    .local v37, "_tmpType":I
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 425
    .local v38, "_tmpUserOrder":J
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 427
    .local v40, "_tmpTx":J
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 429
    .local v42, "_tmpRx":J
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 431
    .local v44, "_tmpStatus":I
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 433
    .local v45, "_tmpPing":I
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 435
    .local v46, "_tmpUuid":Ljava/lang/String;
    invoke-interface {v3, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    const/4 v4, 0x0

    .local v4, "_tmpError":Ljava/lang/String;
    goto :goto_1

    .line 438
    .end local v4    # "_tmpError":Ljava/lang/String;
    :cond_0
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 442
    .restart local v4    # "_tmpError":Ljava/lang/String;
    :goto_1
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v65, v32

    .line 443
    .local v65, "_tmp":[B
    invoke-static/range {v65 .. v65}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->socksDeserialize([B)Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    move-result-object v48

    .line 446
    .local v48, "_tmpSocksBean":Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v66, v32

    .line 447
    .local v66, "_tmp_1":[B
    invoke-static/range {v66 .. v66}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->httpDeserialize([B)Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    move-result-object v49

    .line 450
    .local v49, "_tmpHttpBean":Lio/nekohasekai/sagernet/fmt/http/HttpBean;
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v67, v32

    .line 451
    .local v67, "_tmp_2":[B
    invoke-static/range {v67 .. v67}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->shadowsocksDeserialize([B)Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    move-result-object v50

    .line 454
    .local v50, "_tmpSsBean":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    move/from16 v68, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfVmessBean":I
    .local v0, "_cursorIndexOfVmessBean":I
    .local v68, "_cursorIndexOfId":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    .line 455
    .local v31, "_tmp_3":[B
    invoke-static/range {v31 .. v31}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->vmessDeserialize([B)Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v51

    .line 458
    .local v51, "_tmpVmessBean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    move/from16 v69, v0

    move/from16 v0, v18

    .end local v18    # "_cursorIndexOfTrojanBean":I
    .local v0, "_cursorIndexOfTrojanBean":I
    .local v69, "_cursorIndexOfVmessBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 459
    .local v18, "_tmp_4":[B
    invoke-static/range {v18 .. v18}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->trojanDeserialize([B)Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    move-result-object v52

    .line 462
    .local v52, "_tmpTrojanBean":Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    move/from16 v70, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfTrojanGoBean":I
    .local v0, "_cursorIndexOfTrojanGoBean":I
    .local v70, "_cursorIndexOfTrojanBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 463
    .local v19, "_tmp_5":[B
    invoke-static/range {v19 .. v19}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->trojanGoDeserialize([B)Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    move-result-object v53

    .line 466
    .local v53, "_tmpTrojanGoBean":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    move/from16 v71, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfMieruBean":I
    .local v0, "_cursorIndexOfMieruBean":I
    .local v71, "_cursorIndexOfTrojanGoBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    .line 467
    .local v20, "_tmp_6":[B
    invoke-static/range {v20 .. v20}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->mieruDeserialize([B)Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    move-result-object v54

    .line 470
    .local v54, "_tmpMieruBean":Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    move/from16 v72, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfNaiveBean":I
    .local v0, "_cursorIndexOfNaiveBean":I
    .local v72, "_cursorIndexOfMieruBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 471
    .local v21, "_tmp_7":[B
    invoke-static/range {v21 .. v21}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->naiveDeserialize([B)Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    move-result-object v55

    .line 474
    .local v55, "_tmpNaiveBean":Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    move/from16 v73, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfHysteriaBean":I
    .local v0, "_cursorIndexOfHysteriaBean":I
    .local v73, "_cursorIndexOfNaiveBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 475
    .local v22, "_tmp_8":[B
    invoke-static/range {v22 .. v22}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->hysteriaDeserialize([B)Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    move-result-object v56

    .line 478
    .local v56, "_tmpHysteriaBean":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    move/from16 v74, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfTuicBean":I
    .local v0, "_cursorIndexOfTuicBean":I
    .local v74, "_cursorIndexOfHysteriaBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v23

    .line 479
    .local v23, "_tmp_9":[B
    invoke-static/range {v23 .. v23}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->tuicDeserialize([B)Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    move-result-object v57

    .line 482
    .local v57, "_tmpTuicBean":Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    move/from16 v75, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfSshBean":I
    .local v0, "_cursorIndexOfSshBean":I
    .local v75, "_cursorIndexOfTuicBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 483
    .local v24, "_tmp_10":[B
    invoke-static/range {v24 .. v24}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->sshDeserialize([B)Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    move-result-object v58

    .line 486
    .local v58, "_tmpSshBean":Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;
    move/from16 v76, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfWgBean":I
    .local v0, "_cursorIndexOfWgBean":I
    .local v76, "_cursorIndexOfSshBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    .line 487
    .local v25, "_tmp_11":[B
    invoke-static/range {v25 .. v25}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->wireguardDeserialize([B)Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    move-result-object v59

    .line 490
    .local v59, "_tmpWgBean":Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    move/from16 v77, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfShadowTLSBean":I
    .local v0, "_cursorIndexOfShadowTLSBean":I
    .local v77, "_cursorIndexOfWgBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    .line 491
    .local v26, "_tmp_12":[B
    invoke-static/range {v26 .. v26}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->shadowTLSDeserialize([B)Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    move-result-object v60

    .line 494
    .local v60, "_tmpShadowTLSBean":Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    move/from16 v78, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfAnyTLSBean":I
    .local v0, "_cursorIndexOfAnyTLSBean":I
    .local v78, "_cursorIndexOfShadowTLSBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 495
    .local v27, "_tmp_13":[B
    invoke-static/range {v27 .. v27}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->anyTLSDeserialize([B)Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    move-result-object v61

    .line 498
    .local v61, "_tmpAnyTLSBean":Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    move/from16 v79, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfChainBean":I
    .local v0, "_cursorIndexOfChainBean":I
    .local v79, "_cursorIndexOfAnyTLSBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    .line 499
    .local v28, "_tmp_14":[B
    invoke-static/range {v28 .. v28}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->chainDeserialize([B)Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    move-result-object v62

    .line 502
    .local v62, "_tmpChainBean":Lio/nekohasekai/sagernet/fmt/internal/ChainBean;
    move/from16 v80, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfNekoBean":I
    .local v0, "_cursorIndexOfNekoBean":I
    .local v80, "_cursorIndexOfChainBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 503
    .local v29, "_tmp_15":[B
    invoke-static/range {v29 .. v29}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->nekoDeserialize([B)Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    move-result-object v63

    .line 506
    .local v63, "_tmpNekoBean":Lmoe/matsuri/nb4a/proxy/neko/NekoBean;
    move/from16 v81, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfConfigBean":I
    .local v0, "_cursorIndexOfConfigBean":I
    .local v81, "_cursorIndexOfNekoBean":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    .line 507
    .local v30, "_tmp_16":[B
    invoke-static/range {v30 .. v30}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->configDeserialize([B)Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    move-result-object v64

    .line 508
    .local v64, "_tmpConfigBean":Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    new-instance v82, Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-object/from16 v32, v82

    move-object/from16 v47, v4

    invoke-direct/range {v32 .. v64}, Lio/nekohasekai/sagernet/database/ProxyEntity;-><init>(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V

    move-object/from16 v32, v82

    .line 509
    .local v32, "_item":Lio/nekohasekai/sagernet/database/ProxyEntity;
    move/from16 v47, v0

    move-object/from16 v0, v32

    .end local v32    # "_item":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v0, "_item":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v47, "_cursorIndexOfConfigBean":I
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 510
    move/from16 v30, v47

    move/from16 v0, v68

    move/from16 v31, v69

    move/from16 v18, v70

    move/from16 v19, v71

    move/from16 v20, v72

    move/from16 v21, v73

    move/from16 v22, v74

    move/from16 v23, v75

    move/from16 v24, v76

    move/from16 v25, v77

    move/from16 v26, v78

    move/from16 v27, v79

    move/from16 v28, v80

    move/from16 v29, v81

    .end local v0    # "_item":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v4    # "_tmpError":Ljava/lang/String;
    .end local v18    # "_tmp_4":[B
    .end local v19    # "_tmp_5":[B
    .end local v20    # "_tmp_6":[B
    .end local v21    # "_tmp_7":[B
    .end local v22    # "_tmp_8":[B
    .end local v23    # "_tmp_9":[B
    .end local v24    # "_tmp_10":[B
    .end local v25    # "_tmp_11":[B
    .end local v26    # "_tmp_12":[B
    .end local v27    # "_tmp_13":[B
    .end local v28    # "_tmp_14":[B
    .end local v29    # "_tmp_15":[B
    .end local v30    # "_tmp_16":[B
    .end local v31    # "_tmp_3":[B
    .end local v33    # "_tmpId":J
    .end local v35    # "_tmpGroupId":J
    .end local v37    # "_tmpType":I
    .end local v38    # "_tmpUserOrder":J
    .end local v40    # "_tmpTx":J
    .end local v42    # "_tmpRx":J
    .end local v44    # "_tmpStatus":I
    .end local v45    # "_tmpPing":I
    .end local v46    # "_tmpUuid":Ljava/lang/String;
    .end local v48    # "_tmpSocksBean":Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    .end local v49    # "_tmpHttpBean":Lio/nekohasekai/sagernet/fmt/http/HttpBean;
    .end local v50    # "_tmpSsBean":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .end local v51    # "_tmpVmessBean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .end local v52    # "_tmpTrojanBean":Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    .end local v53    # "_tmpTrojanGoBean":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .end local v54    # "_tmpMieruBean":Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    .end local v55    # "_tmpNaiveBean":Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    .end local v56    # "_tmpHysteriaBean":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .end local v57    # "_tmpTuicBean":Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    .end local v58    # "_tmpSshBean":Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;
    .end local v59    # "_tmpWgBean":Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    .end local v60    # "_tmpShadowTLSBean":Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    .end local v61    # "_tmpAnyTLSBean":Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    .end local v62    # "_tmpChainBean":Lio/nekohasekai/sagernet/fmt/internal/ChainBean;
    .end local v63    # "_tmpNekoBean":Lmoe/matsuri/nb4a/proxy/neko/NekoBean;
    .end local v64    # "_tmpConfigBean":Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    .end local v65    # "_tmp":[B
    .end local v66    # "_tmp_1":[B
    .end local v67    # "_tmp_2":[B
    goto/16 :goto_0

    .line 511
    .end local v47    # "_cursorIndexOfConfigBean":I
    .end local v68    # "_cursorIndexOfId":I
    .end local v69    # "_cursorIndexOfVmessBean":I
    .end local v70    # "_cursorIndexOfTrojanBean":I
    .end local v71    # "_cursorIndexOfTrojanGoBean":I
    .end local v72    # "_cursorIndexOfMieruBean":I
    .end local v73    # "_cursorIndexOfNaiveBean":I
    .end local v74    # "_cursorIndexOfHysteriaBean":I
    .end local v75    # "_cursorIndexOfTuicBean":I
    .end local v76    # "_cursorIndexOfSshBean":I
    .end local v77    # "_cursorIndexOfWgBean":I
    .end local v78    # "_cursorIndexOfShadowTLSBean":I
    .end local v79    # "_cursorIndexOfAnyTLSBean":I
    .end local v80    # "_cursorIndexOfChainBean":I
    .end local v81    # "_cursorIndexOfNekoBean":I
    .local v0, "_cursorIndexOfId":I
    .local v18, "_cursorIndexOfTrojanBean":I
    .local v19, "_cursorIndexOfTrojanGoBean":I
    .local v20, "_cursorIndexOfMieruBean":I
    .local v21, "_cursorIndexOfNaiveBean":I
    .local v22, "_cursorIndexOfHysteriaBean":I
    .local v23, "_cursorIndexOfTuicBean":I
    .local v24, "_cursorIndexOfSshBean":I
    .local v25, "_cursorIndexOfWgBean":I
    .local v26, "_cursorIndexOfShadowTLSBean":I
    .local v27, "_cursorIndexOfAnyTLSBean":I
    .local v28, "_cursorIndexOfChainBean":I
    .local v29, "_cursorIndexOfNekoBean":I
    .local v30, "_cursorIndexOfConfigBean":I
    .local v31, "_cursorIndexOfVmessBean":I
    :cond_1
    nop

    .line 513
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 514
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 511
    return-object v2

    .line 513
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfSsBean":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyEntity;>;"
    .end local v5    # "_cursorIndexOfGroupId":I
    .end local v6    # "_cursorIndexOfType":I
    .end local v7    # "_cursorIndexOfUserOrder":I
    .end local v8    # "_cursorIndexOfTx":I
    .end local v9    # "_cursorIndexOfRx":I
    .end local v10    # "_cursorIndexOfStatus":I
    .end local v11    # "_cursorIndexOfPing":I
    .end local v12    # "_cursorIndexOfUuid":I
    .end local v13    # "_cursorIndexOfError":I
    .end local v14    # "_cursorIndexOfSocksBean":I
    .end local v15    # "_cursorIndexOfHttpBean":I
    .end local v18    # "_cursorIndexOfTrojanBean":I
    .end local v19    # "_cursorIndexOfTrojanGoBean":I
    .end local v20    # "_cursorIndexOfMieruBean":I
    .end local v21    # "_cursorIndexOfNaiveBean":I
    .end local v22    # "_cursorIndexOfHysteriaBean":I
    .end local v23    # "_cursorIndexOfTuicBean":I
    .end local v24    # "_cursorIndexOfSshBean":I
    .end local v25    # "_cursorIndexOfWgBean":I
    .end local v26    # "_cursorIndexOfShadowTLSBean":I
    .end local v27    # "_cursorIndexOfAnyTLSBean":I
    .end local v28    # "_cursorIndexOfChainBean":I
    .end local v29    # "_cursorIndexOfNekoBean":I
    .end local v30    # "_cursorIndexOfConfigBean":I
    .end local v31    # "_cursorIndexOfVmessBean":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 514
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 515
    throw v0
.end method

.method public getByGroup(J)Ljava/util/List;
    .locals 84
    .param p1, "groupId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation

    .line 542
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM proxy_entities WHERE groupId = ? ORDER BY userOrder"

    .line 543
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM proxy_entities WHERE groupId = ? ORDER BY userOrder"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 544
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v4, 0x1

    .line 545
    .local v4, "_argIndex":I
    move-wide/from16 v5, p1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 546
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 547
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v3, v7, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 549
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 550
    .local v0, "_cursorIndexOfId":I
    const-string v8, "groupId"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 551
    .local v8, "_cursorIndexOfGroupId":I
    const-string v9, "type"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 552
    .local v9, "_cursorIndexOfType":I
    const-string v10, "userOrder"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 553
    .local v10, "_cursorIndexOfUserOrder":I
    const-string v11, "tx"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 554
    .local v11, "_cursorIndexOfTx":I
    const-string v12, "rx"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 555
    .local v12, "_cursorIndexOfRx":I
    const-string v13, "status"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 556
    .local v13, "_cursorIndexOfStatus":I
    const-string v14, "ping"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 557
    .local v14, "_cursorIndexOfPing":I
    const-string v15, "uuid"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 558
    .local v15, "_cursorIndexOfUuid":I
    const-string v1, "error"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 559
    .local v1, "_cursorIndexOfError":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "socksBean"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 560
    .local v2, "_cursorIndexOfSocksBean":I
    move/from16 v17, v4

    .end local v4    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_2
    const-string v4, "httpBean"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 561
    .local v4, "_cursorIndexOfHttpBean":I
    const-string v5, "ssBean"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 562
    .local v5, "_cursorIndexOfSsBean":I
    const-string v6, "vmessBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 563
    .local v6, "_cursorIndexOfVmessBean":I
    move-object/from16 v18, v3

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string v3, "trojanBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 564
    .local v3, "_cursorIndexOfTrojanBean":I
    move/from16 v19, v3

    .end local v3    # "_cursorIndexOfTrojanBean":I
    .local v19, "_cursorIndexOfTrojanBean":I
    const-string v3, "trojanGoBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 565
    .local v3, "_cursorIndexOfTrojanGoBean":I
    move/from16 v20, v3

    .end local v3    # "_cursorIndexOfTrojanGoBean":I
    .local v20, "_cursorIndexOfTrojanGoBean":I
    const-string v3, "mieruBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 566
    .local v3, "_cursorIndexOfMieruBean":I
    move/from16 v21, v3

    .end local v3    # "_cursorIndexOfMieruBean":I
    .local v21, "_cursorIndexOfMieruBean":I
    const-string v3, "naiveBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 567
    .local v3, "_cursorIndexOfNaiveBean":I
    move/from16 v22, v3

    .end local v3    # "_cursorIndexOfNaiveBean":I
    .local v22, "_cursorIndexOfNaiveBean":I
    const-string v3, "hysteriaBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 568
    .local v3, "_cursorIndexOfHysteriaBean":I
    move/from16 v23, v3

    .end local v3    # "_cursorIndexOfHysteriaBean":I
    .local v23, "_cursorIndexOfHysteriaBean":I
    const-string v3, "tuicBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 569
    .local v3, "_cursorIndexOfTuicBean":I
    move/from16 v24, v3

    .end local v3    # "_cursorIndexOfTuicBean":I
    .local v24, "_cursorIndexOfTuicBean":I
    const-string v3, "sshBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 570
    .local v3, "_cursorIndexOfSshBean":I
    move/from16 v25, v3

    .end local v3    # "_cursorIndexOfSshBean":I
    .local v25, "_cursorIndexOfSshBean":I
    const-string v3, "wgBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 571
    .local v3, "_cursorIndexOfWgBean":I
    move/from16 v26, v3

    .end local v3    # "_cursorIndexOfWgBean":I
    .local v26, "_cursorIndexOfWgBean":I
    const-string v3, "shadowTLSBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 572
    .local v3, "_cursorIndexOfShadowTLSBean":I
    move/from16 v27, v3

    .end local v3    # "_cursorIndexOfShadowTLSBean":I
    .local v27, "_cursorIndexOfShadowTLSBean":I
    const-string v3, "anyTLSBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 573
    .local v3, "_cursorIndexOfAnyTLSBean":I
    move/from16 v28, v3

    .end local v3    # "_cursorIndexOfAnyTLSBean":I
    .local v28, "_cursorIndexOfAnyTLSBean":I
    const-string v3, "chainBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 574
    .local v3, "_cursorIndexOfChainBean":I
    move/from16 v29, v3

    .end local v3    # "_cursorIndexOfChainBean":I
    .local v29, "_cursorIndexOfChainBean":I
    const-string v3, "nekoBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 575
    .local v3, "_cursorIndexOfNekoBean":I
    move/from16 v30, v3

    .end local v3    # "_cursorIndexOfNekoBean":I
    .local v30, "_cursorIndexOfNekoBean":I
    const-string v3, "configBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 576
    .local v3, "_cursorIndexOfConfigBean":I
    move/from16 v31, v3

    .end local v3    # "_cursorIndexOfConfigBean":I
    .local v31, "_cursorIndexOfConfigBean":I
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v32, v6

    .end local v6    # "_cursorIndexOfVmessBean":I
    .local v32, "_cursorIndexOfVmessBean":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 577
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyEntity;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 580
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 582
    .local v34, "_tmpId":J
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 584
    .local v36, "_tmpGroupId":J
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 586
    .local v38, "_tmpType":I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 588
    .local v39, "_tmpUserOrder":J
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 590
    .local v41, "_tmpTx":J
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 592
    .local v43, "_tmpRx":J
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 594
    .local v45, "_tmpStatus":I
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 596
    .local v46, "_tmpPing":I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 598
    .local v47, "_tmpUuid":Ljava/lang/String;
    invoke-interface {v7, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 599
    const/4 v6, 0x0

    .local v6, "_tmpError":Ljava/lang/String;
    goto :goto_1

    .line 601
    .end local v6    # "_tmpError":Ljava/lang/String;
    :cond_0
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 605
    .restart local v6    # "_tmpError":Ljava/lang/String;
    :goto_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    move-object/from16 v66, v33

    .line 606
    .local v66, "_tmp":[B
    invoke-static/range {v66 .. v66}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->socksDeserialize([B)Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    move-result-object v49

    .line 609
    .local v49, "_tmpSocksBean":Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    move-object/from16 v67, v33

    .line 610
    .local v67, "_tmp_1":[B
    invoke-static/range {v67 .. v67}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->httpDeserialize([B)Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    move-result-object v50

    .line 613
    .local v50, "_tmpHttpBean":Lio/nekohasekai/sagernet/fmt/http/HttpBean;
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    move-object/from16 v68, v33

    .line 614
    .local v68, "_tmp_2":[B
    invoke-static/range {v68 .. v68}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->shadowsocksDeserialize([B)Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    move-result-object v51

    .line 617
    .local v51, "_tmpSsBean":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    move/from16 v69, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfVmessBean":I
    .local v0, "_cursorIndexOfVmessBean":I
    .local v69, "_cursorIndexOfId":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    .line 618
    .local v32, "_tmp_3":[B
    invoke-static/range {v32 .. v32}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->vmessDeserialize([B)Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v52

    .line 621
    .local v52, "_tmpVmessBean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    move/from16 v70, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfTrojanBean":I
    .local v0, "_cursorIndexOfTrojanBean":I
    .local v70, "_cursorIndexOfVmessBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 622
    .local v19, "_tmp_4":[B
    invoke-static/range {v19 .. v19}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->trojanDeserialize([B)Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    move-result-object v53

    .line 625
    .local v53, "_tmpTrojanBean":Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    move/from16 v71, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfTrojanGoBean":I
    .local v0, "_cursorIndexOfTrojanGoBean":I
    .local v71, "_cursorIndexOfTrojanBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    .line 626
    .local v20, "_tmp_5":[B
    invoke-static/range {v20 .. v20}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->trojanGoDeserialize([B)Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    move-result-object v54

    .line 629
    .local v54, "_tmpTrojanGoBean":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    move/from16 v72, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfMieruBean":I
    .local v0, "_cursorIndexOfMieruBean":I
    .local v72, "_cursorIndexOfTrojanGoBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 630
    .local v21, "_tmp_6":[B
    invoke-static/range {v21 .. v21}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->mieruDeserialize([B)Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    move-result-object v55

    .line 633
    .local v55, "_tmpMieruBean":Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    move/from16 v73, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfNaiveBean":I
    .local v0, "_cursorIndexOfNaiveBean":I
    .local v73, "_cursorIndexOfMieruBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 634
    .local v22, "_tmp_7":[B
    invoke-static/range {v22 .. v22}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->naiveDeserialize([B)Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    move-result-object v56

    .line 637
    .local v56, "_tmpNaiveBean":Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    move/from16 v74, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfHysteriaBean":I
    .local v0, "_cursorIndexOfHysteriaBean":I
    .local v74, "_cursorIndexOfNaiveBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v23

    .line 638
    .local v23, "_tmp_8":[B
    invoke-static/range {v23 .. v23}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->hysteriaDeserialize([B)Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    move-result-object v57

    .line 641
    .local v57, "_tmpHysteriaBean":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    move/from16 v75, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfTuicBean":I
    .local v0, "_cursorIndexOfTuicBean":I
    .local v75, "_cursorIndexOfHysteriaBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 642
    .local v24, "_tmp_9":[B
    invoke-static/range {v24 .. v24}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->tuicDeserialize([B)Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    move-result-object v58

    .line 645
    .local v58, "_tmpTuicBean":Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    move/from16 v76, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfSshBean":I
    .local v0, "_cursorIndexOfSshBean":I
    .local v76, "_cursorIndexOfTuicBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    .line 646
    .local v25, "_tmp_10":[B
    invoke-static/range {v25 .. v25}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->sshDeserialize([B)Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    move-result-object v59

    .line 649
    .local v59, "_tmpSshBean":Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;
    move/from16 v77, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfWgBean":I
    .local v0, "_cursorIndexOfWgBean":I
    .local v77, "_cursorIndexOfSshBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    .line 650
    .local v26, "_tmp_11":[B
    invoke-static/range {v26 .. v26}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->wireguardDeserialize([B)Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    move-result-object v60

    .line 653
    .local v60, "_tmpWgBean":Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    move/from16 v78, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfShadowTLSBean":I
    .local v0, "_cursorIndexOfShadowTLSBean":I
    .local v78, "_cursorIndexOfWgBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 654
    .local v27, "_tmp_12":[B
    invoke-static/range {v27 .. v27}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->shadowTLSDeserialize([B)Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    move-result-object v61

    .line 657
    .local v61, "_tmpShadowTLSBean":Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    move/from16 v79, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfAnyTLSBean":I
    .local v0, "_cursorIndexOfAnyTLSBean":I
    .local v79, "_cursorIndexOfShadowTLSBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    .line 658
    .local v28, "_tmp_13":[B
    invoke-static/range {v28 .. v28}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->anyTLSDeserialize([B)Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    move-result-object v62

    .line 661
    .local v62, "_tmpAnyTLSBean":Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    move/from16 v80, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfChainBean":I
    .local v0, "_cursorIndexOfChainBean":I
    .local v80, "_cursorIndexOfAnyTLSBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 662
    .local v29, "_tmp_14":[B
    invoke-static/range {v29 .. v29}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->chainDeserialize([B)Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    move-result-object v63

    .line 665
    .local v63, "_tmpChainBean":Lio/nekohasekai/sagernet/fmt/internal/ChainBean;
    move/from16 v81, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfNekoBean":I
    .local v0, "_cursorIndexOfNekoBean":I
    .local v81, "_cursorIndexOfChainBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    .line 666
    .local v30, "_tmp_15":[B
    invoke-static/range {v30 .. v30}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->nekoDeserialize([B)Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    move-result-object v64

    .line 669
    .local v64, "_tmpNekoBean":Lmoe/matsuri/nb4a/proxy/neko/NekoBean;
    move/from16 v82, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfConfigBean":I
    .local v0, "_cursorIndexOfConfigBean":I
    .local v82, "_cursorIndexOfNekoBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    .line 670
    .local v31, "_tmp_16":[B
    invoke-static/range {v31 .. v31}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->configDeserialize([B)Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    move-result-object v65

    .line 671
    .local v65, "_tmpConfigBean":Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    new-instance v83, Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-object/from16 v33, v83

    move-object/from16 v48, v6

    invoke-direct/range {v33 .. v65}, Lio/nekohasekai/sagernet/database/ProxyEntity;-><init>(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V

    move-object/from16 v33, v83

    .line 672
    .local v33, "_item":Lio/nekohasekai/sagernet/database/ProxyEntity;
    move/from16 v48, v0

    move-object/from16 v0, v33

    .end local v33    # "_item":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v0, "_item":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v48, "_cursorIndexOfConfigBean":I
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 673
    move/from16 v31, v48

    move/from16 v0, v69

    move/from16 v32, v70

    move/from16 v19, v71

    move/from16 v20, v72

    move/from16 v21, v73

    move/from16 v22, v74

    move/from16 v23, v75

    move/from16 v24, v76

    move/from16 v25, v77

    move/from16 v26, v78

    move/from16 v27, v79

    move/from16 v28, v80

    move/from16 v29, v81

    move/from16 v30, v82

    .end local v0    # "_item":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v6    # "_tmpError":Ljava/lang/String;
    .end local v19    # "_tmp_4":[B
    .end local v20    # "_tmp_5":[B
    .end local v21    # "_tmp_6":[B
    .end local v22    # "_tmp_7":[B
    .end local v23    # "_tmp_8":[B
    .end local v24    # "_tmp_9":[B
    .end local v25    # "_tmp_10":[B
    .end local v26    # "_tmp_11":[B
    .end local v27    # "_tmp_12":[B
    .end local v28    # "_tmp_13":[B
    .end local v29    # "_tmp_14":[B
    .end local v30    # "_tmp_15":[B
    .end local v31    # "_tmp_16":[B
    .end local v32    # "_tmp_3":[B
    .end local v34    # "_tmpId":J
    .end local v36    # "_tmpGroupId":J
    .end local v38    # "_tmpType":I
    .end local v39    # "_tmpUserOrder":J
    .end local v41    # "_tmpTx":J
    .end local v43    # "_tmpRx":J
    .end local v45    # "_tmpStatus":I
    .end local v46    # "_tmpPing":I
    .end local v47    # "_tmpUuid":Ljava/lang/String;
    .end local v49    # "_tmpSocksBean":Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    .end local v50    # "_tmpHttpBean":Lio/nekohasekai/sagernet/fmt/http/HttpBean;
    .end local v51    # "_tmpSsBean":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .end local v52    # "_tmpVmessBean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .end local v53    # "_tmpTrojanBean":Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    .end local v54    # "_tmpTrojanGoBean":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .end local v55    # "_tmpMieruBean":Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    .end local v56    # "_tmpNaiveBean":Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    .end local v57    # "_tmpHysteriaBean":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .end local v58    # "_tmpTuicBean":Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    .end local v59    # "_tmpSshBean":Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;
    .end local v60    # "_tmpWgBean":Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    .end local v61    # "_tmpShadowTLSBean":Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    .end local v62    # "_tmpAnyTLSBean":Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    .end local v63    # "_tmpChainBean":Lio/nekohasekai/sagernet/fmt/internal/ChainBean;
    .end local v64    # "_tmpNekoBean":Lmoe/matsuri/nb4a/proxy/neko/NekoBean;
    .end local v65    # "_tmpConfigBean":Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    .end local v66    # "_tmp":[B
    .end local v67    # "_tmp_1":[B
    .end local v68    # "_tmp_2":[B
    goto/16 :goto_0

    .line 674
    .end local v48    # "_cursorIndexOfConfigBean":I
    .end local v69    # "_cursorIndexOfId":I
    .end local v70    # "_cursorIndexOfVmessBean":I
    .end local v71    # "_cursorIndexOfTrojanBean":I
    .end local v72    # "_cursorIndexOfTrojanGoBean":I
    .end local v73    # "_cursorIndexOfMieruBean":I
    .end local v74    # "_cursorIndexOfNaiveBean":I
    .end local v75    # "_cursorIndexOfHysteriaBean":I
    .end local v76    # "_cursorIndexOfTuicBean":I
    .end local v77    # "_cursorIndexOfSshBean":I
    .end local v78    # "_cursorIndexOfWgBean":I
    .end local v79    # "_cursorIndexOfShadowTLSBean":I
    .end local v80    # "_cursorIndexOfAnyTLSBean":I
    .end local v81    # "_cursorIndexOfChainBean":I
    .end local v82    # "_cursorIndexOfNekoBean":I
    .local v0, "_cursorIndexOfId":I
    .local v19, "_cursorIndexOfTrojanBean":I
    .local v20, "_cursorIndexOfTrojanGoBean":I
    .local v21, "_cursorIndexOfMieruBean":I
    .local v22, "_cursorIndexOfNaiveBean":I
    .local v23, "_cursorIndexOfHysteriaBean":I
    .local v24, "_cursorIndexOfTuicBean":I
    .local v25, "_cursorIndexOfSshBean":I
    .local v26, "_cursorIndexOfWgBean":I
    .local v27, "_cursorIndexOfShadowTLSBean":I
    .local v28, "_cursorIndexOfAnyTLSBean":I
    .local v29, "_cursorIndexOfChainBean":I
    .local v30, "_cursorIndexOfNekoBean":I
    .local v31, "_cursorIndexOfConfigBean":I
    .local v32, "_cursorIndexOfVmessBean":I
    :cond_1
    nop

    .line 676
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 677
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 674
    return-object v3

    .line 676
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfError":I
    .end local v2    # "_cursorIndexOfSocksBean":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyEntity;>;"
    .end local v4    # "_cursorIndexOfHttpBean":I
    .end local v5    # "_cursorIndexOfSsBean":I
    .end local v8    # "_cursorIndexOfGroupId":I
    .end local v9    # "_cursorIndexOfType":I
    .end local v10    # "_cursorIndexOfUserOrder":I
    .end local v11    # "_cursorIndexOfTx":I
    .end local v12    # "_cursorIndexOfRx":I
    .end local v13    # "_cursorIndexOfStatus":I
    .end local v14    # "_cursorIndexOfPing":I
    .end local v15    # "_cursorIndexOfUuid":I
    .end local v19    # "_cursorIndexOfTrojanBean":I
    .end local v20    # "_cursorIndexOfTrojanGoBean":I
    .end local v21    # "_cursorIndexOfMieruBean":I
    .end local v22    # "_cursorIndexOfNaiveBean":I
    .end local v23    # "_cursorIndexOfHysteriaBean":I
    .end local v24    # "_cursorIndexOfTuicBean":I
    .end local v25    # "_cursorIndexOfSshBean":I
    .end local v26    # "_cursorIndexOfWgBean":I
    .end local v27    # "_cursorIndexOfShadowTLSBean":I
    .end local v28    # "_cursorIndexOfAnyTLSBean":I
    .end local v29    # "_cursorIndexOfChainBean":I
    .end local v30    # "_cursorIndexOfNekoBean":I
    .end local v31    # "_cursorIndexOfConfigBean":I
    .end local v32    # "_cursorIndexOfVmessBean":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v17, v4

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v4    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v4    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 677
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 678
    throw v0
.end method

.method public getById(J)Lio/nekohasekai/sagernet/database/ProxyEntity;
    .locals 83
    .param p1, "proxyId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proxyId"
        }
    .end annotation

    .line 883
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM proxy_entities WHERE id = ?"

    .line 884
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM proxy_entities WHERE id = ?"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 885
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v4, 0x1

    .line 886
    .local v4, "_argIndex":I
    move-wide/from16 v5, p1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 887
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 888
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v3, v7, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 890
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 891
    .local v0, "_cursorIndexOfId":I
    const-string v8, "groupId"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 892
    .local v8, "_cursorIndexOfGroupId":I
    const-string v9, "type"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 893
    .local v9, "_cursorIndexOfType":I
    const-string v10, "userOrder"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 894
    .local v10, "_cursorIndexOfUserOrder":I
    const-string v11, "tx"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 895
    .local v11, "_cursorIndexOfTx":I
    const-string v12, "rx"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 896
    .local v12, "_cursorIndexOfRx":I
    const-string v13, "status"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 897
    .local v13, "_cursorIndexOfStatus":I
    const-string v14, "ping"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 898
    .local v14, "_cursorIndexOfPing":I
    const-string v15, "uuid"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 899
    .local v15, "_cursorIndexOfUuid":I
    const-string v1, "error"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 900
    .local v1, "_cursorIndexOfError":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "socksBean"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 901
    .local v2, "_cursorIndexOfSocksBean":I
    move/from16 v17, v4

    .end local v4    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_2
    const-string v4, "httpBean"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 902
    .local v4, "_cursorIndexOfHttpBean":I
    const-string v5, "ssBean"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 903
    .local v5, "_cursorIndexOfSsBean":I
    const-string v6, "vmessBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 904
    .local v6, "_cursorIndexOfVmessBean":I
    move-object/from16 v18, v3

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string v3, "trojanBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 905
    .local v3, "_cursorIndexOfTrojanBean":I
    move/from16 v19, v3

    .end local v3    # "_cursorIndexOfTrojanBean":I
    .local v19, "_cursorIndexOfTrojanBean":I
    const-string v3, "trojanGoBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 906
    .local v3, "_cursorIndexOfTrojanGoBean":I
    move/from16 v20, v3

    .end local v3    # "_cursorIndexOfTrojanGoBean":I
    .local v20, "_cursorIndexOfTrojanGoBean":I
    const-string v3, "mieruBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 907
    .local v3, "_cursorIndexOfMieruBean":I
    move/from16 v21, v3

    .end local v3    # "_cursorIndexOfMieruBean":I
    .local v21, "_cursorIndexOfMieruBean":I
    const-string v3, "naiveBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 908
    .local v3, "_cursorIndexOfNaiveBean":I
    move/from16 v22, v3

    .end local v3    # "_cursorIndexOfNaiveBean":I
    .local v22, "_cursorIndexOfNaiveBean":I
    const-string v3, "hysteriaBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 909
    .local v3, "_cursorIndexOfHysteriaBean":I
    move/from16 v23, v3

    .end local v3    # "_cursorIndexOfHysteriaBean":I
    .local v23, "_cursorIndexOfHysteriaBean":I
    const-string v3, "tuicBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 910
    .local v3, "_cursorIndexOfTuicBean":I
    move/from16 v24, v3

    .end local v3    # "_cursorIndexOfTuicBean":I
    .local v24, "_cursorIndexOfTuicBean":I
    const-string v3, "sshBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 911
    .local v3, "_cursorIndexOfSshBean":I
    move/from16 v25, v3

    .end local v3    # "_cursorIndexOfSshBean":I
    .local v25, "_cursorIndexOfSshBean":I
    const-string v3, "wgBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 912
    .local v3, "_cursorIndexOfWgBean":I
    move/from16 v26, v3

    .end local v3    # "_cursorIndexOfWgBean":I
    .local v26, "_cursorIndexOfWgBean":I
    const-string v3, "shadowTLSBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 913
    .local v3, "_cursorIndexOfShadowTLSBean":I
    move/from16 v27, v3

    .end local v3    # "_cursorIndexOfShadowTLSBean":I
    .local v27, "_cursorIndexOfShadowTLSBean":I
    const-string v3, "anyTLSBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 914
    .local v3, "_cursorIndexOfAnyTLSBean":I
    move/from16 v28, v3

    .end local v3    # "_cursorIndexOfAnyTLSBean":I
    .local v28, "_cursorIndexOfAnyTLSBean":I
    const-string v3, "chainBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 915
    .local v3, "_cursorIndexOfChainBean":I
    move/from16 v29, v3

    .end local v3    # "_cursorIndexOfChainBean":I
    .local v29, "_cursorIndexOfChainBean":I
    const-string v3, "nekoBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 916
    .local v3, "_cursorIndexOfNekoBean":I
    move/from16 v30, v3

    .end local v3    # "_cursorIndexOfNekoBean":I
    .local v30, "_cursorIndexOfNekoBean":I
    const-string v3, "configBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 918
    .local v3, "_cursorIndexOfConfigBean":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 920
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 922
    .local v33, "_tmpId":J
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 924
    .local v35, "_tmpGroupId":J
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 926
    .local v37, "_tmpType":I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 928
    .local v38, "_tmpUserOrder":J
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 930
    .local v40, "_tmpTx":J
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 932
    .local v42, "_tmpRx":J
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 934
    .local v44, "_tmpStatus":I
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 936
    .local v45, "_tmpPing":I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 938
    .local v46, "_tmpUuid":Ljava/lang/String;
    invoke-interface {v7, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 939
    const/16 v31, 0x0

    .local v31, "_tmpError":Ljava/lang/String;
    goto :goto_0

    .line 941
    .end local v31    # "_tmpError":Ljava/lang/String;
    :cond_0
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 945
    .restart local v31    # "_tmpError":Ljava/lang/String;
    :goto_0
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v65, v32

    .line 946
    .local v65, "_tmp":[B
    invoke-static/range {v65 .. v65}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->socksDeserialize([B)Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    move-result-object v48

    .line 949
    .local v48, "_tmpSocksBean":Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v66, v32

    .line 950
    .local v66, "_tmp_1":[B
    invoke-static/range {v66 .. v66}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->httpDeserialize([B)Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    move-result-object v49

    .line 953
    .local v49, "_tmpHttpBean":Lio/nekohasekai/sagernet/fmt/http/HttpBean;
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v67, v32

    .line 954
    .local v67, "_tmp_2":[B
    invoke-static/range {v67 .. v67}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->shadowsocksDeserialize([B)Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    move-result-object v50

    .line 957
    .local v50, "_tmpSsBean":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v68, v32

    .line 958
    .local v68, "_tmp_3":[B
    invoke-static/range {v68 .. v68}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->vmessDeserialize([B)Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v51

    .line 961
    .local v51, "_tmpVmessBean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    move/from16 v69, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfTrojanBean":I
    .local v0, "_cursorIndexOfTrojanBean":I
    .local v69, "_cursorIndexOfId":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 962
    .local v19, "_tmp_4":[B
    invoke-static/range {v19 .. v19}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->trojanDeserialize([B)Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    move-result-object v52

    .line 965
    .local v52, "_tmpTrojanBean":Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    move/from16 v70, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfTrojanGoBean":I
    .local v0, "_cursorIndexOfTrojanGoBean":I
    .local v70, "_cursorIndexOfTrojanBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    .line 966
    .local v20, "_tmp_5":[B
    invoke-static/range {v20 .. v20}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->trojanGoDeserialize([B)Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    move-result-object v53

    .line 969
    .local v53, "_tmpTrojanGoBean":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    move/from16 v71, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfMieruBean":I
    .local v0, "_cursorIndexOfMieruBean":I
    .local v71, "_cursorIndexOfTrojanGoBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 970
    .local v21, "_tmp_6":[B
    invoke-static/range {v21 .. v21}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->mieruDeserialize([B)Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    move-result-object v54

    .line 973
    .local v54, "_tmpMieruBean":Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    move/from16 v72, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfNaiveBean":I
    .local v0, "_cursorIndexOfNaiveBean":I
    .local v72, "_cursorIndexOfMieruBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 974
    .local v22, "_tmp_7":[B
    invoke-static/range {v22 .. v22}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->naiveDeserialize([B)Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    move-result-object v55

    .line 977
    .local v55, "_tmpNaiveBean":Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    move/from16 v73, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfHysteriaBean":I
    .local v0, "_cursorIndexOfHysteriaBean":I
    .local v73, "_cursorIndexOfNaiveBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v23

    .line 978
    .local v23, "_tmp_8":[B
    invoke-static/range {v23 .. v23}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->hysteriaDeserialize([B)Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    move-result-object v56

    .line 981
    .local v56, "_tmpHysteriaBean":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    move/from16 v74, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfTuicBean":I
    .local v0, "_cursorIndexOfTuicBean":I
    .local v74, "_cursorIndexOfHysteriaBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 982
    .local v24, "_tmp_9":[B
    invoke-static/range {v24 .. v24}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->tuicDeserialize([B)Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    move-result-object v57

    .line 985
    .local v57, "_tmpTuicBean":Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    move/from16 v75, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfSshBean":I
    .local v0, "_cursorIndexOfSshBean":I
    .local v75, "_cursorIndexOfTuicBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    .line 986
    .local v25, "_tmp_10":[B
    invoke-static/range {v25 .. v25}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->sshDeserialize([B)Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    move-result-object v58

    .line 989
    .local v58, "_tmpSshBean":Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;
    move/from16 v76, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfWgBean":I
    .local v0, "_cursorIndexOfWgBean":I
    .local v76, "_cursorIndexOfSshBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    .line 990
    .local v26, "_tmp_11":[B
    invoke-static/range {v26 .. v26}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->wireguardDeserialize([B)Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    move-result-object v59

    .line 993
    .local v59, "_tmpWgBean":Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    move/from16 v77, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfShadowTLSBean":I
    .local v0, "_cursorIndexOfShadowTLSBean":I
    .local v77, "_cursorIndexOfWgBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 994
    .local v27, "_tmp_12":[B
    invoke-static/range {v27 .. v27}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->shadowTLSDeserialize([B)Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    move-result-object v60

    .line 997
    .local v60, "_tmpShadowTLSBean":Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    move/from16 v78, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfAnyTLSBean":I
    .local v0, "_cursorIndexOfAnyTLSBean":I
    .local v78, "_cursorIndexOfShadowTLSBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    .line 998
    .local v28, "_tmp_13":[B
    invoke-static/range {v28 .. v28}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->anyTLSDeserialize([B)Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    move-result-object v61

    .line 1001
    .local v61, "_tmpAnyTLSBean":Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    move/from16 v79, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfChainBean":I
    .local v0, "_cursorIndexOfChainBean":I
    .local v79, "_cursorIndexOfAnyTLSBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 1002
    .local v29, "_tmp_14":[B
    invoke-static/range {v29 .. v29}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->chainDeserialize([B)Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    move-result-object v62

    .line 1005
    .local v62, "_tmpChainBean":Lio/nekohasekai/sagernet/fmt/internal/ChainBean;
    move/from16 v80, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfNekoBean":I
    .local v0, "_cursorIndexOfNekoBean":I
    .local v80, "_cursorIndexOfChainBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    .line 1006
    .local v30, "_tmp_15":[B
    invoke-static/range {v30 .. v30}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->nekoDeserialize([B)Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    move-result-object v63

    .line 1009
    .local v63, "_tmpNekoBean":Lmoe/matsuri/nb4a/proxy/neko/NekoBean;
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v81, v32

    .line 1010
    .local v81, "_tmp_16":[B
    invoke-static/range {v81 .. v81}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->configDeserialize([B)Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    move-result-object v64

    .line 1011
    .local v64, "_tmpConfigBean":Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    new-instance v82, Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-object/from16 v32, v82

    move-object/from16 v47, v31

    invoke-direct/range {v32 .. v64}, Lio/nekohasekai/sagernet/database/ProxyEntity;-><init>(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v19, v82

    .line 1012
    .end local v20    # "_tmp_5":[B
    .end local v21    # "_tmp_6":[B
    .end local v22    # "_tmp_7":[B
    .end local v23    # "_tmp_8":[B
    .end local v24    # "_tmp_9":[B
    .end local v25    # "_tmp_10":[B
    .end local v26    # "_tmp_11":[B
    .end local v27    # "_tmp_12":[B
    .end local v28    # "_tmp_13":[B
    .end local v29    # "_tmp_14":[B
    .end local v30    # "_tmp_15":[B
    .end local v31    # "_tmpError":Ljava/lang/String;
    .end local v33    # "_tmpId":J
    .end local v35    # "_tmpGroupId":J
    .end local v37    # "_tmpType":I
    .end local v38    # "_tmpUserOrder":J
    .end local v40    # "_tmpTx":J
    .end local v42    # "_tmpRx":J
    .end local v44    # "_tmpStatus":I
    .end local v45    # "_tmpPing":I
    .end local v46    # "_tmpUuid":Ljava/lang/String;
    .end local v48    # "_tmpSocksBean":Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    .end local v49    # "_tmpHttpBean":Lio/nekohasekai/sagernet/fmt/http/HttpBean;
    .end local v50    # "_tmpSsBean":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .end local v51    # "_tmpVmessBean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .end local v52    # "_tmpTrojanBean":Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    .end local v53    # "_tmpTrojanGoBean":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .end local v54    # "_tmpMieruBean":Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    .end local v55    # "_tmpNaiveBean":Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    .end local v56    # "_tmpHysteriaBean":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .end local v57    # "_tmpTuicBean":Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    .end local v58    # "_tmpSshBean":Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;
    .end local v59    # "_tmpWgBean":Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    .end local v60    # "_tmpShadowTLSBean":Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    .end local v61    # "_tmpAnyTLSBean":Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    .end local v62    # "_tmpChainBean":Lio/nekohasekai/sagernet/fmt/internal/ChainBean;
    .end local v63    # "_tmpNekoBean":Lmoe/matsuri/nb4a/proxy/neko/NekoBean;
    .end local v64    # "_tmpConfigBean":Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    .end local v65    # "_tmp":[B
    .end local v66    # "_tmp_1":[B
    .end local v67    # "_tmp_2":[B
    .end local v68    # "_tmp_3":[B
    .end local v81    # "_tmp_16":[B
    .local v19, "_result":Lio/nekohasekai/sagernet/database/ProxyEntity;
    goto :goto_1

    .line 1013
    .end local v69    # "_cursorIndexOfId":I
    .end local v70    # "_cursorIndexOfTrojanBean":I
    .end local v71    # "_cursorIndexOfTrojanGoBean":I
    .end local v72    # "_cursorIndexOfMieruBean":I
    .end local v73    # "_cursorIndexOfNaiveBean":I
    .end local v74    # "_cursorIndexOfHysteriaBean":I
    .end local v75    # "_cursorIndexOfTuicBean":I
    .end local v76    # "_cursorIndexOfSshBean":I
    .end local v77    # "_cursorIndexOfWgBean":I
    .end local v78    # "_cursorIndexOfShadowTLSBean":I
    .end local v79    # "_cursorIndexOfAnyTLSBean":I
    .end local v80    # "_cursorIndexOfChainBean":I
    .local v0, "_cursorIndexOfId":I
    .local v19, "_cursorIndexOfTrojanBean":I
    .local v20, "_cursorIndexOfTrojanGoBean":I
    .local v21, "_cursorIndexOfMieruBean":I
    .local v22, "_cursorIndexOfNaiveBean":I
    .local v23, "_cursorIndexOfHysteriaBean":I
    .local v24, "_cursorIndexOfTuicBean":I
    .local v25, "_cursorIndexOfSshBean":I
    .local v26, "_cursorIndexOfWgBean":I
    .local v27, "_cursorIndexOfShadowTLSBean":I
    .local v28, "_cursorIndexOfAnyTLSBean":I
    .local v29, "_cursorIndexOfChainBean":I
    .local v30, "_cursorIndexOfNekoBean":I
    :cond_1
    move/from16 v69, v0

    move/from16 v70, v19

    move/from16 v71, v20

    move/from16 v72, v21

    move/from16 v73, v22

    move/from16 v74, v23

    move/from16 v75, v24

    move/from16 v76, v25

    move/from16 v77, v26

    move/from16 v78, v27

    move/from16 v79, v28

    move/from16 v80, v29

    move/from16 v0, v30

    .end local v19    # "_cursorIndexOfTrojanBean":I
    .end local v20    # "_cursorIndexOfTrojanGoBean":I
    .end local v21    # "_cursorIndexOfMieruBean":I
    .end local v22    # "_cursorIndexOfNaiveBean":I
    .end local v23    # "_cursorIndexOfHysteriaBean":I
    .end local v24    # "_cursorIndexOfTuicBean":I
    .end local v25    # "_cursorIndexOfSshBean":I
    .end local v26    # "_cursorIndexOfWgBean":I
    .end local v27    # "_cursorIndexOfShadowTLSBean":I
    .end local v28    # "_cursorIndexOfAnyTLSBean":I
    .end local v29    # "_cursorIndexOfChainBean":I
    .end local v30    # "_cursorIndexOfNekoBean":I
    .local v0, "_cursorIndexOfNekoBean":I
    .restart local v69    # "_cursorIndexOfId":I
    .restart local v70    # "_cursorIndexOfTrojanBean":I
    .restart local v71    # "_cursorIndexOfTrojanGoBean":I
    .restart local v72    # "_cursorIndexOfMieruBean":I
    .restart local v73    # "_cursorIndexOfNaiveBean":I
    .restart local v74    # "_cursorIndexOfHysteriaBean":I
    .restart local v75    # "_cursorIndexOfTuicBean":I
    .restart local v76    # "_cursorIndexOfSshBean":I
    .restart local v77    # "_cursorIndexOfWgBean":I
    .restart local v78    # "_cursorIndexOfShadowTLSBean":I
    .restart local v79    # "_cursorIndexOfAnyTLSBean":I
    .restart local v80    # "_cursorIndexOfChainBean":I
    const/16 v19, 0x0

    .line 1015
    .local v19, "_result":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :goto_1
    nop

    .line 1017
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1018
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1015
    return-object v19

    .line 1017
    .end local v0    # "_cursorIndexOfNekoBean":I
    .end local v1    # "_cursorIndexOfError":I
    .end local v2    # "_cursorIndexOfSocksBean":I
    .end local v3    # "_cursorIndexOfConfigBean":I
    .end local v4    # "_cursorIndexOfHttpBean":I
    .end local v5    # "_cursorIndexOfSsBean":I
    .end local v6    # "_cursorIndexOfVmessBean":I
    .end local v8    # "_cursorIndexOfGroupId":I
    .end local v9    # "_cursorIndexOfType":I
    .end local v10    # "_cursorIndexOfUserOrder":I
    .end local v11    # "_cursorIndexOfTx":I
    .end local v12    # "_cursorIndexOfRx":I
    .end local v13    # "_cursorIndexOfStatus":I
    .end local v14    # "_cursorIndexOfPing":I
    .end local v15    # "_cursorIndexOfUuid":I
    .end local v19    # "_result":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v69    # "_cursorIndexOfId":I
    .end local v70    # "_cursorIndexOfTrojanBean":I
    .end local v71    # "_cursorIndexOfTrojanGoBean":I
    .end local v72    # "_cursorIndexOfMieruBean":I
    .end local v73    # "_cursorIndexOfNaiveBean":I
    .end local v74    # "_cursorIndexOfHysteriaBean":I
    .end local v75    # "_cursorIndexOfTuicBean":I
    .end local v76    # "_cursorIndexOfSshBean":I
    .end local v77    # "_cursorIndexOfWgBean":I
    .end local v78    # "_cursorIndexOfShadowTLSBean":I
    .end local v79    # "_cursorIndexOfAnyTLSBean":I
    .end local v80    # "_cursorIndexOfChainBean":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v17, v4

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v4    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v4    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1018
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1019
    throw v0
.end method

.method public getEntities(Ljava/util/List;)Ljava/util/List;
    .locals 87
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proxyIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation

    .line 683
    .local p1, "proxyIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 684
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v0, "SELECT * FROM proxy_entities WHERE id in ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 686
    .local v3, "_inputSize":I
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 687
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, "_sql":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x0

    .line 690
    .local v5, "_argCount":I
    invoke-static {v4, v5}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v6

    .line 691
    .local v6, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 692
    .local v0, "_argIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    .end local v0    # "_argIndex":I
    .local v8, "_argIndex":I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 693
    .local v9, "_item":J
    invoke-virtual {v6, v8, v9, v10}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 694
    nop

    .end local v9    # "_item":J
    add-int/lit8 v8, v8, 0x1

    .line 695
    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 697
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v6, v9, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 699
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 700
    .local v0, "_cursorIndexOfId":I
    const-string v9, "groupId"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 701
    .local v9, "_cursorIndexOfGroupId":I
    const-string v10, "type"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 702
    .local v10, "_cursorIndexOfType":I
    const-string v11, "userOrder"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 703
    .local v11, "_cursorIndexOfUserOrder":I
    const-string v12, "tx"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 704
    .local v12, "_cursorIndexOfTx":I
    const-string v13, "rx"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 705
    .local v13, "_cursorIndexOfRx":I
    const-string v14, "status"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 706
    .local v14, "_cursorIndexOfStatus":I
    const-string v15, "ping"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 707
    .local v15, "_cursorIndexOfPing":I
    const-string v1, "uuid"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 708
    .local v1, "_cursorIndexOfUuid":I
    move-object/from16 v16, v2

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .local v16, "_stringBuilder":Ljava/lang/StringBuilder;
    :try_start_1
    const-string v2, "error"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 709
    .local v2, "_cursorIndexOfError":I
    move/from16 v17, v3

    .end local v3    # "_inputSize":I
    .local v17, "_inputSize":I
    :try_start_2
    const-string v3, "socksBean"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 710
    .local v3, "_cursorIndexOfSocksBean":I
    move-object/from16 v18, v4

    .end local v4    # "_sql":Ljava/lang/String;
    .local v18, "_sql":Ljava/lang/String;
    :try_start_3
    const-string v4, "httpBean"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 711
    .local v4, "_cursorIndexOfHttpBean":I
    move/from16 v19, v5

    .end local v5    # "_argCount":I
    .local v19, "_argCount":I
    :try_start_4
    const-string v5, "ssBean"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 712
    .local v5, "_cursorIndexOfSsBean":I
    move/from16 v20, v8

    .end local v8    # "_argIndex":I
    .local v20, "_argIndex":I
    :try_start_5
    const-string v8, "vmessBean"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 713
    .local v8, "_cursorIndexOfVmessBean":I
    move-object/from16 v21, v6

    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v21, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_6
    const-string v6, "trojanBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 714
    .local v6, "_cursorIndexOfTrojanBean":I
    move/from16 v22, v6

    .end local v6    # "_cursorIndexOfTrojanBean":I
    .local v22, "_cursorIndexOfTrojanBean":I
    const-string v6, "trojanGoBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 715
    .local v6, "_cursorIndexOfTrojanGoBean":I
    move/from16 v23, v6

    .end local v6    # "_cursorIndexOfTrojanGoBean":I
    .local v23, "_cursorIndexOfTrojanGoBean":I
    const-string v6, "mieruBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 716
    .local v6, "_cursorIndexOfMieruBean":I
    move/from16 v24, v6

    .end local v6    # "_cursorIndexOfMieruBean":I
    .local v24, "_cursorIndexOfMieruBean":I
    const-string v6, "naiveBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 717
    .local v6, "_cursorIndexOfNaiveBean":I
    move/from16 v25, v6

    .end local v6    # "_cursorIndexOfNaiveBean":I
    .local v25, "_cursorIndexOfNaiveBean":I
    const-string v6, "hysteriaBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 718
    .local v6, "_cursorIndexOfHysteriaBean":I
    move/from16 v26, v6

    .end local v6    # "_cursorIndexOfHysteriaBean":I
    .local v26, "_cursorIndexOfHysteriaBean":I
    const-string v6, "tuicBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 719
    .local v6, "_cursorIndexOfTuicBean":I
    move/from16 v27, v6

    .end local v6    # "_cursorIndexOfTuicBean":I
    .local v27, "_cursorIndexOfTuicBean":I
    const-string v6, "sshBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 720
    .local v6, "_cursorIndexOfSshBean":I
    move/from16 v28, v6

    .end local v6    # "_cursorIndexOfSshBean":I
    .local v28, "_cursorIndexOfSshBean":I
    const-string v6, "wgBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 721
    .local v6, "_cursorIndexOfWgBean":I
    move/from16 v29, v6

    .end local v6    # "_cursorIndexOfWgBean":I
    .local v29, "_cursorIndexOfWgBean":I
    const-string v6, "shadowTLSBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 722
    .local v6, "_cursorIndexOfShadowTLSBean":I
    move/from16 v30, v6

    .end local v6    # "_cursorIndexOfShadowTLSBean":I
    .local v30, "_cursorIndexOfShadowTLSBean":I
    const-string v6, "anyTLSBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 723
    .local v6, "_cursorIndexOfAnyTLSBean":I
    move/from16 v31, v6

    .end local v6    # "_cursorIndexOfAnyTLSBean":I
    .local v31, "_cursorIndexOfAnyTLSBean":I
    const-string v6, "chainBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 724
    .local v6, "_cursorIndexOfChainBean":I
    move/from16 v32, v6

    .end local v6    # "_cursorIndexOfChainBean":I
    .local v32, "_cursorIndexOfChainBean":I
    const-string v6, "nekoBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 725
    .local v6, "_cursorIndexOfNekoBean":I
    move/from16 v33, v6

    .end local v6    # "_cursorIndexOfNekoBean":I
    .local v33, "_cursorIndexOfNekoBean":I
    const-string v6, "configBean"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 726
    .local v6, "_cursorIndexOfConfigBean":I
    move/from16 v34, v6

    .end local v6    # "_cursorIndexOfConfigBean":I
    .local v34, "_cursorIndexOfConfigBean":I
    new-instance v6, Ljava/util/ArrayList;

    move/from16 v35, v8

    .end local v8    # "_cursorIndexOfVmessBean":I
    .local v35, "_cursorIndexOfVmessBean":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 727
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyEntity;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 730
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 732
    .local v37, "_tmpId":J
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 734
    .local v39, "_tmpGroupId":J
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 736
    .local v41, "_tmpType":I
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 738
    .local v42, "_tmpUserOrder":J
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 740
    .local v44, "_tmpTx":J
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 742
    .local v46, "_tmpRx":J
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 744
    .local v48, "_tmpStatus":I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 746
    .local v49, "_tmpPing":I
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 748
    .local v50, "_tmpUuid":Ljava/lang/String;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 749
    const/4 v8, 0x0

    .local v8, "_tmpError":Ljava/lang/String;
    goto :goto_2

    .line 751
    .end local v8    # "_tmpError":Ljava/lang/String;
    :cond_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 755
    .restart local v8    # "_tmpError":Ljava/lang/String;
    :goto_2
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v36

    move-object/from16 v69, v36

    .line 756
    .local v69, "_tmp":[B
    invoke-static/range {v69 .. v69}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->socksDeserialize([B)Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    move-result-object v52

    .line 759
    .local v52, "_tmpSocksBean":Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v36

    move-object/from16 v70, v36

    .line 760
    .local v70, "_tmp_1":[B
    invoke-static/range {v70 .. v70}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->httpDeserialize([B)Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    move-result-object v53

    .line 763
    .local v53, "_tmpHttpBean":Lio/nekohasekai/sagernet/fmt/http/HttpBean;
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v36

    move-object/from16 v71, v36

    .line 764
    .local v71, "_tmp_2":[B
    invoke-static/range {v71 .. v71}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->shadowsocksDeserialize([B)Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    move-result-object v54

    .line 767
    .local v54, "_tmpSsBean":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    move/from16 v72, v0

    move/from16 v0, v35

    .end local v35    # "_cursorIndexOfVmessBean":I
    .local v0, "_cursorIndexOfVmessBean":I
    .local v72, "_cursorIndexOfId":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v35

    .line 768
    .local v35, "_tmp_3":[B
    invoke-static/range {v35 .. v35}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->vmessDeserialize([B)Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v55

    .line 771
    .local v55, "_tmpVmessBean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    move/from16 v73, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfTrojanBean":I
    .local v0, "_cursorIndexOfTrojanBean":I
    .local v73, "_cursorIndexOfVmessBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 772
    .local v22, "_tmp_4":[B
    invoke-static/range {v22 .. v22}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->trojanDeserialize([B)Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    move-result-object v56

    .line 775
    .local v56, "_tmpTrojanBean":Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    move/from16 v74, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfTrojanGoBean":I
    .local v0, "_cursorIndexOfTrojanGoBean":I
    .local v74, "_cursorIndexOfTrojanBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v23

    .line 776
    .local v23, "_tmp_5":[B
    invoke-static/range {v23 .. v23}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->trojanGoDeserialize([B)Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    move-result-object v57

    .line 779
    .local v57, "_tmpTrojanGoBean":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    move/from16 v75, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfMieruBean":I
    .local v0, "_cursorIndexOfMieruBean":I
    .local v75, "_cursorIndexOfTrojanGoBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 780
    .local v24, "_tmp_6":[B
    invoke-static/range {v24 .. v24}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->mieruDeserialize([B)Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    move-result-object v58

    .line 783
    .local v58, "_tmpMieruBean":Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    move/from16 v76, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfNaiveBean":I
    .local v0, "_cursorIndexOfNaiveBean":I
    .local v76, "_cursorIndexOfMieruBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    .line 784
    .local v25, "_tmp_7":[B
    invoke-static/range {v25 .. v25}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->naiveDeserialize([B)Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    move-result-object v59

    .line 787
    .local v59, "_tmpNaiveBean":Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    move/from16 v77, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfHysteriaBean":I
    .local v0, "_cursorIndexOfHysteriaBean":I
    .local v77, "_cursorIndexOfNaiveBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    .line 788
    .local v26, "_tmp_8":[B
    invoke-static/range {v26 .. v26}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->hysteriaDeserialize([B)Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    move-result-object v60

    .line 791
    .local v60, "_tmpHysteriaBean":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    move/from16 v78, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfTuicBean":I
    .local v0, "_cursorIndexOfTuicBean":I
    .local v78, "_cursorIndexOfHysteriaBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 792
    .local v27, "_tmp_9":[B
    invoke-static/range {v27 .. v27}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->tuicDeserialize([B)Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    move-result-object v61

    .line 795
    .local v61, "_tmpTuicBean":Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    move/from16 v79, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfSshBean":I
    .local v0, "_cursorIndexOfSshBean":I
    .local v79, "_cursorIndexOfTuicBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    .line 796
    .local v28, "_tmp_10":[B
    invoke-static/range {v28 .. v28}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->sshDeserialize([B)Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    move-result-object v62

    .line 799
    .local v62, "_tmpSshBean":Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;
    move/from16 v80, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfWgBean":I
    .local v0, "_cursorIndexOfWgBean":I
    .local v80, "_cursorIndexOfSshBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 800
    .local v29, "_tmp_11":[B
    invoke-static/range {v29 .. v29}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->wireguardDeserialize([B)Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    move-result-object v63

    .line 803
    .local v63, "_tmpWgBean":Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    move/from16 v81, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfShadowTLSBean":I
    .local v0, "_cursorIndexOfShadowTLSBean":I
    .local v81, "_cursorIndexOfWgBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    .line 804
    .local v30, "_tmp_12":[B
    invoke-static/range {v30 .. v30}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->shadowTLSDeserialize([B)Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    move-result-object v64

    .line 807
    .local v64, "_tmpShadowTLSBean":Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    move/from16 v82, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfAnyTLSBean":I
    .local v0, "_cursorIndexOfAnyTLSBean":I
    .local v82, "_cursorIndexOfShadowTLSBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    .line 808
    .local v31, "_tmp_13":[B
    invoke-static/range {v31 .. v31}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->anyTLSDeserialize([B)Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    move-result-object v65

    .line 811
    .local v65, "_tmpAnyTLSBean":Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    move/from16 v83, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfChainBean":I
    .local v0, "_cursorIndexOfChainBean":I
    .local v83, "_cursorIndexOfAnyTLSBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    .line 812
    .local v32, "_tmp_14":[B
    invoke-static/range {v32 .. v32}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->chainDeserialize([B)Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    move-result-object v66

    .line 815
    .local v66, "_tmpChainBean":Lio/nekohasekai/sagernet/fmt/internal/ChainBean;
    move/from16 v84, v0

    move/from16 v0, v33

    .end local v33    # "_cursorIndexOfNekoBean":I
    .local v0, "_cursorIndexOfNekoBean":I
    .local v84, "_cursorIndexOfChainBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    .line 816
    .local v33, "_tmp_15":[B
    invoke-static/range {v33 .. v33}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->nekoDeserialize([B)Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    move-result-object v67

    .line 819
    .local v67, "_tmpNekoBean":Lmoe/matsuri/nb4a/proxy/neko/NekoBean;
    move/from16 v85, v0

    move/from16 v0, v34

    .end local v34    # "_cursorIndexOfConfigBean":I
    .local v0, "_cursorIndexOfConfigBean":I
    .local v85, "_cursorIndexOfNekoBean":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v34

    .line 820
    .local v34, "_tmp_16":[B
    invoke-static/range {v34 .. v34}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->configDeserialize([B)Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    move-result-object v68

    .line 821
    .local v68, "_tmpConfigBean":Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    new-instance v86, Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-object/from16 v36, v86

    move-object/from16 v51, v8

    invoke-direct/range {v36 .. v68}, Lio/nekohasekai/sagernet/database/ProxyEntity;-><init>(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V

    move-object/from16 v36, v86

    .line 822
    .local v36, "_item_1":Lio/nekohasekai/sagernet/database/ProxyEntity;
    move/from16 v51, v0

    move-object/from16 v0, v36

    .end local v36    # "_item_1":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v0, "_item_1":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v51, "_cursorIndexOfConfigBean":I
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 823
    move/from16 v34, v51

    move/from16 v0, v72

    move/from16 v35, v73

    move/from16 v22, v74

    move/from16 v23, v75

    move/from16 v24, v76

    move/from16 v25, v77

    move/from16 v26, v78

    move/from16 v27, v79

    move/from16 v28, v80

    move/from16 v29, v81

    move/from16 v30, v82

    move/from16 v31, v83

    move/from16 v32, v84

    move/from16 v33, v85

    .end local v0    # "_item_1":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v8    # "_tmpError":Ljava/lang/String;
    .end local v22    # "_tmp_4":[B
    .end local v23    # "_tmp_5":[B
    .end local v24    # "_tmp_6":[B
    .end local v25    # "_tmp_7":[B
    .end local v26    # "_tmp_8":[B
    .end local v27    # "_tmp_9":[B
    .end local v28    # "_tmp_10":[B
    .end local v29    # "_tmp_11":[B
    .end local v30    # "_tmp_12":[B
    .end local v31    # "_tmp_13":[B
    .end local v32    # "_tmp_14":[B
    .end local v33    # "_tmp_15":[B
    .end local v34    # "_tmp_16":[B
    .end local v35    # "_tmp_3":[B
    .end local v37    # "_tmpId":J
    .end local v39    # "_tmpGroupId":J
    .end local v41    # "_tmpType":I
    .end local v42    # "_tmpUserOrder":J
    .end local v44    # "_tmpTx":J
    .end local v46    # "_tmpRx":J
    .end local v48    # "_tmpStatus":I
    .end local v49    # "_tmpPing":I
    .end local v50    # "_tmpUuid":Ljava/lang/String;
    .end local v52    # "_tmpSocksBean":Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    .end local v53    # "_tmpHttpBean":Lio/nekohasekai/sagernet/fmt/http/HttpBean;
    .end local v54    # "_tmpSsBean":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .end local v55    # "_tmpVmessBean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .end local v56    # "_tmpTrojanBean":Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    .end local v57    # "_tmpTrojanGoBean":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .end local v58    # "_tmpMieruBean":Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    .end local v59    # "_tmpNaiveBean":Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    .end local v60    # "_tmpHysteriaBean":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .end local v61    # "_tmpTuicBean":Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    .end local v62    # "_tmpSshBean":Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;
    .end local v63    # "_tmpWgBean":Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    .end local v64    # "_tmpShadowTLSBean":Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    .end local v65    # "_tmpAnyTLSBean":Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    .end local v66    # "_tmpChainBean":Lio/nekohasekai/sagernet/fmt/internal/ChainBean;
    .end local v67    # "_tmpNekoBean":Lmoe/matsuri/nb4a/proxy/neko/NekoBean;
    .end local v68    # "_tmpConfigBean":Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    .end local v69    # "_tmp":[B
    .end local v70    # "_tmp_1":[B
    .end local v71    # "_tmp_2":[B
    goto/16 :goto_1

    .line 824
    .end local v51    # "_cursorIndexOfConfigBean":I
    .end local v72    # "_cursorIndexOfId":I
    .end local v73    # "_cursorIndexOfVmessBean":I
    .end local v74    # "_cursorIndexOfTrojanBean":I
    .end local v75    # "_cursorIndexOfTrojanGoBean":I
    .end local v76    # "_cursorIndexOfMieruBean":I
    .end local v77    # "_cursorIndexOfNaiveBean":I
    .end local v78    # "_cursorIndexOfHysteriaBean":I
    .end local v79    # "_cursorIndexOfTuicBean":I
    .end local v80    # "_cursorIndexOfSshBean":I
    .end local v81    # "_cursorIndexOfWgBean":I
    .end local v82    # "_cursorIndexOfShadowTLSBean":I
    .end local v83    # "_cursorIndexOfAnyTLSBean":I
    .end local v84    # "_cursorIndexOfChainBean":I
    .end local v85    # "_cursorIndexOfNekoBean":I
    .local v0, "_cursorIndexOfId":I
    .local v22, "_cursorIndexOfTrojanBean":I
    .local v23, "_cursorIndexOfTrojanGoBean":I
    .local v24, "_cursorIndexOfMieruBean":I
    .local v25, "_cursorIndexOfNaiveBean":I
    .local v26, "_cursorIndexOfHysteriaBean":I
    .local v27, "_cursorIndexOfTuicBean":I
    .local v28, "_cursorIndexOfSshBean":I
    .local v29, "_cursorIndexOfWgBean":I
    .local v30, "_cursorIndexOfShadowTLSBean":I
    .local v31, "_cursorIndexOfAnyTLSBean":I
    .local v32, "_cursorIndexOfChainBean":I
    .local v33, "_cursorIndexOfNekoBean":I
    .local v34, "_cursorIndexOfConfigBean":I
    .local v35, "_cursorIndexOfVmessBean":I
    :cond_2
    nop

    .line 826
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 827
    invoke-virtual/range {v21 .. v21}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 824
    return-object v6

    .line 826
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfUuid":I
    .end local v2    # "_cursorIndexOfError":I
    .end local v3    # "_cursorIndexOfSocksBean":I
    .end local v4    # "_cursorIndexOfHttpBean":I
    .end local v5    # "_cursorIndexOfSsBean":I
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyEntity;>;"
    .end local v9    # "_cursorIndexOfGroupId":I
    .end local v10    # "_cursorIndexOfType":I
    .end local v11    # "_cursorIndexOfUserOrder":I
    .end local v12    # "_cursorIndexOfTx":I
    .end local v13    # "_cursorIndexOfRx":I
    .end local v14    # "_cursorIndexOfStatus":I
    .end local v15    # "_cursorIndexOfPing":I
    .end local v22    # "_cursorIndexOfTrojanBean":I
    .end local v23    # "_cursorIndexOfTrojanGoBean":I
    .end local v24    # "_cursorIndexOfMieruBean":I
    .end local v25    # "_cursorIndexOfNaiveBean":I
    .end local v26    # "_cursorIndexOfHysteriaBean":I
    .end local v27    # "_cursorIndexOfTuicBean":I
    .end local v28    # "_cursorIndexOfSshBean":I
    .end local v29    # "_cursorIndexOfWgBean":I
    .end local v30    # "_cursorIndexOfShadowTLSBean":I
    .end local v31    # "_cursorIndexOfAnyTLSBean":I
    .end local v32    # "_cursorIndexOfChainBean":I
    .end local v33    # "_cursorIndexOfNekoBean":I
    .end local v34    # "_cursorIndexOfConfigBean":I
    .end local v35    # "_cursorIndexOfVmessBean":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v6, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v21, v6

    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_3

    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v8, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_3

    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argCount":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_3
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_3

    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_sql":Ljava/lang/String;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_4
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v4    # "_sql":Ljava/lang/String;
    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_3

    .end local v17    # "_inputSize":I
    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v3, "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_5
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v17    # "_inputSize":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_3

    .end local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "_inputSize":I
    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argCount":I
    .end local v20    # "_argIndex":I
    .end local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    :catchall_6
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v20, v8

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .restart local v16    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "_inputSize":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argCount":I
    .restart local v20    # "_argIndex":I
    .restart local v21    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 827
    invoke-virtual/range {v21 .. v21}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 828
    throw v0
.end method

.method public getIdsByGroup(J)Ljava/util/List;
    .locals 8
    .param p1, "groupId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 520
    const-string v0, "SELECT id FROM proxy_entities WHERE groupId = ? ORDER BY userOrder"

    .line 521
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM proxy_entities WHERE groupId = ? ORDER BY userOrder"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 522
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 523
    .local v2, "_argIndex":I
    invoke-virtual {v1, v2, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 524
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 525
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 527
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 528
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 530
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 531
    .local v6, "_item":Ljava/lang/Long;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    nop

    .end local v6    # "_item":Ljava/lang/Long;
    goto :goto_0

    .line 533
    :cond_0
    nop

    .line 535
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 536
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 533
    return-object v4

    .line 535
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 536
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 537
    throw v4
.end method

.method public insert(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proxies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p1, "proxies":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyEntity;>;"
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 238
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 240
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__insertionAdapterOfProxyEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 241
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 244
    nop

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 244
    throw v0
.end method

.method public nextOrder(J)Ljava/lang/Long;
    .locals 6
    .param p1, "groupId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 855
    const-string v0, "SELECT  MAX(userOrder) + 1 FROM proxy_entities WHERE groupId = ?"

    .line 856
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT  MAX(userOrder) + 1 FROM proxy_entities WHERE groupId = ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 857
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 858
    .local v2, "_argIndex":I
    invoke-virtual {v1, v2, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 859
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 860
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 863
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 865
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 866
    const/4 v4, 0x0

    .local v4, "_tmp":Ljava/lang/Long;
    goto :goto_0

    .line 868
    .end local v4    # "_tmp":Ljava/lang/Long;
    :cond_0
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    .restart local v4    # "_tmp":Ljava/lang/Long;
    :goto_0
    nop

    .line 871
    .local v4, "_result":Ljava/lang/Long;
    goto :goto_1

    .line 872
    .end local v4    # "_result":Ljava/lang/Long;
    :cond_1
    const/4 v4, 0x0

    .line 874
    .restart local v4    # "_result":Ljava/lang/Long;
    :goto_1
    nop

    .line 876
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 877
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 874
    return-object v4

    .line 876
    .end local v4    # "_result":Ljava/lang/Long;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 877
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 878
    throw v4
.end method

.method public reset()V
    .locals 3

    .line 364
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 365
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 367
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 369
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 370
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :try_start_2
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 373
    nop

    .line 375
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 376
    nop

    .line 377
    return-void

    .line 372
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 373
    nop

    .end local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 375
    .restart local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 376
    throw v1
.end method

.method public updateProxy(Lio/nekohasekai/sagernet/database/ProxyEntity;)I
    .locals 3
    .param p1, "proxy"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proxy"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "_total":I
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 281
    :try_start_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__updateAdapterOfProxyEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 282
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    nop

    .line 285
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 283
    return v0

    .line 285
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 286
    throw v1
.end method

.method public updateProxy(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "proxies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;)I"
        }
    .end annotation

    .line 291
    .local p1, "proxies":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyEntity;>;"
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "_total":I
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 295
    :try_start_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__updateAdapterOfProxyEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    nop

    .line 299
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 297
    return v0

    .line 299
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 300
    throw v1
.end method
