.class Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$6;
.super Ljava/lang/Object;
.source "ProxyGroup_Dao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->subscriptions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;
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

    .line 300
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$6;->this$0:Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;

    iput-object p2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$6;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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

    .line 300
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$6;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    move-object/from16 v1, p0

    iget-object v0, v1, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$6;->this$0:Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;

    invoke-static {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;->access$000(Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$6;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 306
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 307
    .local v0, "_cursorIndexOfId":I
    const-string v3, "userOrder"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 308
    .local v3, "_cursorIndexOfUserOrder":I
    const-string v5, "ungrouped"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 309
    .local v5, "_cursorIndexOfUngrouped":I
    const-string v6, "name"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 310
    .local v6, "_cursorIndexOfName":I
    const-string v7, "type"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 311
    .local v7, "_cursorIndexOfType":I
    const-string v8, "subscription"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 312
    .local v8, "_cursorIndexOfSubscription":I
    const-string v9, "order"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 313
    .local v9, "_cursorIndexOfOrder":I
    const-string v10, "isSelector"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 314
    .local v10, "_cursorIndexOfIsSelector":I
    const-string v11, "frontProxy"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 315
    .local v11, "_cursorIndexOfFrontProxy":I
    const-string v12, "landingProxy"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 316
    .local v12, "_cursorIndexOfLandingProxy":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyGroup;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 320
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 322
    .local v16, "_tmpId":J
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 325
    .local v18, "_tmpUserOrder":J
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 326
    .local v14, "_tmp":I
    const/4 v15, 0x1

    if-eqz v14, :cond_0

    const/16 v20, 0x1

    goto :goto_1

    :cond_0
    const/16 v20, 0x0

    .line 328
    .local v20, "_tmpUngrouped":Z
    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 329
    const/16 v21, 0x0

    move-object/from16 v30, v21

    .local v21, "_tmpName":Ljava/lang/String;
    goto :goto_2

    .line 331
    .end local v21    # "_tmpName":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v30, v21

    .line 334
    .local v30, "_tmpName":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 337
    .local v22, "_tmpType":I
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    move-object/from16 v31, v21

    .line 338
    .local v31, "_tmp_1":[B
    invoke-static/range {v31 .. v31}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->subscriptionDeserialize([B)Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v23

    .line 340
    .local v23, "_tmpSubscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 343
    .local v24, "_tmpOrder":I
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v32, v21

    .line 344
    .local v32, "_tmp_2":I
    if-eqz v32, :cond_2

    const/16 v25, 0x1

    goto :goto_3

    :cond_2
    const/16 v25, 0x0

    .line 346
    .local v25, "_tmpIsSelector":Z
    :goto_3
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 348
    .local v26, "_tmpFrontProxy":J
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 349
    .local v28, "_tmpLandingProxy":J
    new-instance v33, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object/from16 v15, v33

    move-object/from16 v21, v30

    invoke-direct/range {v15 .. v29}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJ)V

    move-object/from16 v15, v33

    .line 350
    .local v15, "_item":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    nop

    .end local v14    # "_tmp":I
    .end local v15    # "_item":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v16    # "_tmpId":J
    .end local v18    # "_tmpUserOrder":J
    .end local v20    # "_tmpUngrouped":Z
    .end local v22    # "_tmpType":I
    .end local v23    # "_tmpSubscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .end local v24    # "_tmpOrder":I
    .end local v25    # "_tmpIsSelector":Z
    .end local v26    # "_tmpFrontProxy":J
    .end local v28    # "_tmpLandingProxy":J
    .end local v30    # "_tmpName":Ljava/lang/String;
    .end local v31    # "_tmp_1":[B
    .end local v32    # "_tmp_2":I
    goto :goto_0

    .line 352
    :cond_3
    nop

    .line 354
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 355
    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$6;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 352
    return-object v13

    .line 354
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_cursorIndexOfUserOrder":I
    .end local v5    # "_cursorIndexOfUngrouped":I
    .end local v6    # "_cursorIndexOfName":I
    .end local v7    # "_cursorIndexOfType":I
    .end local v8    # "_cursorIndexOfSubscription":I
    .end local v9    # "_cursorIndexOfOrder":I
    .end local v10    # "_cursorIndexOfIsSelector":I
    .end local v11    # "_cursorIndexOfFrontProxy":I
    .end local v12    # "_cursorIndexOfLandingProxy":I
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/nekohasekai/sagernet/database/ProxyGroup;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 355
    iget-object v3, v1, Lio/nekohasekai/sagernet/database/ProxyGroup_Dao_Impl$6;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 356
    throw v0
.end method
