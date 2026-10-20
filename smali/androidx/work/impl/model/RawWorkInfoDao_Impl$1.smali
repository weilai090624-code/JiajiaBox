.class Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;
.super Ljava/lang/Object;
.source "RawWorkInfoDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/RawWorkInfoDao_Impl;->getWorkInfoPojosLiveData(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/lifecycle/LiveData;
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
.field final synthetic this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

.field final synthetic val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/impl/model/RawWorkInfoDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_internalQuery"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 29
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

    .line 137
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$000(Landroidx/work/impl/model/RawWorkInfoDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 139
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v3, "state"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 141
    .local v3, "_cursorIndexOfState":I
    const-string v4, "output"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 142
    .local v4, "_cursorIndexOfOutput":I
    const-string v5, "run_attempt_count"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 143
    .local v5, "_cursorIndexOfRunAttemptCount":I
    const-string v6, "generation"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 144
    .local v6, "_cursorIndexOfGeneration":I
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 145
    .local v7, "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    .line 146
    .local v8, "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 147
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 149
    .local v10, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v10, :cond_0

    .line 150
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v11

    .line 151
    invoke-virtual {v7, v9, v10}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 154
    .local v11, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v8, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 155
    .local v12, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v12, :cond_1

    .line 156
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 157
    invoke-virtual {v8, v11, v12}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v9    # "_tmpKey":Ljava/lang/String;
    .end local v10    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "_tmpKey_1":Ljava/lang/String;
    .end local v12    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_1
    goto :goto_0

    .line 160
    :cond_2
    const/4 v9, -0x1

    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 161
    iget-object v10, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v10, v7}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$100(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/collection/ArrayMap;)V

    .line 162
    iget-object v10, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v10, v8}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$200(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/collection/ArrayMap;)V

    .line 163
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 167
    if-ne v0, v9, :cond_3

    .line 168
    const/4 v11, 0x0

    .local v11, "_tmpId":Ljava/lang/String;
    goto :goto_2

    .line 170
    .end local v11    # "_tmpId":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 171
    const/4 v11, 0x0

    .restart local v11    # "_tmpId":Ljava/lang/String;
    goto :goto_2

    .line 173
    .end local v11    # "_tmpId":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 177
    .restart local v11    # "_tmpId":Ljava/lang/String;
    :goto_2
    if-ne v3, v9, :cond_5

    .line 178
    const/4 v12, 0x0

    move-object/from16 v20, v12

    .local v12, "_tmpState":Landroidx/work/WorkInfo$State;
    goto :goto_3

    .line 181
    .end local v12    # "_tmpState":Landroidx/work/WorkInfo$State;
    :cond_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 182
    .local v12, "_tmp":I
    sget-object v13, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v12}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v13

    move-object/from16 v20, v13

    .line 185
    .end local v12    # "_tmp":I
    .local v20, "_tmpState":Landroidx/work/WorkInfo$State;
    :goto_3
    if-ne v4, v9, :cond_6

    .line 186
    const/4 v12, 0x0

    move-object/from16 v21, v12

    .local v12, "_tmpOutput":Landroidx/work/Data;
    goto :goto_5

    .line 189
    .end local v12    # "_tmpOutput":Landroidx/work/Data;
    :cond_6
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 190
    const/4 v12, 0x0

    .local v12, "_tmp_1":[B
    goto :goto_4

    .line 192
    .end local v12    # "_tmp_1":[B
    :cond_7
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 194
    .restart local v12    # "_tmp_1":[B
    :goto_4
    invoke-static {v12}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v13

    move-object/from16 v21, v13

    .line 197
    .end local v12    # "_tmp_1":[B
    .local v21, "_tmpOutput":Landroidx/work/Data;
    :goto_5
    if-ne v5, v9, :cond_8

    .line 198
    const/4 v12, 0x0

    move/from16 v22, v12

    .local v12, "_tmpRunAttemptCount":I
    goto :goto_6

    .line 200
    .end local v12    # "_tmpRunAttemptCount":I
    :cond_8
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v22, v12

    .line 203
    .local v22, "_tmpRunAttemptCount":I
    :goto_6
    if-ne v6, v9, :cond_9

    .line 204
    const/4 v12, 0x0

    move/from16 v23, v12

    .local v12, "_tmpGeneration":I
    goto :goto_7

    .line 206
    .end local v12    # "_tmpGeneration":I
    :cond_9
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v23, v12

    .line 208
    .local v23, "_tmpGeneration":I
    :goto_7
    const/4 v12, 0x0

    .line 209
    .local v12, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v15, v13

    .line 210
    .local v15, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v7, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    move-object v12, v13

    .line 211
    if-nez v12, :cond_a

    .line 212
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    move-object/from16 v24, v12

    goto :goto_8

    .line 211
    :cond_a
    move-object/from16 v24, v12

    .line 214
    .end local v12    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v24, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_8
    const/4 v12, 0x0

    .line 215
    .local v12, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v14, v13

    .line 216
    .local v14, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v8, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    move-object v12, v13

    .line 217
    if-nez v12, :cond_b

    .line 218
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    move-object/from16 v25, v12

    goto :goto_9

    .line 217
    :cond_b
    move-object/from16 v25, v12

    .line 220
    .end local v12    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v25, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_9
    new-instance v26, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v12, v26

    move-object v13, v11

    move-object/from16 v27, v14

    .end local v14    # "_tmpKey_3":Ljava/lang/String;
    .local v27, "_tmpKey_3":Ljava/lang/String;
    move-object/from16 v14, v20

    move-object/from16 v28, v15

    .end local v15    # "_tmpKey_2":Ljava/lang/String;
    .local v28, "_tmpKey_2":Ljava/lang/String;
    move-object/from16 v15, v21

    move/from16 v16, v22

    move/from16 v17, v23

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    invoke-direct/range {v12 .. v19}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v12, v26

    .line 221
    .local v12, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    nop

    .end local v11    # "_tmpId":Ljava/lang/String;
    .end local v12    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v20    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v21    # "_tmpOutput":Landroidx/work/Data;
    .end local v22    # "_tmpRunAttemptCount":I
    .end local v23    # "_tmpGeneration":I
    .end local v24    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v27    # "_tmpKey_3":Ljava/lang/String;
    .end local v28    # "_tmpKey_2":Ljava/lang/String;
    goto/16 :goto_1

    .line 223
    :cond_c
    nop

    .line 225
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 223
    return-object v10

    .line 225
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_cursorIndexOfState":I
    .end local v4    # "_cursorIndexOfOutput":I
    .end local v5    # "_cursorIndexOfRunAttemptCount":I
    .end local v6    # "_cursorIndexOfGeneration":I
    .end local v7    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 226
    throw v0
.end method
