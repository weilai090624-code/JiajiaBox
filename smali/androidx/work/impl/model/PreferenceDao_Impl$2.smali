.class Landroidx/work/impl/model/PreferenceDao_Impl$2;
.super Ljava/lang/Object;
.source "PreferenceDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/PreferenceDao_Impl;->getObservableLongValue(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/PreferenceDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/PreferenceDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/work/impl/model/PreferenceDao_Impl;
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

    .line 102
    iput-object p1, p0, Landroidx/work/impl/model/PreferenceDao_Impl$2;->this$0:Landroidx/work/impl/model/PreferenceDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/PreferenceDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroidx/work/impl/model/PreferenceDao_Impl$2;->this$0:Landroidx/work/impl/model/PreferenceDao_Impl;

    # getter for: Landroidx/work/impl/model/PreferenceDao_Impl;->__db:Landroidx/room/RoomDatabase;
    invoke-static {v0}, Landroidx/work/impl/model/PreferenceDao_Impl;->access$000(Landroidx/work/impl/model/PreferenceDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/model/PreferenceDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 108
    .local v0, "_cursor":Landroid/database/Cursor;
    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 109
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 110
    const/4 v1, 0x0

    .local v1, "_result":Ljava/lang/Long;
    goto :goto_26

    .line 112
    .end local v1    # "_result":Ljava/lang/Long;
    :cond_1c
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_2b

    .restart local v1    # "_result":Ljava/lang/Long;
    goto :goto_26

    .line 115
    .end local v1    # "_result":Ljava/lang/Long;
    :cond_25
    const/4 v1, 0x0

    .line 117
    .restart local v1    # "_result":Ljava/lang/Long;
    :goto_26
    nop

    .line 119
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 117
    return-object v1

    .line 119
    .end local v1    # "_result":Ljava/lang/Long;
    :catchall_2b
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 120
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Landroidx/work/impl/model/PreferenceDao_Impl$2;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 2

    .line 125
    iget-object v0, p0, Landroidx/work/impl/model/PreferenceDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 126
    return-void
.end method
