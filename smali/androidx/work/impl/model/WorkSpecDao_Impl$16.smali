.class Landroidx/work/impl/model/WorkSpecDao_Impl$16;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1264
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1264
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1267
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    # getter for: Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;
    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1269
    :try_start_b
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    # getter for: Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;
    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_11b

    move-object v2, v0

    .line 1271
    .local v2, "_cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1272
    .local v0, "_cursorIndexOfId":I
    const/4 v3, 0x1

    .line 1273
    .local v3, "_cursorIndexOfState":I
    const/4 v5, 0x2

    .line 1274
    .local v5, "_cursorIndexOfOutput":I
    const/4 v6, 0x3

    .line 1275
    .local v6, "_cursorIndexOfRunAttemptCount":I
    const/4 v7, 0x4

    .line 1276
    .local v7, "_cursorIndexOfGeneration":I
    :try_start_1f
    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1277
    .local v8, "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v9, Landroidx/collection/ArrayMap;

    invoke-direct {v9}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1278
    .local v9, "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_29
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_5b

    .line 1279
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1280
    .local v10, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v8, v10}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1281
    .local v12, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v12, :cond_45

    .line 1282
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 1283
    invoke-virtual {v8, v10, v12}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    :cond_45
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1286
    .local v11, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v9, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1287
    .local v13, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v13, :cond_5a

    .line 1288
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v14

    .line 1289
    invoke-virtual {v9, v11, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    .end local v10    # "_tmpKey":Ljava/lang/String;
    .end local v11    # "_tmpKey_1":Ljava/lang/String;
    .end local v12    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_5a
    goto :goto_29

    .line 1292
    :cond_5b
    const/4 v10, -0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1293
    iget-object v10, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    # invokes: Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V
    invoke-static {v10, v8}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V

    .line 1294
    iget-object v10, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    # invokes: Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V
    invoke-static {v10, v9}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$200(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V

    .line 1295
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1296
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_72
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_ff

    .line 1299
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_80

    .line 1300
    const/4 v12, 0x0

    .local v12, "_tmpId":Ljava/lang/String;
    goto :goto_84

    .line 1302
    .end local v12    # "_tmpId":Ljava/lang/String;
    :cond_80
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1306
    .restart local v12    # "_tmpId":Ljava/lang/String;
    :goto_84
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v21, v13

    .line 1307
    .local v21, "_tmp":I
    sget-object v13, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v15

    .line 1310
    .local v15, "_tmpState":Landroidx/work/WorkInfo$State;
    const/4 v13, 0x2

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_9b

    .line 1311
    const/4 v13, 0x0

    move-object/from16 v22, v13

    .local v13, "_tmp_1":[B
    goto :goto_a1

    .line 1313
    .end local v13    # "_tmp_1":[B
    :cond_9b
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    move-object/from16 v22, v13

    .line 1315
    .local v22, "_tmp_1":[B
    :goto_a1
    invoke-static/range {v22 .. v22}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v16

    .line 1317
    .local v16, "_tmpOutput":Landroidx/work/Data;
    const/4 v13, 0x3

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1319
    .local v17, "_tmpRunAttemptCount":I
    const/4 v13, 0x4

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1320
    .local v18, "_tmpGeneration":I
    const/4 v13, 0x0

    .line 1321
    .local v13, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1322
    .local v14, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v8, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v13, v19

    .line 1323
    if-nez v13, :cond_c8

    .line 1324
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v19

    move-object/from16 v23, v13

    goto :goto_ca

    .line 1323
    :cond_c8
    move-object/from16 v23, v13

    .line 1326
    .end local v13    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v23, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_ca
    const/4 v13, 0x0

    .line 1327
    .local v13, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v24, v19

    .line 1328
    .local v24, "_tmpKey_3":Ljava/lang/String;
    move-object/from16 v4, v24

    .end local v24    # "_tmpKey_3":Ljava/lang/String;
    .local v4, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v9, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v13, v19

    .line 1329
    if-nez v13, :cond_e7

    .line 1330
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v19

    move-object/from16 v24, v13

    goto :goto_e9

    .line 1329
    :cond_e7
    move-object/from16 v24, v13

    .line 1332
    .end local v13    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v24, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_e9
    new-instance v25, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v13, v25

    move-object/from16 v26, v14

    .end local v14    # "_tmpKey_2":Ljava/lang/String;
    .local v26, "_tmpKey_2":Ljava/lang/String;
    move-object v14, v12

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    invoke-direct/range {v13 .. v20}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v13, v25

    .line 1333
    .local v13, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    const/4 v4, 0x1

    .end local v4    # "_tmpKey_3":Ljava/lang/String;
    .end local v12    # "_tmpId":Ljava/lang/String;
    .end local v13    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v15    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v16    # "_tmpOutput":Landroidx/work/Data;
    .end local v17    # "_tmpRunAttemptCount":I
    .end local v18    # "_tmpGeneration":I
    .end local v21    # "_tmp":I
    .end local v22    # "_tmp_1":[B
    .end local v23    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v26    # "_tmpKey_2":Ljava/lang/String;
    goto/16 :goto_72

    .line 1335
    :cond_ff
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    # getter for: Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;
    invoke-static {v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_108
    .catchall {:try_start_1f .. :try_end_108} :catchall_116

    .line 1336
    nop

    .line 1338
    :try_start_109
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_11b

    .line 1341
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    # getter for: Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;
    invoke-static {v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1336
    return-object v10

    .line 1338
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_cursorIndexOfState":I
    .end local v5    # "_cursorIndexOfOutput":I
    .end local v6    # "_cursorIndexOfRunAttemptCount":I
    .end local v7    # "_cursorIndexOfGeneration":I
    .end local v8    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v9    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :catchall_116
    move-exception v0

    :try_start_117
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1339
    throw v0
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_11b

    .line 1341
    .end local v2    # "_cursor":Landroid/database/Cursor;
    :catchall_11b
    move-exception v0

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    # getter for: Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;
    invoke-static {v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1342
    throw v0
.end method

.method protected finalize()V
    .registers 2

    .line 1347
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1348
    return-void
.end method
