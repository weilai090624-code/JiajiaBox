.class Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "PublicDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;I)V
    .registers 3
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "version"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl$1;->this$0:Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 37
    const-string v0, "CREATE TABLE IF NOT EXISTS `KeyValuePair` (`key` TEXT NOT NULL, `valueType` INTEGER NOT NULL, `value` BLOB NOT NULL, PRIMARY KEY(`key`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'f1aab1fb633378621635c344dbc8ac7b\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 44
    const-string v0, "DROP TABLE IF EXISTS `KeyValuePair`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl$1;->this$0:Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;

    # getter for: Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;->mCallbacks:Ljava/util/List;
    invoke-static {v0}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;->access$000(Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "_callbacks":Ljava/util/List;, "Ljava/util/List<+Landroidx/room/RoomDatabase$Callback;>;"
    if-eqz v0, :cond_21

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 48
    .local v2, "_callback":Landroidx/room/RoomDatabase$Callback;
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 49
    .end local v2    # "_callback":Landroidx/room/RoomDatabase$Callback;
    goto :goto_11

    .line 51
    :cond_21
    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl$1;->this$0:Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;

    # getter for: Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;->mCallbacks:Ljava/util/List;
    invoke-static {v0}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;->access$100(Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "_callbacks":Ljava/util/List;, "Ljava/util/List<+Landroidx/room/RoomDatabase$Callback;>;"
    if-eqz v0, :cond_1c

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 58
    .local v2, "_callback":Landroidx/room/RoomDatabase$Callback;
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 59
    .end local v2    # "_callback":Landroidx/room/RoomDatabase$Callback;
    goto :goto_c

    .line 61
    :cond_1c
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl$1;->this$0:Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;

    # setter for: Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;
    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;->access$202(Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 66
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl$1;->this$0:Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;

    # invokes: Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;->access$300(Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 67
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl$1;->this$0:Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;

    # getter for: Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;->mCallbacks:Ljava/util/List;
    invoke-static {v0}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;->access$400(Lio/nekohasekai/sagernet/database/preference/PublicDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "_callbacks":Ljava/util/List;, "Ljava/util/List<+Landroidx/room/RoomDatabase$Callback;>;"
    if-eqz v0, :cond_26

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 70
    .local v2, "_callback":Landroidx/room/RoomDatabase$Callback;
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 71
    .end local v2    # "_callback":Landroidx/room/RoomDatabase$Callback;
    goto :goto_16

    .line 73
    :cond_26
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 82
    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 77
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 78
    return-void
.end method

.method public onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .registers 18
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 89
    .local v0, "_columnsKeyValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v8, Landroidx/room/util/TableInfo$Column;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, "key"

    const-string v3, "TEXT"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "key"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v10, "valueType"

    const-string v11, "INTEGER"

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "valueType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v4, "value"

    const-string v5, "BLOB"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 93
    .local v1, "_foreignKeysKeyValuePair":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 94
    .local v3, "_indicesKeyValuePair":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v4, Landroidx/room/util/TableInfo;

    const-string v5, "KeyValuePair"

    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 95
    .local v4, "_infoKeyValuePair":Landroidx/room/util/TableInfo;
    move-object/from16 v6, p1

    invoke-static {v6, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v5

    .line 96
    .local v5, "_existingKeyValuePair":Landroidx/room/util/TableInfo;
    invoke-virtual {v4, v5}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 97
    new-instance v7, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyValuePair(io.nekohasekai.sagernet.database.preference.KeyValuePair).\n Expected:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n Found:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v7

    .line 101
    :cond_80
    new-instance v2, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v2
.end method
