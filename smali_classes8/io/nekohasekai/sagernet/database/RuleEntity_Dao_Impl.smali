.class public final Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;
.super Ljava/lang/Object;
.source "RuleEntity_Dao_Impl.java"

# interfaces
.implements Lio/nekohasekai/sagernet/database/RuleEntity$Dao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfRuleEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfRuleEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfRuleEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 41
    new-instance v0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl$1;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__insertionAdapterOfRuleEntity:Landroidx/room/EntityInsertionAdapter;

    .line 69
    new-instance v0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl$2;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__deletionAdapterOfRuleEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 82
    new-instance v0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl$3;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__updateAdapterOfRuleEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 111
    new-instance v0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl$4;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl$4;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    .line 119
    new-instance v0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl$5;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl$5;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    .line 127
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

    .line 536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allRules()Ljava/util/List;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation

    .line 307
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM rules ORDER BY userOrder"

    .line 308
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM rules ORDER BY userOrder"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 309
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 310
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 312
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 313
    .local v0, "_cursorIndexOfId":I
    const-string v6, "name"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 314
    .local v6, "_cursorIndexOfName":I
    const-string v7, "config"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 315
    .local v7, "_cursorIndexOfConfig":I
    const-string v8, "userOrder"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 316
    .local v8, "_cursorIndexOfUserOrder":I
    const-string v9, "enabled"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 317
    .local v9, "_cursorIndexOfEnabled":I
    const-string v10, "domains"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 318
    .local v10, "_cursorIndexOfDomains":I
    const-string v11, "ip"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 319
    .local v11, "_cursorIndexOfIp":I
    const-string v12, "port"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 320
    .local v12, "_cursorIndexOfPort":I
    const-string v13, "sourcePort"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 321
    .local v13, "_cursorIndexOfSourcePort":I
    const-string v14, "network"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 322
    .local v14, "_cursorIndexOfNetwork":I
    const-string v15, "source"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 323
    .local v15, "_cursorIndexOfSource":I
    const-string v3, "protocol"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 324
    .local v3, "_cursorIndexOfProtocol":I
    const-string v1, "outbound"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 325
    .local v1, "_cursorIndexOfOutbound":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "packages"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 326
    .local v2, "_cursorIndexOfPackages":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v18, v2

    .end local v2    # "_cursorIndexOfPackages":I
    .local v18, "_cursorIndexOfPackages":I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 327
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/RuleEntity;>;"
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 332
    .local v20, "_tmpId":J
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 334
    .local v22, "_tmpName":Ljava/lang/String;
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 336
    .local v23, "_tmpConfig":Ljava/lang/String;
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 339
    .local v24, "_tmpUserOrder":J
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 340
    .local v4, "_tmp":I
    if-eqz v4, :cond_0

    const/16 v19, 0x1

    const/16 v26, 0x1

    goto :goto_1

    :cond_0
    const/16 v26, 0x0

    .line 342
    .local v26, "_tmpEnabled":Z
    :goto_1
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 344
    .local v27, "_tmpDomains":Ljava/lang/String;
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 346
    .local v28, "_tmpIp":Ljava/lang/String;
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 348
    .local v29, "_tmpPort":Ljava/lang/String;
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 350
    .local v30, "_tmpSourcePort":Ljava/lang/String;
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 352
    .local v31, "_tmpNetwork":Ljava/lang/String;
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 354
    .local v32, "_tmpSource":Ljava/lang/String;
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 356
    .local v33, "_tmpProtocol":Ljava/lang/String;
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 359
    .local v34, "_tmpOutbound":J
    move/from16 v37, v0

    move/from16 v0, v18

    .end local v18    # "_cursorIndexOfPackages":I
    .local v0, "_cursorIndexOfPackages":I
    .local v37, "_cursorIndexOfId":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 360
    .local v18, "_tmp_1":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lio/nekohasekai/sagernet/database/StringCollectionConverter;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v36

    .line 361
    .local v36, "_tmpPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v38, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object/from16 v19, v38

    invoke-direct/range {v19 .. v36}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)V

    move-object/from16 v19, v38

    .line 362
    .local v19, "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    move/from16 v38, v0

    move-object/from16 v0, v19

    .end local v19    # "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    .local v0, "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    .local v38, "_cursorIndexOfPackages":I
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    move/from16 v0, v37

    move/from16 v18, v38

    .end local v0    # "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v4    # "_tmp":I
    .end local v18    # "_tmp_1":Ljava/lang/String;
    .end local v20    # "_tmpId":J
    .end local v22    # "_tmpName":Ljava/lang/String;
    .end local v23    # "_tmpConfig":Ljava/lang/String;
    .end local v24    # "_tmpUserOrder":J
    .end local v26    # "_tmpEnabled":Z
    .end local v27    # "_tmpDomains":Ljava/lang/String;
    .end local v28    # "_tmpIp":Ljava/lang/String;
    .end local v29    # "_tmpPort":Ljava/lang/String;
    .end local v30    # "_tmpSourcePort":Ljava/lang/String;
    .end local v31    # "_tmpNetwork":Ljava/lang/String;
    .end local v32    # "_tmpSource":Ljava/lang/String;
    .end local v33    # "_tmpProtocol":Ljava/lang/String;
    .end local v34    # "_tmpOutbound":J
    .end local v36    # "_tmpPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 364
    .end local v37    # "_cursorIndexOfId":I
    .end local v38    # "_cursorIndexOfPackages":I
    .local v0, "_cursorIndexOfId":I
    .local v18, "_cursorIndexOfPackages":I
    :cond_1
    nop

    .line 366
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 367
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 364
    return-object v2

    .line 366
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfOutbound":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/RuleEntity;>;"
    .end local v3    # "_cursorIndexOfProtocol":I
    .end local v6    # "_cursorIndexOfName":I
    .end local v7    # "_cursorIndexOfConfig":I
    .end local v8    # "_cursorIndexOfUserOrder":I
    .end local v9    # "_cursorIndexOfEnabled":I
    .end local v10    # "_cursorIndexOfDomains":I
    .end local v11    # "_cursorIndexOfIp":I
    .end local v12    # "_cursorIndexOfPort":I
    .end local v13    # "_cursorIndexOfSourcePort":I
    .end local v14    # "_cursorIndexOfNetwork":I
    .end local v15    # "_cursorIndexOfSource":I
    .end local v18    # "_cursorIndexOfPackages":I
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
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 367
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 368
    throw v0
