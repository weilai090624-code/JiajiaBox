.class public final Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;
.super Ljava/lang/Object;
.source "ProxyGroup_Dao_Impl.java"

# interfaces
.implements Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfProxyGroup:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfProxyGroup:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfProxyGroup:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$1;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__insertionAdapterOfProxyGroup:Landroidx/room/EntityInsertionAdapter;

    .line 76
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$2;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__deletionAdapterOfProxyGroup:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 89
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$3;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__updateAdapterOfProxyGroup:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 119
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$4;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$4;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    .line 127
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$5;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$5;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;

    .line 32
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
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

    .line 451
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allGroups()Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation

    .line 237
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM proxy_groups ORDER BY userOrder"

    .line 238
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM proxy_groups ORDER BY userOrder"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 239
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 240
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 242
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 243
    .local v0, "_cursorIndexOfId":I
    const-string v6, "userOrder"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 244
    .local v6, "_cursorIndexOfUserOrder":I
    const-string v7, "ungrouped"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 245
    .local v7, "_cursorIndexOfUngrouped":I
    const-string v8, "name"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 246
    .local v8, "_cursorIndexOfName":I
    const-string v9, "type"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 247
    .local v9, "_cursorIndexOfType":I
    const-string v10, "subscription"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 248
    .local v10, "_cursorIndexOfSubscription":I
    const-string v11, "order"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 249
    .local v11, "_cursorIndexOfOrder":I
    const-string v12, "isSelector"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 250
    .local v12, "_cursorIndexOfIsSelector":I
    const-string v13, "frontProxy"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 251
    .local v13, "_cursorIndexOfFrontProxy":I
    const-string v14, "landingProxy"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 252
    .local v14, "_cursorIndexOfLandingProxy":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v15

    .line 253
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyGroup;>;"
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 256
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 258
    .local v17, "_tmpId":J
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 261
    .local v19, "_tmpUserOrder":J
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 262
    .local v15, "_tmp":I
    const/16 v16, 0x1

    if-eqz v15, :cond_0

    const/16 v21, 0x1

    goto :goto_1

    :cond_0
    const/16 v21, 0x0

    .line 264
    .local v21, "_tmpUngrouped":Z
    :goto_1
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 265
    const/16 v22, 0x0

    move-object/from16 v31, v22

    .local v22, "_tmpName":Ljava/lang/String;
    goto :goto_2

    .line 267
    .end local v22    # "_tmpName":Ljava/lang/String;
    :cond_1
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v31, v22

    .line 270
    .local v31, "_tmpName":Ljava/lang/String;
    :goto_2
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 273
    .local v23, "_tmpType":I
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    move-object/from16 v32, v22

    .line 274
    .local v32, "_tmp_1":[B
    invoke-static/range {v32 .. v32}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->subscriptionDeserialize([B)Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v24

    .line 276
    .local v24, "_tmpSubscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 279
    .local v25, "_tmpOrder":I
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v33, v22

    .line 280
    .local v33, "_tmp_2":I
    if-eqz v33, :cond_2

    const/16 v26, 0x1

    goto :goto_3

    :cond_2
    const/16 v26, 0x0

    .line 282
    .local v26, "_tmpIsSelector":Z
    :goto_3
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 284
    .local v27, "_tmpFrontProxy":J
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 285
    .local v29, "_tmpLandingProxy":J
    new-instance v34, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object/from16 v16, v34

    move-object/from16 v22, v31

    invoke-direct/range {v16 .. v30}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJ)V

    move-object/from16 v16, v34

    .line 286
    .local v16, "_item":Lio/nekohasekai/sagernet/database/ProxyGroup;
    move/from16 v22, v0

    move-object/from16 v0, v16

    .end local v16    # "_item":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .local v0, "_item":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .local v22, "_cursorIndexOfId":I
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    move/from16 v0, v22

    .end local v0    # "_item":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v15    # "_tmp":I
    .end local v17    # "_tmpId":J
    .end local v19    # "_tmpUserOrder":J
    .end local v21    # "_tmpUngrouped":Z
    .end local v23    # "_tmpType":I
    .end local v24    # "_tmpSubscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .end local v25    # "_tmpOrder":I
    .end local v26    # "_tmpIsSelector":Z
    .end local v27    # "_tmpFrontProxy":J
    .end local v29    # "_tmpLandingProxy":J
    .end local v31    # "_tmpName":Ljava/lang/String;
    .end local v32    # "_tmp_1":[B
    .end local v33    # "_tmp_2":I
    goto :goto_0

    .line 288
    .end local v22    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    :cond_3
    nop

    .line 290
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 291
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 288
    return-object v3

    .line 290
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyGroup;>;"
    .end local v6    # "_cursorIndexOfUserOrder":I
    .end local v7    # "_cursorIndexOfUngrouped":I
    .end local v8    # "_cursorIndexOfName":I
    .end local v9    # "_cursorIndexOfType":I
    .end local v10    # "_cursorIndexOfSubscription":I
    .end local v11    # "_cursorIndexOfOrder":I
    .end local v12    # "_cursorIndexOfIsSelector":I
    .end local v13    # "_cursorIndexOfFrontProxy":I
    .end local v14    # "_cursorIndexOfLandingProxy":I
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 291
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 292
    throw v0
.end method

.method public createGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)J
    .locals 3
    .param p1, "group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "group"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 140
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 142
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__insertionAdapterOfProxyGroup:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 143
    .local v0, "_result":J
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    nop

    .line 146
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 144
    return-wide v0

    .line 146
    .end local v0    # "_result":J
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 147
    throw v0
