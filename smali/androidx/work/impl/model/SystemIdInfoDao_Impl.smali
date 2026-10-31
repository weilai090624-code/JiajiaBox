.class public final Landroidx/work/impl/model/SystemIdInfoDao_Impl;
.super Ljava/lang/Object;
.source "SystemIdInfoDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/SystemIdInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfSystemIdInfo:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Landroidx/work/impl/model/SystemIdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfRemoveSystemIdInfo:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveSystemIdInfo_1:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .registers 3
    .param p1, "__db"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 31
    new-instance v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;-><init>(Landroidx/work/impl/model/SystemIdInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__insertionAdapterOfSystemIdInfo:Landroidx/room/EntityInsertionAdapter;

    .line 48
    new-instance v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/SystemIdInfoDao_Impl$2;-><init>(Landroidx/work/impl/model/SystemIdInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/SharedSQLiteStatement;

    .line 55
    new-instance v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl$3;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/SystemIdInfoDao_Impl$3;-><init>(Landroidx/work/impl/model/SystemIdInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo_1:Landroidx/room/SharedSQLiteStatement;

    .line 62
    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSystemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;
    .registers 3
    .param p1, "id"    # Landroidx/work/impl/model/WorkGenerationalId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 185
    invoke-static {p0, p1}, Landroidx/work/impl/model/SystemIdInfoDao$DefaultImpls;->getSystemIdInfo(Landroidx/work/impl/model/SystemIdInfoDao;Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSystemIdInfo(Ljava/lang/String;I)Landroidx/work/impl/model/SystemIdInfo;
    .registers 14
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "generation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "workSpecId",
            "generation"
        }
    .end annotation

    .line 120
    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    .line 121
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 122
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 123
    .local v2, "_argIndex":I
    if-nez p1, :cond_10

    .line 124
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_13

    .line 126
    :cond_10
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 128
    :goto_13
    const/4 v2, 0x2

    .line 129
    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 130
    iget-object v3, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 131
    iget-object v3, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 133
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_25
    const-string/jumbo v4, "work_spec_id"

    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 134
    .local v4, "_cursorIndexOfWorkSpecId":I
    const-string v5, "generation"

    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 135
    .local v5, "_cursorIndexOfGeneration":I
    const-string/jumbo v6, "system_id"

    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 137
    .local v6, "_cursorIndexOfSystemId":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 139
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 140
    const/4 v7, 0x0

    .local v7, "_tmpWorkSpecId":Ljava/lang/String;
    goto :goto_4b

    .line 142
    .end local v7    # "_tmpWorkSpecId":Ljava/lang/String;
    :cond_47
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 145
    .restart local v7    # "_tmpWorkSpecId":Ljava/lang/String;
    :goto_4b
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 147
    .local v8, "_tmpGeneration":I
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 148
    .local v9, "_tmpSystemId":I
    new-instance v10, Landroidx/work/impl/model/SystemIdInfo;

    invoke-direct {v10, v7, v8, v9}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;II)V
    :try_end_58
    .catchall {:try_start_25 .. :try_end_58} :catchall_63

    move-object v7, v10

    .line 149
    .end local v8    # "_tmpGeneration":I
    .end local v9    # "_tmpSystemId":I
    .local v7, "_result":Landroidx/work/impl/model/SystemIdInfo;
    goto :goto_5b

    .line 150
    .end local v7    # "_result":Landroidx/work/impl/model/SystemIdInfo;
    :cond_5a
    const/4 v7, 0x0

    .line 152
    .restart local v7    # "_result":Landroidx/work/impl/model/SystemIdInfo;
    :goto_5b
    nop

    .line 154
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 155
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 152
    return-object v7

    .line 154
    .end local v4    # "_cursorIndexOfWorkSpecId":I
    .end local v5    # "_cursorIndexOfGeneration":I
    .end local v6    # "_cursorIndexOfSystemId":I
    .end local v7    # "_result":Landroidx/work/impl/model/SystemIdInfo;
    :catchall_63
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 155
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 156
    throw v4
.end method

.method public getWorkSpecIds()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    const-string v0, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    .line 162
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 163
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 164
    iget-object v3, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 166
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_15
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 169
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 170
    const/4 v5, 0x0

    .local v5, "_item":Ljava/lang/String;
    goto :goto_30

    .line 172
    .end local v5    # "_item":Ljava/lang/String;
    :cond_2c
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 174
    .restart local v5    # "_item":Ljava/lang/String;
    :goto_30
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_3d

    .line 175
    nop

    .end local v5    # "_item":Ljava/lang/String;
    goto :goto_1e

    .line 176
    :cond_35
    nop

    .line 178
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 179
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 176
    return-object v4

    .line 178
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3d
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 179
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 180
    throw v2
.end method

.method public insertSystemIdInfo(Landroidx/work/impl/model/SystemIdInfo;)V
    .registers 4
    .param p1, "systemIdInfo"    # Landroidx/work/impl/model/SystemIdInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "systemIdInfo"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 67
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 69
    :try_start_a
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__insertionAdapterOfSystemIdInfo:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 72
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 73
    nop

    .line 74
    return-void

    .line 72
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 73
    throw v0
.end method

.method public removeSystemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;)V
    .registers 2
    .param p1, "id"    # Landroidx/work/impl/model/WorkGenerationalId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Landroidx/work/impl/model/SystemIdInfoDao$DefaultImpls;->removeSystemIdInfo(Landroidx/work/impl/model/SystemIdInfoDao;Landroidx/work/impl/model/WorkGenerationalId;)V

    .line 191
    return-void
.end method

.method public removeSystemIdInfo(Ljava/lang/String;)V
    .registers 6
    .param p1, "workSpecId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "workSpecId"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 101
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 102
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 103
    .local v1, "_argIndex":I
    if-nez p1, :cond_12

    .line 104
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 106
    :cond_12
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    :goto_15
    iget-object v2, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 110
    :try_start_1a
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 111
    iget-object v2, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2e

    .line 113
    iget-object v2, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 114
    iget-object v2, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 115
    nop

    .line 116
    return-void

    .line 113
    :catchall_2e
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 114
    iget-object v3, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo_1:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 115
    throw v2
.end method

.method public removeSystemIdInfo(Ljava/lang/String;I)V
    .registers 7
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "generation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "workSpecId",
            "generation"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 79
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 80
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 81
    .local v1, "_argIndex":I
    if-nez p1, :cond_12

    .line 82
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 84
    :cond_12
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 86
    :goto_15
    const/4 v1, 0x2

    .line 87
    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 88
    iget-object v2, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 90
    :try_start_1f
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 91
    iget-object v2, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_33

    .line 93
    iget-object v2, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 94
    iget-object v2, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 95
    nop

    .line 96
    return-void

    .line 93
    :catchall_33
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 94
    iget-object v3, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 95
    throw v2
.end method