.end method

.method public checkVpnNeeded()Ljava/util/List;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation

    .line 241
    move-object/from16 v1, p0

    const-string v2, "SELECT * from rules WHERE (packages != \'\') AND enabled = 1"

    .line 242
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * from rules WHERE (packages != \'\') AND enabled = 1"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 243
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 244
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 246
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 247
    .local v0, "_cursorIndexOfId":I
    const-string v6, "name"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 248
    .local v6, "_cursorIndexOfName":I
    const-string v7, "config"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 249
    .local v7, "_cursorIndexOfConfig":I
    const-string v8, "userOrder"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 250
    .local v8, "_cursorIndexOfUserOrder":I
    const-string v9, "enabled"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 251
    .local v9, "_cursorIndexOfEnabled":I
    const-string v10, "domains"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 252
    .local v10, "_cursorIndexOfDomains":I
    const-string v11, "ip"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 253
    .local v11, "_cursorIndexOfIp":I
    const-string v12, "port"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 254
    .local v12, "_cursorIndexOfPort":I
    const-string v13, "sourcePort"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 255
    .local v13, "_cursorIndexOfSourcePort":I
    const-string v14, "network"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 256
    .local v14, "_cursorIndexOfNetwork":I
    const-string v15, "source"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 257
    .local v15, "_cursorIndexOfSource":I
    const-string v3, "protocol"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 258
    .local v3, "_cursorIndexOfProtocol":I
    const-string v1, "outbound"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 259
    .local v1, "_cursorIndexOfOutbound":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "packages"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    .local v2, "_cursorIndexOfPackages":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v18, v2

    .end local v2    # "_cursorIndexOfPackages":I
    .local v18, "_cursorIndexOfPackages":I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 261
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/RuleEntity;>;"
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 266
    .local v20, "_tmpId":J
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 268
    .local v22, "_tmpName":Ljava/lang/String;
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 270
    .local v23, "_tmpConfig":Ljava/lang/String;
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 273
    .local v24, "_tmpUserOrder":J
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 274
    .local v4, "_tmp":I
    if-eqz v4, :cond_0

    const/16 v19, 0x1

    const/16 v26, 0x1

    goto :goto_1

    :cond_0
    const/16 v26, 0x0

    .line 276
    .local v26, "_tmpEnabled":Z
    :goto_1
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 278
    .local v27, "_tmpDomains":Ljava/lang/String;
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 280
    .local v28, "_tmpIp":Ljava/lang/String;
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 282
    .local v29, "_tmpPort":Ljava/lang/String;
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 284
    .local v30, "_tmpSourcePort":Ljava/lang/String;
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 286
    .local v31, "_tmpNetwork":Ljava/lang/String;
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 288
    .local v32, "_tmpSource":Ljava/lang/String;
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 290
    .local v33, "_tmpProtocol":Ljava/lang/String;
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 293
    .local v34, "_tmpOutbound":J
    move/from16 v37, v0

    move/from16 v0, v18

    .end local v18    # "_cursorIndexOfPackages":I
    .local v0, "_cursorIndexOfPackages":I
    .local v37, "_cursorIndexOfId":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 294
    .local v18, "_tmp_1":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lio/nekohasekai/sagernet/database/StringCollectionConverter;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v36

    .line 295
    .local v36, "_tmpPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v38, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object/from16 v19, v38

    invoke-direct/range {v19 .. v36}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)V

    move-object/from16 v19, v38

    .line 296
    .local v19, "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    move/from16 v38, v0

    move-object/from16 v0, v19

    .end local v19    # "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    .local v0, "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    .local v38, "_cursorIndexOfPackages":I
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    move/from16 v0, v37

    move/from16 v18, v38

    .end local v0    # "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v4    # "_tmp":I
    .end local v18    # "_tmp_1":Ljava/lang/String;
    .end local v20    # "_tmpId":J
    .end local v22    # "_tmpName":Ljava/lang/String;
    .end local v23    # "_tmpConfig":Ljava/lang/String;
    .end local v24    # "_tmpUserOrder":J
    .end local v26    # "_tmpEnabled":Z
    .end local v27    # "_tmpDomains":Ljava/lang/String;
    .end local v28    # "_tmpIp":Ljava/lang/String;
    .end local v29    # "_tmpPort":Ljava/lang/String;
    .end local v30    # "_tmpSourcePort":Ljava/lang/String;
    .end local v31    # "_tmpNetwork":Ljava/lang/String;
    .end local v32    # "_tmpSource":Ljava/lang/String;
    .end local v33    # "_tmpProtocol":Ljava/lang/String;
    .end local v34    # "_tmpOutbound":J
    .end local v36    # "_tmpPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 298
    .end local v37    # "_cursorIndexOfId":I
    .end local v38    # "_cursorIndexOfPackages":I
    .local v0, "_cursorIndexOfId":I
    .local v18, "_cursorIndexOfPackages":I
    :cond_1
    nop

    .line 300
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 301
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 298
    return-object v2

    .line 300
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfOutbound":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/RuleEntity;>;"
    .end local v3    # "_cursorIndexOfProtocol":I
    .end local v6    # "_cursorIndexOfName":I
    .end local v7    # "_cursorIndexOfConfig":I
    .end local v8    # "_cursorIndexOfUserOrder":I
    .end local v9    # "_cursorIndexOfEnabled":I
    .end local v10    # "_cursorIndexOfDomains":I
    .end local v11    # "_cursorIndexOfIp":I
    .end local v12    # "_cursorIndexOfPort":I
    .end local v13    # "_cursorIndexOfSourcePort":I
    .end local v14    # "_cursorIndexOfNetwork":I
    .end local v15    # "_cursorIndexOfSource":I
    .end local v18    # "_cursorIndexOfPackages":I
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
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 301
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 302
    throw v0