.end method

.method public deleteById(J)I
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

    .line 200
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 201
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 202
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 203
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 205
    :try_start_0
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 208
    .local v2, "_result":I
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    nop

    .line 211
    :try_start_2
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 209
    return v2

    .line 211
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 212
    nop

    .end local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    .end local v1    # "_argIndex":I
    .end local p1    # "groupId":J
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 214
    .restart local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    .restart local v1    # "_argIndex":I
    .restart local p1    # "groupId":J
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 215
    throw v2
.end method

.method public deleteGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)V
    .locals 2
    .param p1, "group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "group"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 165
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 167
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__deletionAdapterOfProxyGroup:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 168
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 171
    nop

    .line 172
    return-void

    .line 170
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 171
    throw v0
.end method

.method public deleteGroup(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "groupList":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyGroup;>;"
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 177
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 179
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__deletionAdapterOfProxyGroup:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 180
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 183
    nop

    .line 184
    return-void

    .line 182
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 183
    throw v0
.end method

.method public getById(J)Lio/nekohasekai/sagernet/database/ProxyGroup;
    .locals 36
    .param p1, "groupId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 389
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM proxy_groups WHERE id = ?"

    .line 390
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM proxy_groups WHERE id = ?"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 391
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 392
    .local v5, "_argIndex":I
    move-wide/from16 v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 393
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 394
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v4, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 396
    .local v8, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v8, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 397
    .local v0, "_cursorIndexOfId":I
    const-string v10, "userOrder"

    invoke-static {v8, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 398
    .local v10, "_cursorIndexOfUserOrder":I
    const-string v11, "ungrouped"

    invoke-static {v8, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 399
    .local v11, "_cursorIndexOfUngrouped":I
    const-string v12, "name"

    invoke-static {v8, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 400
    .local v12, "_cursorIndexOfName":I
    const-string v13, "type"

    invoke-static {v8, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 401
    .local v13, "_cursorIndexOfType":I
    const-string v14, "subscription"

    invoke-static {v8, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 402
    .local v14, "_cursorIndexOfSubscription":I
    const-string v15, "order"

    invoke-static {v8, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 403
    .local v15, "_cursorIndexOfOrder":I
    const-string v3, "isSelector"

    invoke-static {v8, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 404
    .local v3, "_cursorIndexOfIsSelector":I
    const-string v9, "frontProxy"

    invoke-static {v8, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 405
    .local v9, "_cursorIndexOfFrontProxy":I
    const-string v1, "landingProxy"

    invoke-static {v8, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 407
    .local v1, "_cursorIndexOfLandingProxy":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 409
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 411
    .local v19, "_tmpId":J
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 414
    .local v21, "_tmpUserOrder":J
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 415
    .local v17, "_tmp":I
    if-eqz v17, :cond_0

    const/16 v23, 0x1

    goto :goto_0

    :cond_0
    const/16 v23, 0x0

    .line 417
    .local v23, "_tmpUngrouped":Z
    :goto_0
    invoke-interface {v8, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 418
    const/16 v18, 0x0

    move-object/from16 v33, v18

    .local v18, "_tmpName":Ljava/lang/String;
    goto :goto_1

    .line 420
    .end local v18    # "_tmpName":Ljava/lang/String;
    :cond_1
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v33, v18

    .line 423
    .local v33, "_tmpName":Ljava/lang/String;
    :goto_1
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 426
    .local v25, "_tmpType":I
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    move-object/from16 v34, v18

    .line 427
    .local v34, "_tmp_1":[B
    invoke-static/range {v34 .. v34}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->subscriptionDeserialize([B)Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v26

    .line 429
    .local v26, "_tmpSubscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 432
    .local v27, "_tmpOrder":I
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v35, v18

    .line 433
    .local v35, "_tmp_2":I
    if-eqz v35, :cond_2

    const/16 v28, 0x1

    goto :goto_2

    :cond_2
    const/16 v28, 0x0

    .line 435
    .local v28, "_tmpIsSelector":Z
    :goto_2
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 437
    .local v29, "_tmpFrontProxy":J
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 438
    .local v31, "_tmpLandingProxy":J
    new-instance v16, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object/from16 v18, v16

    move-object/from16 v24, v33

    invoke-direct/range {v18 .. v32}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    .end local v17    # "_tmp":I
    .end local v19    # "_tmpId":J
    .end local v21    # "_tmpUserOrder":J
    .end local v23    # "_tmpUngrouped":Z
    .end local v25    # "_tmpType":I
    .end local v26    # "_tmpSubscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .end local v27    # "_tmpOrder":I
    .end local v28    # "_tmpIsSelector":Z
    .end local v29    # "_tmpFrontProxy":J
    .end local v31    # "_tmpLandingProxy":J
    .end local v33    # "_tmpName":Ljava/lang/String;
    .end local v34    # "_tmp_1":[B
    .end local v35    # "_tmp_2":I
    .local v16, "_result":Lio/nekohasekai/sagernet/database/ProxyGroup;
    goto :goto_3

    .line 440
    .end local v16    # "_result":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :cond_3
    const/16 v16, 0x0

    .line 442
    .restart local v16    # "_result":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :goto_3
    nop

    .line 444
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 445
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 442
    return-object v16

    .line 444
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfLandingProxy":I
    .end local v3    # "_cursorIndexOfIsSelector":I
    .end local v9    # "_cursorIndexOfFrontProxy":I
    .end local v10    # "_cursorIndexOfUserOrder":I
    .end local v11    # "_cursorIndexOfUngrouped":I
    .end local v12    # "_cursorIndexOfName":I
    .end local v13    # "_cursorIndexOfType":I
    .end local v14    # "_cursorIndexOfSubscription":I
    .end local v15    # "_cursorIndexOfOrder":I
    .end local v16    # "_result":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 445
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 446
    throw v0
.end method

.method public insert(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p1, "groupList":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyGroup;>;"
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 153
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__insertionAdapterOfProxyGroup:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 156
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 159
    nop

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 159
    throw v0
.end method

.method public nextOrder()Ljava/lang/Long;
    .locals 6

    .line 363
    const-string v0, "SELECT MAX(userOrder) + 1 FROM proxy_groups"

    .line 364
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT MAX(userOrder) + 1 FROM proxy_groups"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 365
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 366
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 369
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    const/4 v2, 0x0

    .local v2, "_tmp":Ljava/lang/Long;
    goto :goto_0

    .line 374
    .end local v2    # "_tmp":Ljava/lang/Long;
    :cond_0
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .restart local v2    # "_tmp":Ljava/lang/Long;
    :goto_0
    nop

    .line 377
    .local v2, "_result":Ljava/lang/Long;
    goto :goto_1

    .line 378
    .end local v2    # "_result":Ljava/lang/Long;
    :cond_1
    const/4 v2, 0x0

    .line 380
    .restart local v2    # "_result":Ljava/lang/Long;
    :goto_1
    nop

    .line 382
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 383
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 380
    return-object v2

    .line 382
    .end local v2    # "_result":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 383
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 384
    throw v2
.end method

.method public reset()V
    .locals 3

    .line 220
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 221
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 223
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 226
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :try_start_2
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    nop

    .line 231
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 232
    nop

    .line 233
    return-void

    .line 228
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 229
    nop

    .end local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 231
    .restart local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 232
    throw v1
.end method

.method public subscriptions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 297
    .local p1, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyGroup;>;>;"
    const-string v0, "SELECT * FROM proxy_groups WHERE type = 1"

    .line 298
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM proxy_groups WHERE type = 1"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 299
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v3

    .line 300
    .local v3, "_cancellationSignal":Landroid/os/CancellationSignal;
    iget-object v4, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v5, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$6;

    invoke-direct {v5, p0, v1}, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$6;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v4, v2, v3, v5, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public updateGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)V
    .locals 2
    .param p1, "group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "group"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 189
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 191
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__updateAdapterOfProxyGroup:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 192
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 195
    throw v0
.end method