.end method

.method public createRule(Lio/nekohasekai/sagernet/database/RuleEntity;)J
    .locals 3
    .param p1, "rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rule"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 132
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 134
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__insertionAdapterOfRuleEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 135
    .local v0, "_result":J
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    nop

    .line 138
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 136
    return-wide v0

    .line 138
    .end local v0    # "_result":J
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 139
    throw v0
.end method

.method public deleteById(J)I
    .locals 4
    .param p1, "ruleId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ruleId"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 205
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 206
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 207
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 209
    :try_start_0
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 212
    .local v2, "_result":I
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    nop

    .line 215
    :try_start_2
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 218
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 213
    return v2

    .line 215
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 216
    nop

    .end local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    .end local v1    # "_argIndex":I
    .end local p1    # "ruleId":J
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    .restart local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    .restart local v1    # "_argIndex":I
    .restart local p1    # "ruleId":J
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 219
    throw v2
.end method

.method public deleteRule(Lio/nekohasekai/sagernet/database/RuleEntity;)V
    .locals 2
    .param p1, "rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rule"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 157
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 159
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__deletionAdapterOfRuleEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 160
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 163
    throw v0
.end method

.method public deleteRules(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rules"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/RuleEntity;>;"
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 169
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 171
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__deletionAdapterOfRuleEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 172
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 175
    nop

    .line 176
    return-void

    .line 174
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 175
    throw v0
.end method

.method public enabledRules(Z)Ljava/util/List;
    .locals 41
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation

    .line 373
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM rules WHERE enabled = ? ORDER BY userOrder"

    .line 374
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM rules WHERE enabled = ? ORDER BY userOrder"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 375
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 376
    .local v5, "_argIndex":I
    move/from16 v6, p1

    .line 377
    .local v6, "_tmp":I
    int-to-long v7, v6

    invoke-virtual {v4, v5, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 378
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 379
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v4, v8, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 381
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 382
    .local v0, "_cursorIndexOfId":I
    const-string v9, "name"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 383
    .local v9, "_cursorIndexOfName":I
    const-string v10, "config"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 384
    .local v10, "_cursorIndexOfConfig":I
    const-string v11, "userOrder"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 385
    .local v11, "_cursorIndexOfUserOrder":I
    const-string v12, "enabled"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 386
    .local v12, "_cursorIndexOfEnabled":I
    const-string v13, "domains"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 387
    .local v13, "_cursorIndexOfDomains":I
    const-string v14, "ip"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 388
    .local v14, "_cursorIndexOfIp":I
    const-string v15, "port"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 389
    .local v15, "_cursorIndexOfPort":I
    const-string v3, "sourcePort"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 390
    .local v3, "_cursorIndexOfSourcePort":I
    const-string v8, "network"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 391
    .local v8, "_cursorIndexOfNetwork":I
    const-string v1, "source"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 392
    .local v1, "_cursorIndexOfSource":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "protocol"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 393
    .local v2, "_cursorIndexOfProtocol":I
    move/from16 v17, v5

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_2
    const-string v5, "outbound"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 394
    .local v5, "_cursorIndexOfOutbound":I
    move/from16 v18, v6

    .end local v6    # "_tmp":I
    .local v18, "_tmp":I
    :try_start_3
    const-string v6, "packages"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 395
    .local v6, "_cursorIndexOfPackages":I
    move-object/from16 v19, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v19, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v20, v6

    .end local v6    # "_cursorIndexOfPackages":I
    .local v20, "_cursorIndexOfPackages":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 396
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/RuleEntity;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 399
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 401
    .local v22, "_tmpId":J
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 403
    .local v24, "_tmpName":Ljava/lang/String;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 405
    .local v25, "_tmpConfig":Ljava/lang/String;
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 408
    .local v26, "_tmpUserOrder":J
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 409
    .local v6, "_tmp_1":I
    if-eqz v6, :cond_0

    const/16 v28, 0x1

    goto :goto_1

    :cond_0
    const/16 v28, 0x0

    .line 411
    .local v28, "_tmpEnabled":Z
    :goto_1
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 413
    .local v29, "_tmpDomains":Ljava/lang/String;
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 415
    .local v30, "_tmpIp":Ljava/lang/String;
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 417
    .local v31, "_tmpPort":Ljava/lang/String;
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 419
    .local v32, "_tmpSourcePort":Ljava/lang/String;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 421
    .local v33, "_tmpNetwork":Ljava/lang/String;
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 423
    .local v34, "_tmpSource":Ljava/lang/String;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 425
    .local v35, "_tmpProtocol":Ljava/lang/String;
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 428
    .local v36, "_tmpOutbound":J
    move/from16 v39, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfPackages":I
    .local v0, "_cursorIndexOfPackages":I
    .local v39, "_cursorIndexOfId":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 429
    .local v20, "_tmp_2":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lio/nekohasekai/sagernet/database/StringCollectionConverter;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v38

    .line 430
    .local v38, "_tmpPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v40, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object/from16 v21, v40

    invoke-direct/range {v21 .. v38}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)V

    move-object/from16 v21, v40

    .line 431
    .local v21, "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    move/from16 v40, v0

    move-object/from16 v0, v21

    .end local v21    # "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    .local v0, "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    .local v40, "_cursorIndexOfPackages":I
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    move/from16 v0, v39

    move/from16 v20, v40

    .end local v0    # "_item":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v6    # "_tmp_1":I
    .end local v20    # "_tmp_2":Ljava/lang/String;
    .end local v22    # "_tmpId":J
    .end local v24    # "_tmpName":Ljava/lang/String;
    .end local v25    # "_tmpConfig":Ljava/lang/String;
    .end local v26    # "_tmpUserOrder":J
    .end local v28    # "_tmpEnabled":Z
    .end local v29    # "_tmpDomains":Ljava/lang/String;
    .end local v30    # "_tmpIp":Ljava/lang/String;
    .end local v31    # "_tmpPort":Ljava/lang/String;
    .end local v32    # "_tmpSourcePort":Ljava/lang/String;
    .end local v33    # "_tmpNetwork":Ljava/lang/String;
    .end local v34    # "_tmpSource":Ljava/lang/String;
    .end local v35    # "_tmpProtocol":Ljava/lang/String;
    .end local v36    # "_tmpOutbound":J
    .end local v38    # "_tmpPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 433
    .end local v39    # "_cursorIndexOfId":I
    .end local v40    # "_cursorIndexOfPackages":I
    .local v0, "_cursorIndexOfId":I
    .local v20, "_cursorIndexOfPackages":I
    :cond_1
    nop

    .line 435
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 436
    invoke-virtual/range {v19 .. v19}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 433
    return-object v4

    .line 435
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfSource":I
    .end local v2    # "_cursorIndexOfProtocol":I
    .end local v3    # "_cursorIndexOfSourcePort":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/RuleEntity;>;"
    .end local v5    # "_cursorIndexOfOutbound":I
    .end local v8    # "_cursorIndexOfNetwork":I
    .end local v9    # "_cursorIndexOfName":I
    .end local v10    # "_cursorIndexOfConfig":I
    .end local v11    # "_cursorIndexOfUserOrder":I
    .end local v12    # "_cursorIndexOfEnabled":I
    .end local v13    # "_cursorIndexOfDomains":I
    .end local v14    # "_cursorIndexOfIp":I
    .end local v15    # "_cursorIndexOfPort":I
    .end local v20    # "_cursorIndexOfPackages":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v19    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v19    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v18    # "_tmp":I
    .end local v19    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v6, "_tmp":I
    :catchall_2
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v18, v6

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_tmp":I
    .restart local v18    # "_tmp":I
    .restart local v19    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v17    # "_argIndex":I
    .end local v18    # "_tmp":I
    .end local v19    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    .restart local v6    # "_tmp":I
    :catchall_3
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .end local v6    # "_tmp":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_tmp":I
    .restart local v19    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_tmp":I
    .end local v19    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    .restart local v6    # "_tmp":I
    :catchall_4
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v19, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .end local v6    # "_tmp":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_tmp":I
    .restart local v19    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 436
    invoke-virtual/range {v19 .. v19}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 437
    throw v0
.end method

.method public getById(J)Lio/nekohasekai/sagernet/database/RuleEntity;
    .locals 39
    .param p1, "ruleId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ruleId"
        }
    .end annotation

    .line 468
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM rules WHERE id = ?"

    .line 469
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM rules WHERE id = ?"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 470
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 471
    .local v5, "_argIndex":I
    move-wide/from16 v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 472
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 473
    iget-object v0, v1, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v4, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 475
    .local v8, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v8, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, "_cursorIndexOfId":I
    const-string v10, "name"

    invoke-static {v8, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 477
    .local v10, "_cursorIndexOfName":I
    const-string v11, "config"

    invoke-static {v8, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 478
    .local v11, "_cursorIndexOfConfig":I
    const-string v12, "userOrder"

    invoke-static {v8, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 479
    .local v12, "_cursorIndexOfUserOrder":I
    const-string v13, "enabled"

    invoke-static {v8, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 480
    .local v13, "_cursorIndexOfEnabled":I
    const-string v14, "domains"

    invoke-static {v8, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 481
    .local v14, "_cursorIndexOfDomains":I
    const-string v15, "ip"

    invoke-static {v8, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 482
    .local v15, "_cursorIndexOfIp":I
    const-string v3, "port"

    invoke-static {v8, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 483
    .local v3, "_cursorIndexOfPort":I
    const-string v9, "sourcePort"

    invoke-static {v8, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 484
    .local v9, "_cursorIndexOfSourcePort":I
    const-string v1, "network"

    invoke-static {v8, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 485
    .local v1, "_cursorIndexOfNetwork":I
    move-object/from16 v18, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v18, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "source"

    invoke-static {v8, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 486
    .local v2, "_cursorIndexOfSource":I
    move/from16 v19, v5

    .end local v5    # "_argIndex":I
    .local v19, "_argIndex":I
    :try_start_2
    const-string v5, "protocol"

    invoke-static {v8, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 487
    .local v5, "_cursorIndexOfProtocol":I
    const-string v6, "outbound"

    invoke-static {v8, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 488
    .local v6, "_cursorIndexOfOutbound":I
    const-string v7, "packages"

    invoke-static {v8, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 490
    .local v7, "_cursorIndexOfPackages":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 492
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 494
    .local v22, "_tmpId":J
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 496
    .local v24, "_tmpName":Ljava/lang/String;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 498
    .local v25, "_tmpConfig":Ljava/lang/String;
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 501
    .local v26, "_tmpUserOrder":J
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 502
    .local v20, "_tmp":I
    if-eqz v20, :cond_0

    const/16 v28, 0x1

    goto :goto_0

    :cond_0
    const/16 v28, 0x0

    .line 504
    .local v28, "_tmpEnabled":Z
    :goto_0
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 506
    .local v29, "_tmpDomains":Ljava/lang/String;
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 508
    .local v30, "_tmpIp":Ljava/lang/String;
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 510
    .local v31, "_tmpPort":Ljava/lang/String;
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 512
    .local v32, "_tmpSourcePort":Ljava/lang/String;
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 514
    .local v33, "_tmpNetwork":Ljava/lang/String;
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 516
    .local v34, "_tmpSource":Ljava/lang/String;
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 518
    .local v35, "_tmpProtocol":Ljava/lang/String;
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 521
    .local v36, "_tmpOutbound":J
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 522
    .local v16, "_tmp_1":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lio/nekohasekai/sagernet/database/StringCollectionConverter;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v38

    .line 523
    .local v38, "_tmpPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v17, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object/from16 v21, v17

    invoke-direct/range {v21 .. v38}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v16, v17

    .line 524
    .end local v20    # "_tmp":I
    .end local v22    # "_tmpId":J
    .end local v24    # "_tmpName":Ljava/lang/String;
    .end local v25    # "_tmpConfig":Ljava/lang/String;
    .end local v26    # "_tmpUserOrder":J
    .end local v28    # "_tmpEnabled":Z
    .end local v29    # "_tmpDomains":Ljava/lang/String;
    .end local v30    # "_tmpIp":Ljava/lang/String;
    .end local v31    # "_tmpPort":Ljava/lang/String;
    .end local v32    # "_tmpSourcePort":Ljava/lang/String;
    .end local v33    # "_tmpNetwork":Ljava/lang/String;
    .end local v34    # "_tmpSource":Ljava/lang/String;
    .end local v35    # "_tmpProtocol":Ljava/lang/String;
    .end local v36    # "_tmpOutbound":J
    .end local v38    # "_tmpPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v16, "_result":Lio/nekohasekai/sagernet/database/RuleEntity;
    goto :goto_1

    .line 525
    .end local v16    # "_result":Lio/nekohasekai/sagernet/database/RuleEntity;
    :cond_1
    const/16 v16, 0x0

    .line 527
    .restart local v16    # "_result":Lio/nekohasekai/sagernet/database/RuleEntity;
    :goto_1
    nop

    .line 529
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 530
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 527
    return-object v16

    .line 529
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfNetwork":I
    .end local v2    # "_cursorIndexOfSource":I
    .end local v3    # "_cursorIndexOfPort":I
    .end local v5    # "_cursorIndexOfProtocol":I
    .end local v6    # "_cursorIndexOfOutbound":I
    .end local v7    # "_cursorIndexOfPackages":I
    .end local v9    # "_cursorIndexOfSourcePort":I
    .end local v10    # "_cursorIndexOfName":I
    .end local v11    # "_cursorIndexOfConfig":I
    .end local v12    # "_cursorIndexOfUserOrder":I
    .end local v13    # "_cursorIndexOfEnabled":I
    .end local v14    # "_cursorIndexOfDomains":I
    .end local v15    # "_cursorIndexOfIp":I
    .end local v16    # "_result":Lio/nekohasekai/sagernet/database/RuleEntity;
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v19    # "_argIndex":I
    .local v5, "_argIndex":I
    :catchall_1
    move-exception v0

    move/from16 v19, v5

    .end local v5    # "_argIndex":I
    .restart local v19    # "_argIndex":I
    goto :goto_2

    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argIndex":I
    .local v2, "_sql":Ljava/lang/String;
    .restart local v5    # "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v19, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v5    # "_argIndex":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argIndex":I
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 530
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 531
    throw v0
.end method

.method public insert(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rules"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/RuleEntity;>;"
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 145
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__insertionAdapterOfRuleEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 148
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 151
    nop

    .line 152
    return-void

    .line 150
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 151
    throw v0
.end method

.method public nextOrder()Ljava/lang/Long;
    .locals 6

    .line 442
    const-string v0, "SELECT MAX(userOrder) + 1 FROM rules"

    .line 443
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT MAX(userOrder) + 1 FROM rules"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 444
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 445
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 448
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 450
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    const/4 v2, 0x0

    .local v2, "_tmp":Ljava/lang/Long;
    goto :goto_0

    .line 453
    .end local v2    # "_tmp":Ljava/lang/Long;
    :cond_0
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .restart local v2    # "_tmp":Ljava/lang/Long;
    :goto_0
    nop

    .line 456
    .local v2, "_result":Ljava/lang/Long;
    goto :goto_1

    .line 457
    .end local v2    # "_result":Ljava/lang/Long;
    :cond_1
    const/4 v2, 0x0

    .line 459
    .restart local v2    # "_result":Ljava/lang/Long;
    :goto_1
    nop

    .line 461
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 462
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 459
    return-object v2

    .line 461
    .end local v2    # "_result":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 462
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 463
    throw v2
.end method

.method public reset()V
    .locals 3

    .line 224
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 225
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 227
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :try_start_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 230
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :try_start_2
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    nop

    .line 235
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 236
    nop

    .line 237
    return-void

    .line 232
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 233
    nop

    .end local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    .restart local v0    # "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__preparedStmtOfReset:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 236
    throw v1
.end method

.method public updateRule(Lio/nekohasekai/sagernet/database/RuleEntity;)V
    .locals 2
    .param p1, "rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rule"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 181
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 183
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__updateAdapterOfRuleEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 184
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 187
    nop

    .line 188
    return-void

    .line 186
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 187
    throw v0
.end method

.method public updateRules(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rules"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/RuleEntity;>;"
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 193
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 195
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__updateAdapterOfRuleEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 196
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 199
    nop

    .line 200
    return-void

    .line 198
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity_Dao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 199
    throw v0
.end method
