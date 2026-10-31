.class public final Landroidx/work/impl/model/WorkSpecDao_Impl;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/WorkSpecDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetLastEnqueuedTime:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfWorkSpec:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field


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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 67
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    .line 152
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 242
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 249
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$4;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$4;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    .line 256
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$5;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$5;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    .line 263
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$6;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$6;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    .line 270
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$7;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$7;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Landroidx/room/SharedSQLiteStatement;

    .line 277
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$8;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$8;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 284
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$9;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$9;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 291
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$10;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$10;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    .line 298
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$11;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    .line 305
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$12;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$12;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    .line 312
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$13;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$13;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    .line 319
    return-void
.end method

.method private __fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/work/Data;",
            ">;>;)V"
        }
    .end annotation

    .line 2548
    .local p1, "_map":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2549
    .local v0, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2550
    return-void

    .line 2553
    :cond_b
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_46

    .line 2554
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 2555
    .local v1, "_tmpInnerMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    const/4 v3, 0x0

    .line 2556
    .local v3, "_tmpIndex":I
    const/4 v4, 0x0

    .line 2557
    .local v4, "_mapIndex":I
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v5

    .line 2558
    .local v5, "_limit":I
    :cond_1e
    :goto_1e
    if-ge v4, v5, :cond_40

    .line 2559
    invoke-virtual {p1, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2560
    add-int/lit8 v4, v4, 0x1

    .line 2561
    add-int/lit8 v3, v3, 0x1

    .line 2562
    if-ne v3, v2, :cond_1e

    .line 2563
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 2564
    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    move-object v1, v6

    .line 2565
    const/4 v3, 0x0

    goto :goto_1e

    .line 2568
    :cond_40
    if-lez v3, :cond_45

    .line 2569
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 2571
    :cond_45
    return-void

    .line 2573
    .end local v1    # "_tmpInnerMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v3    # "_tmpIndex":I
    .end local v4    # "_mapIndex":I
    .end local v5    # "_limit":I
    :cond_46
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2574
    .local v1, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 2576
    .local v2, "_inputSize":I
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 2577
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2579
    .local v3, "_sql":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x0

    .line 2580
    .local v4, "_argCount":I
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 2581
    .local v5, "_stmt":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 2582
    .local v6, "_argIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_83

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2583
    .local v8, "_item":Ljava/lang/String;
    if-nez v8, :cond_7c

    .line 2584
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_7f

    .line 2586
    :cond_7c
    invoke-virtual {v5, v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2588
    :goto_7f
    nop

    .end local v8    # "_item":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 2589
    goto :goto_6a

    .line 2590
    :cond_83
    iget-object v7, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v5, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 2592
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_8b
    const-string/jumbo v8, "work_spec_id"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_c4

    .line 2593
    .local v8, "_itemKeyIndex":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_99

    .line 2612
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2594
    return-void

    .line 2596
    :cond_99
    :goto_99
    :try_start_99
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_bf

    .line 2597
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2598
    .local v10, "_tmpKey":Ljava/lang/String;
    invoke-virtual {p1, v10}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 2599
    .local v11, "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-eqz v11, :cond_be

    .line 2602
    invoke-interface {v7, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_b3

    .line 2603
    const/4 v12, 0x0

    .local v12, "_tmp":[B
    goto :goto_b7

    .line 2605
    .end local v12    # "_tmp":[B
    :cond_b3
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 2607
    .restart local v12    # "_tmp":[B
    :goto_b7
    invoke-static {v12}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v13

    .line 2608
    .local v13, "_item_1":Landroidx/work/Data;
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_be
    .catchall {:try_start_99 .. :try_end_be} :catchall_c4

    .line 2610
    .end local v10    # "_tmpKey":Ljava/lang/String;
    .end local v11    # "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v12    # "_tmp":[B
    .end local v13    # "_item_1":Landroidx/work/Data;
    :cond_be
    goto :goto_99

    .line 2612
    .end local v8    # "_itemKeyIndex":I
    :cond_bf
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2613
    nop

    .line 2614
    return-void

    .line 2612
    :catchall_c4
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2613
    throw v8
.end method

.method private __fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2480
    .local p1, "_map":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2481
    .local v0, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2482
    return-void

    .line 2485
    :cond_b
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_46

    .line 2486
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 2487
    .local v1, "_tmpInnerMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 2488
    .local v3, "_tmpIndex":I
    const/4 v4, 0x0

    .line 2489
    .local v4, "_mapIndex":I
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v5

    .line 2490
    .local v5, "_limit":I
    :cond_1e
    :goto_1e
    if-ge v4, v5, :cond_40

    .line 2491
    invoke-virtual {p1, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2492
    add-int/lit8 v4, v4, 0x1

    .line 2493
    add-int/lit8 v3, v3, 0x1

    .line 2494
    if-ne v3, v2, :cond_1e

    .line 2495
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 2496
    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    move-object v1, v6

    .line 2497
    const/4 v3, 0x0

    goto :goto_1e

    .line 2500
    :cond_40
    if-lez v3, :cond_45

    .line 2501
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 2503
    :cond_45
    return-void

    .line 2505
    .end local v1    # "_tmpInnerMap":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "_tmpIndex":I
    .end local v4    # "_mapIndex":I
    .end local v5    # "_limit":I
    :cond_46
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2506
    .local v1, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 2508
    .local v2, "_inputSize":I
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 2509
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2510
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2511
    .local v3, "_sql":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x0

    .line 2512
    .local v4, "_argCount":I
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 2513
    .local v5, "_stmt":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 2514
    .local v6, "_argIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_83

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2515
    .local v8, "_item":Ljava/lang/String;
    if-nez v8, :cond_7c

    .line 2516
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_7f

    .line 2518
    :cond_7c
    invoke-virtual {v5, v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2520
    :goto_7f
    nop

    .end local v8    # "_item":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 2521
    goto :goto_6a

    .line 2522
    :cond_83
    iget-object v7, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v5, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 2524
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_8b
    const-string/jumbo v8, "work_spec_id"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_c0

    .line 2525
    .local v8, "_itemKeyIndex":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_99

    .line 2542
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2526
    return-void

    .line 2528
    :cond_99
    :goto_99
    :try_start_99
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_bb

    .line 2529
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2530
    .local v10, "_tmpKey":Ljava/lang/String;
    invoke-virtual {p1, v10}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 2531
    .local v11, "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_ba

    .line 2533
    invoke-interface {v7, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_b3

    .line 2534
    const/4 v12, 0x0

    .local v12, "_item_1":Ljava/lang/String;
    goto :goto_b7

    .line 2536
    .end local v12    # "_item_1":Ljava/lang/String;
    :cond_b3
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2538
    .restart local v12    # "_item_1":Ljava/lang/String;
    :goto_b7
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catchall {:try_start_99 .. :try_end_ba} :catchall_c0

    .line 2540
    .end local v10    # "_tmpKey":Ljava/lang/String;
    .end local v11    # "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "_item_1":Ljava/lang/String;
    :cond_ba
    goto :goto_99

    .line 2542
    .end local v8    # "_itemKeyIndex":I
    :cond_bb
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2543
    nop

    .line 2544
    return-void

    .line 2542
    :catchall_c0
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2543
    throw v8
.end method

.method static synthetic access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;
    .registers 2
    .param p0, "x0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 36
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V
    .registers 2
    .param p0, "x0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;
    .param p1, "x1"    # Landroidx/collection/ArrayMap;

    .line 36
    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V
    .registers 2
    .param p0, "x0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;
    .param p1, "x1"    # Landroidx/collection/ArrayMap;

    .line 36
    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

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

    .line 2475
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 348
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 349
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 350
    .local v1, "_argIndex":I
    if-nez p1, :cond_12

    .line 351
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 353
    :cond_12
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 355
    :goto_15
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 357
    :try_start_1a
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 358
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2e

    .line 360
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 361
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 362
    nop

    .line 363
    return-void

    .line 360
    :catchall_2e
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 361
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 362
    throw v2
.end method

.method public getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;
    .registers 88
    .param p1, "maxLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1868
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    .line 1869
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1870
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 1871
    .local v5, "_argIndex":I
    move/from16 v6, p1

    int-to-long v7, v6

    invoke-virtual {v4, v5, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1872
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1873
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v4, v8, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1875
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_1f
    const-string v0, "id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1876
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v9, "state"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1877
    .local v9, "_cursorIndexOfState":I
    const-string/jumbo v10, "worker_class_name"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1878
    .local v10, "_cursorIndexOfWorkerClassName":I
    const-string v11, "input_merger_class_name"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1879
    .local v11, "_cursorIndexOfInputMergerClassName":I
    const-string v12, "input"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1880
    .local v12, "_cursorIndexOfInput":I
    const-string v13, "output"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1881
    .local v13, "_cursorIndexOfOutput":I
    const-string v14, "initial_delay"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1882
    .local v14, "_cursorIndexOfInitialDelay":I
    const-string v15, "interval_duration"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1883
    .local v15, "_cursorIndexOfIntervalDuration":I
    const-string v3, "flex_duration"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1884
    .local v3, "_cursorIndexOfFlexDuration":I
    const-string v8, "run_attempt_count"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1885
    .local v8, "_cursorIndexOfRunAttemptCount":I
    const-string v1, "backoff_policy"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_63
    .catchall {:try_start_1f .. :try_end_63} :catchall_271

    .line 1886
    .local v1, "_cursorIndexOfBackoffPolicy":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_65
    const-string v2, "backoff_delay_duration"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_26b

    .line 1887
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v17, v5

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_6d
    const-string v5, "last_enqueue_time"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 1888
    .local v5, "_cursorIndexOfLastEnqueueTime":I
    const-string v6, "minimum_retention_duration"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_267

    .line 1889
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_7b
    const-string v4, "schedule_requested_at"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1890
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v19, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "run_in_foreground"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1891
    .local v4, "_cursorIndexOfExpedited":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfExpedited":I
    .local v20, "_cursorIndexOfExpedited":I
    const-string v4, "out_of_quota_policy"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1892
    .local v4, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string v4, "period_count"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1893
    .local v4, "_cursorIndexOfPeriodCount":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfPeriodCount":I
    .local v22, "_cursorIndexOfPeriodCount":I
    const-string v4, "generation"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1894
    .local v4, "_cursorIndexOfGeneration":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfGeneration":I
    .local v23, "_cursorIndexOfGeneration":I
    const-string v4, "required_network_type"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1895
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v24, "_cursorIndexOfRequiredNetworkType":I
    const-string v4, "requires_charging"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1896
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v25, "_cursorIndexOfRequiresCharging":I
    const-string v4, "requires_device_idle"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1897
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v26, "_cursorIndexOfRequiresDeviceIdle":I
    const-string v4, "requires_battery_not_low"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1898
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v27, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string v4, "requires_storage_not_low"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1899
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v28, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1900
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v29, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1901
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v30, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1902
    .local v4, "_cursorIndexOfContentUriTriggers":I
    move/from16 v31, v4

    .end local v4    # "_cursorIndexOfContentUriTriggers":I
    .local v31, "_cursorIndexOfContentUriTriggers":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v32, v6

    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v32, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1903
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_f0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_25d

    .line 1906
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_fe

    .line 1907
    const/4 v6, 0x0

    .local v6, "_tmpId":Ljava/lang/String;
    goto :goto_102

    .line 1909
    .end local v6    # "_tmpId":Ljava/lang/String;
    :cond_fe
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1913
    .restart local v6    # "_tmpId":Ljava/lang/String;
    :goto_102
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v61, v33

    .line 1914
    .local v61, "_tmp":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v61 .. v61}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v35

    .line 1916
    .local v35, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_119

    .line 1917
    const/16 v33, 0x0

    move-object/from16 v62, v33

    .local v33, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_11f

    .line 1919
    .end local v33    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_119
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v62, v33

    .line 1922
    .local v62, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_11f
    invoke-interface {v7, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_12a

    .line 1923
    const/16 v33, 0x0

    move-object/from16 v63, v33

    .local v33, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_130

    .line 1925
    .end local v33    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_12a
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v63, v33

    .line 1929
    .local v63, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_130
    invoke-interface {v7, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_13b

    .line 1930
    const/16 v33, 0x0

    move-object/from16 v64, v33

    .local v33, "_tmp_1":[B
    goto :goto_141

    .line 1932
    .end local v33    # "_tmp_1":[B
    :cond_13b
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    move-object/from16 v64, v33

    .line 1934
    .local v64, "_tmp_1":[B
    :goto_141
    invoke-static/range {v64 .. v64}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v38

    .line 1937
    .local v38, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_150

    .line 1938
    const/16 v33, 0x0

    move-object/from16 v65, v33

    .local v33, "_tmp_2":[B
    goto :goto_156

    .line 1940
    .end local v33    # "_tmp_2":[B
    :cond_150
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    move-object/from16 v65, v33

    .line 1942
    .local v65, "_tmp_2":[B
    :goto_156
    invoke-static/range {v65 .. v65}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v39

    .line 1944
    .local v39, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1946
    .local v40, "_tmpInitialDelay":J
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1948
    .local v42, "_tmpIntervalDuration":J
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 1950
    .local v44, "_tmpFlexDuration":J
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 1953
    .local v47, "_tmpRunAttemptCount":I
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v66, v33

    .line 1954
    .local v66, "_tmp_3":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v66 .. v66}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v48

    .line 1956
    .local v48, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    .line 1958
    .local v49, "_tmpBackoffDelayDuration":J
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    .line 1960
    .local v51, "_tmpLastEnqueueTime":J
    move/from16 v67, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v0, "_cursorIndexOfMinimumRetentionDuration":I
    .local v67, "_cursorIndexOfId":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    .line 1962
    .local v53, "_tmpMinimumRetentionDuration":J
    move/from16 v32, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .restart local v32    # "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    .line 1965
    .local v55, "_tmpScheduleRequestedAt":J
    move/from16 v19, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v19    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1966
    .local v20, "_tmp_4":I
    if-eqz v20, :cond_19b

    const/16 v57, 0x1

    goto :goto_19d

    :cond_19b
    const/16 v57, 0x0

    .line 1969
    .local v57, "_tmpExpedited":Z
    :goto_19d
    move/from16 v68, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v68, "_cursorIndexOfExpedited":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1970
    .local v21, "_tmp_5":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v58

    .line 1972
    .local v58, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v69, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v69, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    .line 1974
    .local v59, "_tmpPeriodCount":I
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v22    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    .line 1978
    .local v60, "_tmpGeneration":I
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v23    # "_cursorIndexOfGeneration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1979
    .local v24, "_tmp_6":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v24 .. v24}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v71

    .line 1982
    .local v71, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v81, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v81, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1983
    .local v25, "_tmp_7":I
    if-eqz v25, :cond_1d6

    const/16 v72, 0x1

    goto :goto_1d8

    :cond_1d6
    const/16 v72, 0x0

    .line 1986
    .local v72, "_tmpRequiresCharging":Z
    :goto_1d8
    move/from16 v82, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v82, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1987
    .local v26, "_tmp_8":I
    if-eqz v26, :cond_1e5

    const/16 v73, 0x1

    goto :goto_1e7

    :cond_1e5
    const/16 v73, 0x0

    .line 1990
    .local v73, "_tmpRequiresDeviceIdle":Z
    :goto_1e7
    move/from16 v83, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v83, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1991
    .local v27, "_tmp_9":I
    if-eqz v27, :cond_1f4

    const/16 v74, 0x1

    goto :goto_1f6

    :cond_1f4
    const/16 v74, 0x0

    .line 1994
    .local v74, "_tmpRequiresBatteryNotLow":Z
    :goto_1f6
    move/from16 v84, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v84, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 1995
    .local v28, "_tmp_10":I
    if-eqz v28, :cond_203

    const/16 v75, 0x1

    goto :goto_205

    :cond_203
    const/16 v75, 0x0

    .line 1997
    .local v75, "_tmpRequiresStorageNotLow":Z
    :goto_205
    move/from16 v85, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v85, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    .line 1999
    .local v76, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v29, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v29    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v78

    .line 2002
    .local v78, "_tmpContentTriggerMaxDelayMillis":J
    move/from16 v30, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfContentUriTriggers":I
    .local v0, "_cursorIndexOfContentUriTriggers":I
    .restart local v30    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_222

    .line 2003
    const/16 v31, 0x0

    .local v31, "_tmp_11":[B
    goto :goto_226

    .line 2005
    .end local v31    # "_tmp_11":[B
    :cond_222
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    .line 2007
    .restart local v31    # "_tmp_11":[B
    :goto_226
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v80

    .line 2008
    .local v80, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v46, Landroidx/work/Constraints;

    move-object/from16 v70, v46

    invoke-direct/range {v70 .. v80}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 2009
    .local v46, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v70, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v33, v70

    move-object/from16 v34, v6

    move-object/from16 v36, v62

    move-object/from16 v37, v63

    invoke-direct/range {v33 .. v60}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    move-object/from16 v33, v70

    .line 2010
    .local v33, "_item":Landroidx/work/impl/model/WorkSpec;
    move/from16 v34, v0

    move-object/from16 v0, v33

    .end local v33    # "_item":Landroidx/work/impl/model/WorkSpec;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec;
    .local v34, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_249
    .catchall {:try_start_7b .. :try_end_249} :catchall_265

    .line 2011
    move/from16 v31, v34

    move/from16 v0, v67

    move/from16 v20, v68

    move/from16 v21, v69

    move/from16 v24, v81

    move/from16 v25, v82

    move/from16 v26, v83

    move/from16 v27, v84

    move/from16 v28, v85

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v6    # "_tmpId":Ljava/lang/String;
    .end local v20    # "_tmp_4":I
    .end local v21    # "_tmp_5":I
    .end local v24    # "_tmp_6":I
    .end local v25    # "_tmp_7":I
    .end local v26    # "_tmp_8":I
    .end local v27    # "_tmp_9":I
    .end local v28    # "_tmp_10":I
    .end local v31    # "_tmp_11":[B
    .end local v35    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v38    # "_tmpInput":Landroidx/work/Data;
    .end local v39    # "_tmpOutput":Landroidx/work/Data;
    .end local v40    # "_tmpInitialDelay":J
    .end local v42    # "_tmpIntervalDuration":J
    .end local v44    # "_tmpFlexDuration":J
    .end local v46    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v47    # "_tmpRunAttemptCount":I
    .end local v48    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v49    # "_tmpBackoffDelayDuration":J
    .end local v51    # "_tmpLastEnqueueTime":J
    .end local v53    # "_tmpMinimumRetentionDuration":J
    .end local v55    # "_tmpScheduleRequestedAt":J
    .end local v57    # "_tmpExpedited":Z
    .end local v58    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v59    # "_tmpPeriodCount":I
    .end local v60    # "_tmpGeneration":I
    .end local v61    # "_tmp":I
    .end local v62    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v63    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v64    # "_tmp_1":[B
    .end local v65    # "_tmp_2":[B
    .end local v66    # "_tmp_3":I
    .end local v71    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v72    # "_tmpRequiresCharging":Z
    .end local v73    # "_tmpRequiresDeviceIdle":Z
    .end local v74    # "_tmpRequiresBatteryNotLow":Z
    .end local v75    # "_tmpRequiresStorageNotLow":Z
    .end local v76    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v78    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v80    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_f0

    .line 2012
    .end local v34    # "_cursorIndexOfContentUriTriggers":I
    .end local v67    # "_cursorIndexOfId":I
    .end local v68    # "_cursorIndexOfExpedited":I
    .end local v69    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v81    # "_cursorIndexOfRequiredNetworkType":I
    .end local v82    # "_cursorIndexOfRequiresCharging":I
    .end local v83    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v84    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v85    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v20, "_cursorIndexOfExpedited":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v24, "_cursorIndexOfRequiredNetworkType":I
    .local v25, "_cursorIndexOfRequiresCharging":I
    .local v26, "_cursorIndexOfRequiresDeviceIdle":I
    .local v27, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v28, "_cursorIndexOfRequiresStorageNotLow":I
    .local v31, "_cursorIndexOfContentUriTriggers":I
    :cond_25d
    nop

    .line 2014
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2015
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2012
    return-object v4

    .line 2014
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfBackoffPolicy":I
    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v3    # "_cursorIndexOfFlexDuration":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v5    # "_cursorIndexOfLastEnqueueTime":I
    .end local v8    # "_cursorIndexOfRunAttemptCount":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfWorkerClassName":I
    .end local v11    # "_cursorIndexOfInputMergerClassName":I
    .end local v12    # "_cursorIndexOfInput":I
    .end local v13    # "_cursorIndexOfOutput":I
    .end local v14    # "_cursorIndexOfInitialDelay":I
    .end local v15    # "_cursorIndexOfIntervalDuration":I
    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v20    # "_cursorIndexOfExpedited":I
    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v22    # "_cursorIndexOfPeriodCount":I
    .end local v23    # "_cursorIndexOfGeneration":I
    .end local v24    # "_cursorIndexOfRequiredNetworkType":I
    .end local v25    # "_cursorIndexOfRequiresCharging":I
    .end local v26    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v27    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v28    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v29    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v30    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v31    # "_cursorIndexOfContentUriTriggers":I
    .end local v32    # "_cursorIndexOfMinimumRetentionDuration":I
    :catchall_265
    move-exception v0

    goto :goto_278

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_267
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_278

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    :catchall_26b
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_278

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    :catchall_271
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2015
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2016
    throw v0
.end method

.method public getAllUnfinishedWork()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1635
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    .line 1636
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1637
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1638
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 1640
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_15
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1641
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1643
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1644
    const/4 v5, 0x0

    .local v5, "_item":Ljava/lang/String;
    goto :goto_30

    .line 1646
    .end local v5    # "_item":Ljava/lang/String;
    :cond_2c
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1648
    .restart local v5    # "_item":Ljava/lang/String;
    :goto_30
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_3d

    .line 1649
    nop

    .end local v5    # "_item":Ljava/lang/String;
    goto :goto_1e

    .line 1650
    :cond_35
    nop

    .line 1652
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1653
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1650
    return-object v4

    .line 1652
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3d
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1653
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1654
    throw v2
.end method

.method public getAllWorkSpecIds()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 769
    const-string v0, "SELECT id FROM workspec"

    .line 770
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 771
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 772
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 774
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_15
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 775
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 777
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 778
    const/4 v5, 0x0

    .local v5, "_item":Ljava/lang/String;
    goto :goto_30

    .line 780
    .end local v5    # "_item":Ljava/lang/String;
    :cond_2c
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 782
    .restart local v5    # "_item":Ljava/lang/String;
    :goto_30
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_3d

    .line 783
    nop

    .end local v5    # "_item":Ljava/lang/String;
    goto :goto_1e

    .line 784
    :cond_35
    nop

    .line 786
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 787
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 784
    return-object v4

    .line 786
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3d
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 787
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 788
    throw v2
.end method

.method public getAllWorkSpecIdsLiveData()Landroidx/lifecycle/LiveData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 793
    const-string v0, "SELECT id FROM workspec"

    .line 794
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 795
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string/jumbo v3, "workspec"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroidx/work/impl/model/WorkSpecDao_Impl$14;

    invoke-direct {v4, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$14;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getEligibleWorkForScheduling(I)Ljava/util/List;
    .registers 88
    .param p1, "schedulerLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "schedulerLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1715
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    .line 1716
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1717
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 1718
    .local v5, "_argIndex":I
    move/from16 v6, p1

    int-to-long v7, v6

    invoke-virtual {v4, v5, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1719
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1720
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v4, v8, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1722
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_1f
    const-string v0, "id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 1723
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v9, "state"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1724
    .local v9, "_cursorIndexOfState":I
    const-string/jumbo v10, "worker_class_name"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1725
    .local v10, "_cursorIndexOfWorkerClassName":I
    const-string v11, "input_merger_class_name"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1726
    .local v11, "_cursorIndexOfInputMergerClassName":I
    const-string v12, "input"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1727
    .local v12, "_cursorIndexOfInput":I
    const-string v13, "output"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1728
    .local v13, "_cursorIndexOfOutput":I
    const-string v14, "initial_delay"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1729
    .local v14, "_cursorIndexOfInitialDelay":I
    const-string v15, "interval_duration"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1730
    .local v15, "_cursorIndexOfIntervalDuration":I
    const-string v3, "flex_duration"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1731
    .local v3, "_cursorIndexOfFlexDuration":I
    const-string v8, "run_attempt_count"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1732
    .local v8, "_cursorIndexOfRunAttemptCount":I
    const-string v1, "backoff_policy"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_63
    .catchall {:try_start_1f .. :try_end_63} :catchall_271

    .line 1733
    .local v1, "_cursorIndexOfBackoffPolicy":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_65
    const-string v2, "backoff_delay_duration"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_26b

    .line 1734
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v17, v5

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_6d
    const-string v5, "last_enqueue_time"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 1735
    .local v5, "_cursorIndexOfLastEnqueueTime":I
    const-string v6, "minimum_retention_duration"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_267

    .line 1736
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_7b
    const-string v4, "schedule_requested_at"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1737
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v19, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "run_in_foreground"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1738
    .local v4, "_cursorIndexOfExpedited":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfExpedited":I
    .local v20, "_cursorIndexOfExpedited":I
    const-string v4, "out_of_quota_policy"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1739
    .local v4, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string v4, "period_count"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1740
    .local v4, "_cursorIndexOfPeriodCount":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfPeriodCount":I
    .local v22, "_cursorIndexOfPeriodCount":I
    const-string v4, "generation"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1741
    .local v4, "_cursorIndexOfGeneration":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfGeneration":I
    .local v23, "_cursorIndexOfGeneration":I
    const-string v4, "required_network_type"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1742
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v24, "_cursorIndexOfRequiredNetworkType":I
    const-string v4, "requires_charging"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1743
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v25, "_cursorIndexOfRequiresCharging":I
    const-string v4, "requires_device_idle"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1744
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v26, "_cursorIndexOfRequiresDeviceIdle":I
    const-string v4, "requires_battery_not_low"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1745
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v27, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string v4, "requires_storage_not_low"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1746
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v28, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1747
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v29, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1748
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v30, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1749
    .local v4, "_cursorIndexOfContentUriTriggers":I
    move/from16 v31, v4

    .end local v4    # "_cursorIndexOfContentUriTriggers":I
    .local v31, "_cursorIndexOfContentUriTriggers":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v32, v6

    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v32, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1750
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_f0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_25d

    .line 1753
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_fe

    .line 1754
    const/4 v6, 0x0

    .local v6, "_tmpId":Ljava/lang/String;
    goto :goto_102

    .line 1756
    .end local v6    # "_tmpId":Ljava/lang/String;
    :cond_fe
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1760
    .restart local v6    # "_tmpId":Ljava/lang/String;
    :goto_102
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v61, v33

    .line 1761
    .local v61, "_tmp":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v61 .. v61}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v35

    .line 1763
    .local v35, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_119

    .line 1764
    const/16 v33, 0x0

    move-object/from16 v62, v33

    .local v33, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_11f

    .line 1766
    .end local v33    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_119
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v62, v33

    .line 1769
    .local v62, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_11f
    invoke-interface {v7, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_12a

    .line 1770
    const/16 v33, 0x0

    move-object/from16 v63, v33

    .local v33, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_130

    .line 1772
    .end local v33    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_12a
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v63, v33

    .line 1776
    .local v63, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_130
    invoke-interface {v7, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_13b

    .line 1777
    const/16 v33, 0x0

    move-object/from16 v64, v33

    .local v33, "_tmp_1":[B
    goto :goto_141

    .line 1779
    .end local v33    # "_tmp_1":[B
    :cond_13b
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    move-object/from16 v64, v33

    .line 1781
    .local v64, "_tmp_1":[B
    :goto_141
    invoke-static/range {v64 .. v64}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v38

    .line 1784
    .local v38, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_150

    .line 1785
    const/16 v33, 0x0

    move-object/from16 v65, v33

    .local v33, "_tmp_2":[B
    goto :goto_156

    .line 1787
    .end local v33    # "_tmp_2":[B
    :cond_150
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    move-object/from16 v65, v33

    .line 1789
    .local v65, "_tmp_2":[B
    :goto_156
    invoke-static/range {v65 .. v65}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v39

    .line 1791
    .local v39, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1793
    .local v40, "_tmpInitialDelay":J
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1795
    .local v42, "_tmpIntervalDuration":J
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 1797
    .local v44, "_tmpFlexDuration":J
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 1800
    .local v47, "_tmpRunAttemptCount":I
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v66, v33

    .line 1801
    .local v66, "_tmp_3":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v66 .. v66}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v48

    .line 1803
    .local v48, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    .line 1805
    .local v49, "_tmpBackoffDelayDuration":J
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    .line 1807
    .local v51, "_tmpLastEnqueueTime":J
    move/from16 v67, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v0, "_cursorIndexOfMinimumRetentionDuration":I
    .local v67, "_cursorIndexOfId":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    .line 1809
    .local v53, "_tmpMinimumRetentionDuration":J
    move/from16 v32, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .restart local v32    # "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    .line 1812
    .local v55, "_tmpScheduleRequestedAt":J
    move/from16 v19, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v19    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1813
    .local v20, "_tmp_4":I
    if-eqz v20, :cond_19b

    const/16 v57, 0x1

    goto :goto_19d

    :cond_19b
    const/16 v57, 0x0

    .line 1816
    .local v57, "_tmpExpedited":Z
    :goto_19d
    move/from16 v68, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v68, "_cursorIndexOfExpedited":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1817
    .local v21, "_tmp_5":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v58

    .line 1819
    .local v58, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v69, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v69, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    .line 1821
    .local v59, "_tmpPeriodCount":I
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v22    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    .line 1825
    .local v60, "_tmpGeneration":I
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v23    # "_cursorIndexOfGeneration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1826
    .local v24, "_tmp_6":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v24 .. v24}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v71

    .line 1829
    .local v71, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v81, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v81, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1830
    .local v25, "_tmp_7":I
    if-eqz v25, :cond_1d6

    const/16 v72, 0x1

    goto :goto_1d8

    :cond_1d6
    const/16 v72, 0x0

    .line 1833
    .local v72, "_tmpRequiresCharging":Z
    :goto_1d8
    move/from16 v82, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v82, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1834
    .local v26, "_tmp_8":I
    if-eqz v26, :cond_1e5

    const/16 v73, 0x1

    goto :goto_1e7

    :cond_1e5
    const/16 v73, 0x0

    .line 1837
    .local v73, "_tmpRequiresDeviceIdle":Z
    :goto_1e7
    move/from16 v83, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v83, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1838
    .local v27, "_tmp_9":I
    if-eqz v27, :cond_1f4

    const/16 v74, 0x1

    goto :goto_1f6

    :cond_1f4
    const/16 v74, 0x0

    .line 1841
    .local v74, "_tmpRequiresBatteryNotLow":Z
    :goto_1f6
    move/from16 v84, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v84, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 1842
    .local v28, "_tmp_10":I
    if-eqz v28, :cond_203

    const/16 v75, 0x1

    goto :goto_205

    :cond_203
    const/16 v75, 0x0

    .line 1844
    .local v75, "_tmpRequiresStorageNotLow":Z
    :goto_205
    move/from16 v85, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v85, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    .line 1846
    .local v76, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v29, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v29    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v78

    .line 1849
    .local v78, "_tmpContentTriggerMaxDelayMillis":J
    move/from16 v30, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfContentUriTriggers":I
    .local v0, "_cursorIndexOfContentUriTriggers":I
    .restart local v30    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_222

    .line 1850
    const/16 v31, 0x0

    .local v31, "_tmp_11":[B
    goto :goto_226

    .line 1852
    .end local v31    # "_tmp_11":[B
    :cond_222
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    .line 1854
    .restart local v31    # "_tmp_11":[B
    :goto_226
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v80

    .line 1855
    .local v80, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v46, Landroidx/work/Constraints;

    move-object/from16 v70, v46

    invoke-direct/range {v70 .. v80}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1856
    .local v46, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v70, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v33, v70

    move-object/from16 v34, v6

    move-object/from16 v36, v62

    move-object/from16 v37, v63

    invoke-direct/range {v33 .. v60}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    move-object/from16 v33, v70

    .line 1857
    .local v33, "_item":Landroidx/work/impl/model/WorkSpec;
    move/from16 v34, v0

    move-object/from16 v0, v33

    .end local v33    # "_item":Landroidx/work/impl/model/WorkSpec;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec;
    .local v34, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_249
    .catchall {:try_start_7b .. :try_end_249} :catchall_265

    .line 1858
    move/from16 v31, v34

    move/from16 v0, v67

    move/from16 v20, v68

    move/from16 v21, v69

    move/from16 v24, v81

    move/from16 v25, v82

    move/from16 v26, v83

    move/from16 v27, v84

    move/from16 v28, v85

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v6    # "_tmpId":Ljava/lang/String;
    .end local v20    # "_tmp_4":I
    .end local v21    # "_tmp_5":I
    .end local v24    # "_tmp_6":I
    .end local v25    # "_tmp_7":I
    .end local v26    # "_tmp_8":I
    .end local v27    # "_tmp_9":I
    .end local v28    # "_tmp_10":I
    .end local v31    # "_tmp_11":[B
    .end local v35    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v38    # "_tmpInput":Landroidx/work/Data;
    .end local v39    # "_tmpOutput":Landroidx/work/Data;
    .end local v40    # "_tmpInitialDelay":J
    .end local v42    # "_tmpIntervalDuration":J
    .end local v44    # "_tmpFlexDuration":J
    .end local v46    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v47    # "_tmpRunAttemptCount":I
    .end local v48    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v49    # "_tmpBackoffDelayDuration":J
    .end local v51    # "_tmpLastEnqueueTime":J
    .end local v53    # "_tmpMinimumRetentionDuration":J
    .end local v55    # "_tmpScheduleRequestedAt":J
    .end local v57    # "_tmpExpedited":Z
    .end local v58    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v59    # "_tmpPeriodCount":I
    .end local v60    # "_tmpGeneration":I
    .end local v61    # "_tmp":I
    .end local v62    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v63    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v64    # "_tmp_1":[B
    .end local v65    # "_tmp_2":[B
    .end local v66    # "_tmp_3":I
    .end local v71    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v72    # "_tmpRequiresCharging":Z
    .end local v73    # "_tmpRequiresDeviceIdle":Z
    .end local v74    # "_tmpRequiresBatteryNotLow":Z
    .end local v75    # "_tmpRequiresStorageNotLow":Z
    .end local v76    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v78    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v80    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_f0

    .line 1859
    .end local v34    # "_cursorIndexOfContentUriTriggers":I
    .end local v67    # "_cursorIndexOfId":I
    .end local v68    # "_cursorIndexOfExpedited":I
    .end local v69    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v81    # "_cursorIndexOfRequiredNetworkType":I
    .end local v82    # "_cursorIndexOfRequiresCharging":I
    .end local v83    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v84    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v85    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v20, "_cursorIndexOfExpedited":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v24, "_cursorIndexOfRequiredNetworkType":I
    .local v25, "_cursorIndexOfRequiresCharging":I
    .local v26, "_cursorIndexOfRequiresDeviceIdle":I
    .local v27, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v28, "_cursorIndexOfRequiresStorageNotLow":I
    .local v31, "_cursorIndexOfContentUriTriggers":I
    :cond_25d
    nop

    .line 1861
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1862
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1859
    return-object v4

    .line 1861
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfBackoffPolicy":I
    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v3    # "_cursorIndexOfFlexDuration":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v5    # "_cursorIndexOfLastEnqueueTime":I
    .end local v8    # "_cursorIndexOfRunAttemptCount":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfWorkerClassName":I
    .end local v11    # "_cursorIndexOfInputMergerClassName":I
    .end local v12    # "_cursorIndexOfInput":I
    .end local v13    # "_cursorIndexOfOutput":I
    .end local v14    # "_cursorIndexOfInitialDelay":I
    .end local v15    # "_cursorIndexOfIntervalDuration":I
    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v20    # "_cursorIndexOfExpedited":I
    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v22    # "_cursorIndexOfPeriodCount":I
    .end local v23    # "_cursorIndexOfGeneration":I
    .end local v24    # "_cursorIndexOfRequiredNetworkType":I
    .end local v25    # "_cursorIndexOfRequiresCharging":I
    .end local v26    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v27    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v28    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v29    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v30    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v31    # "_cursorIndexOfContentUriTriggers":I
    .end local v32    # "_cursorIndexOfMinimumRetentionDuration":I
    :catchall_265
    move-exception v0

    goto :goto_278

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_267
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_278

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    :catchall_26b
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_278

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    :catchall_271
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1862
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1863
    throw v0
.end method

.method public getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/Data;",
            ">;"
        }
    .end annotation

    .line 1542
    const-string v0, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 1544
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1545
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 1546
    .local v2, "_argIndex":I
    if-nez p1, :cond_10

    .line 1547
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_13

    .line 1549
    :cond_10
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1551
    :goto_13
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1552
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 1554
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_20
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1555
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/Data;>;"
    :goto_29
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1558
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1559
    const/4 v6, 0x0

    .local v6, "_tmp":[B
    goto :goto_3b

    .line 1561
    .end local v6    # "_tmp":[B
    :cond_37
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1563
    .restart local v6    # "_tmp":[B
    :goto_3b
    invoke-static {v6}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v7

    .line 1564
    .local v7, "_item":Landroidx/work/Data;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_20 .. :try_end_42} :catchall_4c

    .line 1565
    nop

    .end local v6    # "_tmp":[B
    .end local v7    # "_item":Landroidx/work/Data;
    goto :goto_29

    .line 1566
    :cond_44
    nop

    .line 1568
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1569
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1566
    return-object v4

    .line 1568
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/Data;>;"
    :catchall_4c
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1569
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1570
    throw v4
.end method

.method public getRecentlyCompletedWork(J)Ljava/util/List;
    .registers 89
    .param p1, "startingAt"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "startingAt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 2323
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    .line 2324
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 2325
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 2326
    .local v5, "_argIndex":I
    move-wide/from16 v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 2327
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2328
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v4, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 2330
    .local v8, "_cursor":Landroid/database/Cursor;
    :try_start_1e
    const-string v0, "id"

    invoke-static {v8, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 2331
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v10, "state"

    invoke-static {v8, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 2332
    .local v10, "_cursorIndexOfState":I
    const-string/jumbo v11, "worker_class_name"

    invoke-static {v8, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 2333
    .local v11, "_cursorIndexOfWorkerClassName":I
    const-string v12, "input_merger_class_name"

    invoke-static {v8, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 2334
    .local v12, "_cursorIndexOfInputMergerClassName":I
    const-string v13, "input"

    invoke-static {v8, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 2335
    .local v13, "_cursorIndexOfInput":I
    const-string v14, "output"

    invoke-static {v8, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 2336
    .local v14, "_cursorIndexOfOutput":I
    const-string v15, "initial_delay"

    invoke-static {v8, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 2337
    .local v15, "_cursorIndexOfInitialDelay":I
    const-string v3, "interval_duration"

    invoke-static {v8, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 2338
    .local v3, "_cursorIndexOfIntervalDuration":I
    const-string v9, "flex_duration"

    invoke-static {v8, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 2339
    .local v9, "_cursorIndexOfFlexDuration":I
    const-string v1, "run_attempt_count"

    invoke-static {v8, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_5c
    .catchall {:try_start_1e .. :try_end_5c} :catchall_270

    .line 2340
    .local v1, "_cursorIndexOfRunAttemptCount":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_5e
    const-string v2, "backoff_policy"

    invoke-static {v8, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_26a

    .line 2341
    .local v2, "_cursorIndexOfBackoffPolicy":I
    move/from16 v17, v5

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_66
    const-string v5, "backoff_delay_duration"

    invoke-static {v8, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 2342
    .local v5, "_cursorIndexOfBackoffDelayDuration":I
    const-string v6, "last_enqueue_time"

    invoke-static {v8, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 2343
    .local v6, "_cursorIndexOfLastEnqueueTime":I
    const-string v7, "minimum_retention_duration"

    invoke-static {v8, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7
    :try_end_78
    .catchall {:try_start_66 .. :try_end_78} :catchall_266

    .line 2344
    .local v7, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_7a
    const-string v4, "schedule_requested_at"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2345
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v19, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "run_in_foreground"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2346
    .local v4, "_cursorIndexOfExpedited":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfExpedited":I
    .local v20, "_cursorIndexOfExpedited":I
    const-string v4, "out_of_quota_policy"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2347
    .local v4, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string v4, "period_count"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2348
    .local v4, "_cursorIndexOfPeriodCount":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfPeriodCount":I
    .local v22, "_cursorIndexOfPeriodCount":I
    const-string v4, "generation"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2349
    .local v4, "_cursorIndexOfGeneration":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfGeneration":I
    .local v23, "_cursorIndexOfGeneration":I
    const-string v4, "required_network_type"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2350
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v24, "_cursorIndexOfRequiredNetworkType":I
    const-string v4, "requires_charging"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2351
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v25, "_cursorIndexOfRequiresCharging":I
    const-string v4, "requires_device_idle"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2352
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v26, "_cursorIndexOfRequiresDeviceIdle":I
    const-string v4, "requires_battery_not_low"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2353
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v27, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string v4, "requires_storage_not_low"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2354
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v28, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2355
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v29, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2356
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v30, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2357
    .local v4, "_cursorIndexOfContentUriTriggers":I
    move/from16 v31, v4

    .end local v4    # "_cursorIndexOfContentUriTriggers":I
    .local v31, "_cursorIndexOfContentUriTriggers":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v32, v7

    .end local v7    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v32, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2358
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_ef
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_25c

    .line 2361
    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_fd

    .line 2362
    const/4 v7, 0x0

    .local v7, "_tmpId":Ljava/lang/String;
    goto :goto_101

    .line 2364
    .end local v7    # "_tmpId":Ljava/lang/String;
    :cond_fd
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2368
    .restart local v7    # "_tmpId":Ljava/lang/String;
    :goto_101
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v61, v33

    .line 2369
    .local v61, "_tmp":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v61 .. v61}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v35

    .line 2371
    .local v35, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_118

    .line 2372
    const/16 v33, 0x0

    move-object/from16 v62, v33

    .local v33, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_11e

    .line 2374
    .end local v33    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_118
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v62, v33

    .line 2377
    .local v62, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_11e
    invoke-interface {v8, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_129

    .line 2378
    const/16 v33, 0x0

    move-object/from16 v63, v33

    .local v33, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_12f

    .line 2380
    .end local v33    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_129
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v63, v33

    .line 2384
    .local v63, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_12f
    invoke-interface {v8, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_13a

    .line 2385
    const/16 v33, 0x0

    move-object/from16 v64, v33

    .local v33, "_tmp_1":[B
    goto :goto_140

    .line 2387
    .end local v33    # "_tmp_1":[B
    :cond_13a
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    move-object/from16 v64, v33

    .line 2389
    .local v64, "_tmp_1":[B
    :goto_140
    invoke-static/range {v64 .. v64}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v38

    .line 2392
    .local v38, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_14f

    .line 2393
    const/16 v33, 0x0

    move-object/from16 v65, v33

    .local v33, "_tmp_2":[B
    goto :goto_155

    .line 2395
    .end local v33    # "_tmp_2":[B
    :cond_14f
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    move-object/from16 v65, v33

    .line 2397
    .local v65, "_tmp_2":[B
    :goto_155
    invoke-static/range {v65 .. v65}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v39

    .line 2399
    .local v39, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 2401
    .local v40, "_tmpInitialDelay":J
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 2403
    .local v42, "_tmpIntervalDuration":J
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 2405
    .local v44, "_tmpFlexDuration":J
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 2408
    .local v47, "_tmpRunAttemptCount":I
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v66, v33

    .line 2409
    .local v66, "_tmp_3":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v66 .. v66}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v48

    .line 2411
    .local v48, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    .line 2413
    .local v49, "_tmpBackoffDelayDuration":J
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    .line 2415
    .local v51, "_tmpLastEnqueueTime":J
    move/from16 v67, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v0, "_cursorIndexOfMinimumRetentionDuration":I
    .local v67, "_cursorIndexOfId":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    .line 2417
    .local v53, "_tmpMinimumRetentionDuration":J
    move/from16 v32, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .restart local v32    # "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    .line 2420
    .local v55, "_tmpScheduleRequestedAt":J
    move/from16 v19, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v19    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2421
    .local v20, "_tmp_4":I
    if-eqz v20, :cond_19a

    const/16 v57, 0x1

    goto :goto_19c

    :cond_19a
    const/16 v57, 0x0

    .line 2424
    .local v57, "_tmpExpedited":Z
    :goto_19c
    move/from16 v68, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v68, "_cursorIndexOfExpedited":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 2425
    .local v21, "_tmp_5":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v58

    .line 2427
    .local v58, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v69, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v69, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    .line 2429
    .local v59, "_tmpPeriodCount":I
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v22    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    .line 2433
    .local v60, "_tmpGeneration":I
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v23    # "_cursorIndexOfGeneration":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 2434
    .local v24, "_tmp_6":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v24 .. v24}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v71

    .line 2437
    .local v71, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v81, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v81, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 2438
    .local v25, "_tmp_7":I
    if-eqz v25, :cond_1d5

    const/16 v72, 0x1

    goto :goto_1d7

    :cond_1d5
    const/16 v72, 0x0

    .line 2441
    .local v72, "_tmpRequiresCharging":Z
    :goto_1d7
    move/from16 v82, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v82, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 2442
    .local v26, "_tmp_8":I
    if-eqz v26, :cond_1e4

    const/16 v73, 0x1

    goto :goto_1e6

    :cond_1e4
    const/16 v73, 0x0

    .line 2445
    .local v73, "_tmpRequiresDeviceIdle":Z
    :goto_1e6
    move/from16 v83, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v83, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 2446
    .local v27, "_tmp_9":I
    if-eqz v27, :cond_1f3

    const/16 v74, 0x1

    goto :goto_1f5

    :cond_1f3
    const/16 v74, 0x0

    .line 2449
    .local v74, "_tmpRequiresBatteryNotLow":Z
    :goto_1f5
    move/from16 v84, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v84, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 2450
    .local v28, "_tmp_10":I
    if-eqz v28, :cond_202

    const/16 v75, 0x1

    goto :goto_204

    :cond_202
    const/16 v75, 0x0

    .line 2452
    .local v75, "_tmpRequiresStorageNotLow":Z
    :goto_204
    move/from16 v85, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v85, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    .line 2454
    .local v76, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v29, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v29    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v78

    .line 2457
    .local v78, "_tmpContentTriggerMaxDelayMillis":J
    move/from16 v30, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfContentUriTriggers":I
    .local v0, "_cursorIndexOfContentUriTriggers":I
    .restart local v30    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_221

    .line 2458
    const/16 v31, 0x0

    .local v31, "_tmp_11":[B
    goto :goto_225

    .line 2460
    .end local v31    # "_tmp_11":[B
    :cond_221
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    .line 2462
    .restart local v31    # "_tmp_11":[B
    :goto_225
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v80

    .line 2463
    .local v80, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v46, Landroidx/work/Constraints;

    move-object/from16 v70, v46

    invoke-direct/range {v70 .. v80}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 2464
    .local v46, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v70, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v33, v70

    move-object/from16 v34, v7

    move-object/from16 v36, v62

    move-object/from16 v37, v63

    invoke-direct/range {v33 .. v60}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    move-object/from16 v33, v70

    .line 2465
    .local v33, "_item":Landroidx/work/impl/model/WorkSpec;
    move/from16 v34, v0

    move-object/from16 v0, v33

    .end local v33    # "_item":Landroidx/work/impl/model/WorkSpec;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec;
    .local v34, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_248
    .catchall {:try_start_7a .. :try_end_248} :catchall_264

    .line 2466
    move/from16 v31, v34

    move/from16 v0, v67

    move/from16 v20, v68

    move/from16 v21, v69

    move/from16 v24, v81

    move/from16 v25, v82

    move/from16 v26, v83

    move/from16 v27, v84

    move/from16 v28, v85

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v7    # "_tmpId":Ljava/lang/String;
    .end local v20    # "_tmp_4":I
    .end local v21    # "_tmp_5":I
    .end local v24    # "_tmp_6":I
    .end local v25    # "_tmp_7":I
    .end local v26    # "_tmp_8":I
    .end local v27    # "_tmp_9":I
    .end local v28    # "_tmp_10":I
    .end local v31    # "_tmp_11":[B
    .end local v35    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v38    # "_tmpInput":Landroidx/work/Data;
    .end local v39    # "_tmpOutput":Landroidx/work/Data;
    .end local v40    # "_tmpInitialDelay":J
    .end local v42    # "_tmpIntervalDuration":J
    .end local v44    # "_tmpFlexDuration":J
    .end local v46    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v47    # "_tmpRunAttemptCount":I
    .end local v48    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v49    # "_tmpBackoffDelayDuration":J
    .end local v51    # "_tmpLastEnqueueTime":J
    .end local v53    # "_tmpMinimumRetentionDuration":J
    .end local v55    # "_tmpScheduleRequestedAt":J
    .end local v57    # "_tmpExpedited":Z
    .end local v58    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v59    # "_tmpPeriodCount":I
    .end local v60    # "_tmpGeneration":I
    .end local v61    # "_tmp":I
    .end local v62    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v63    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v64    # "_tmp_1":[B
    .end local v65    # "_tmp_2":[B
    .end local v66    # "_tmp_3":I
    .end local v71    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v72    # "_tmpRequiresCharging":Z
    .end local v73    # "_tmpRequiresDeviceIdle":Z
    .end local v74    # "_tmpRequiresBatteryNotLow":Z
    .end local v75    # "_tmpRequiresStorageNotLow":Z
    .end local v76    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v78    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v80    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_ef

    .line 2467
    .end local v34    # "_cursorIndexOfContentUriTriggers":I
    .end local v67    # "_cursorIndexOfId":I
    .end local v68    # "_cursorIndexOfExpedited":I
    .end local v69    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v81    # "_cursorIndexOfRequiredNetworkType":I
    .end local v82    # "_cursorIndexOfRequiresCharging":I
    .end local v83    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v84    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v85    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v20, "_cursorIndexOfExpedited":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v24, "_cursorIndexOfRequiredNetworkType":I
    .local v25, "_cursorIndexOfRequiresCharging":I
    .local v26, "_cursorIndexOfRequiresDeviceIdle":I
    .local v27, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v28, "_cursorIndexOfRequiresStorageNotLow":I
    .local v31, "_cursorIndexOfContentUriTriggers":I
    :cond_25c
    nop

    .line 2469
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2470
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2467
    return-object v4

    .line 2469
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfRunAttemptCount":I
    .end local v2    # "_cursorIndexOfBackoffPolicy":I
    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v5    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v6    # "_cursorIndexOfLastEnqueueTime":I
    .end local v9    # "_cursorIndexOfFlexDuration":I
    .end local v10    # "_cursorIndexOfState":I
    .end local v11    # "_cursorIndexOfWorkerClassName":I
    .end local v12    # "_cursorIndexOfInputMergerClassName":I
    .end local v13    # "_cursorIndexOfInput":I
    .end local v14    # "_cursorIndexOfOutput":I
    .end local v15    # "_cursorIndexOfInitialDelay":I
    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v20    # "_cursorIndexOfExpedited":I
    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v22    # "_cursorIndexOfPeriodCount":I
    .end local v23    # "_cursorIndexOfGeneration":I
    .end local v24    # "_cursorIndexOfRequiredNetworkType":I
    .end local v25    # "_cursorIndexOfRequiresCharging":I
    .end local v26    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v27    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v28    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v29    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v30    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v31    # "_cursorIndexOfContentUriTriggers":I
    .end local v32    # "_cursorIndexOfMinimumRetentionDuration":I
    :catchall_264
    move-exception v0

    goto :goto_277

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_266
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_277

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    :catchall_26a
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_277

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    :catchall_270
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_277
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2470
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2471
    throw v0
.end method

.method public getRunningWork()Ljava/util/List;
    .registers 86
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 2172
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=1"

    .line 2173
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=1"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 2174
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2175
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 2177
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_17
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 2178
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v6, "state"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 2179
    .local v6, "_cursorIndexOfState":I
    const-string/jumbo v7, "worker_class_name"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 2180
    .local v7, "_cursorIndexOfWorkerClassName":I
    const-string v8, "input_merger_class_name"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 2181
    .local v8, "_cursorIndexOfInputMergerClassName":I
    const-string v9, "input"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 2182
    .local v9, "_cursorIndexOfInput":I
    const-string v10, "output"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 2183
    .local v10, "_cursorIndexOfOutput":I
    const-string v11, "initial_delay"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 2184
    .local v11, "_cursorIndexOfInitialDelay":I
    const-string v12, "interval_duration"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 2185
    .local v12, "_cursorIndexOfIntervalDuration":I
    const-string v13, "flex_duration"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 2186
    .local v13, "_cursorIndexOfFlexDuration":I
    const-string v14, "run_attempt_count"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 2187
    .local v14, "_cursorIndexOfRunAttemptCount":I
    const-string v15, "backoff_policy"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 2188
    .local v15, "_cursorIndexOfBackoffPolicy":I
    const-string v3, "backoff_delay_duration"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 2189
    .local v3, "_cursorIndexOfBackoffDelayDuration":I
    const-string v1, "last_enqueue_time"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_67
    .catchall {:try_start_17 .. :try_end_67} :catchall_264

    .line 2190
    .local v1, "_cursorIndexOfLastEnqueueTime":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_69
    const-string v2, "minimum_retention_duration"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_260

    .line 2191
    .local v2, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_71
    const-string v4, "schedule_requested_at"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2192
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v18, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "run_in_foreground"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2193
    .local v4, "_cursorIndexOfExpedited":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfExpedited":I
    .local v19, "_cursorIndexOfExpedited":I
    const-string v4, "out_of_quota_policy"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2194
    .local v4, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v20, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string v4, "period_count"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2195
    .local v4, "_cursorIndexOfPeriodCount":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfPeriodCount":I
    .local v21, "_cursorIndexOfPeriodCount":I
    const-string v4, "generation"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2196
    .local v4, "_cursorIndexOfGeneration":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfGeneration":I
    .local v22, "_cursorIndexOfGeneration":I
    const-string v4, "required_network_type"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2197
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v23, "_cursorIndexOfRequiredNetworkType":I
    const-string v4, "requires_charging"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2198
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v24, "_cursorIndexOfRequiresCharging":I
    const-string v4, "requires_device_idle"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2199
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v25, "_cursorIndexOfRequiresDeviceIdle":I
    const-string v4, "requires_battery_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2200
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v26, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string v4, "requires_storage_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2201
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v27, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2202
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v28, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2203
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v29, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2204
    .local v4, "_cursorIndexOfContentUriTriggers":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfContentUriTriggers":I
    .local v30, "_cursorIndexOfContentUriTriggers":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v31, v2

    .end local v2    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v31, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 2205
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_e7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_256

    .line 2208
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 2209
    const/4 v4, 0x0

    .local v4, "_tmpId":Ljava/lang/String;
    goto :goto_f9

    .line 2211
    .end local v4    # "_tmpId":Ljava/lang/String;
    :cond_f5
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2215
    .restart local v4    # "_tmpId":Ljava/lang/String;
    :goto_f9
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    move/from16 v60, v32

    .line 2216
    .local v60, "_tmp":I
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v60 .. v60}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v34

    .line 2218
    .local v34, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_110

    .line 2219
    const/16 v32, 0x0

    move-object/from16 v61, v32

    .local v32, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_116

    .line 2221
    .end local v32    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_110
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v61, v32

    .line 2224
    .local v61, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_116
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_121

    .line 2225
    const/16 v32, 0x0

    move-object/from16 v62, v32

    .local v32, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_127

    .line 2227
    .end local v32    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_121
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v62, v32

    .line 2231
    .local v62, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_127
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_132

    .line 2232
    const/16 v32, 0x0

    move-object/from16 v63, v32

    .local v32, "_tmp_1":[B
    goto :goto_138

    .line 2234
    .end local v32    # "_tmp_1":[B
    :cond_132
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v63, v32

    .line 2236
    .local v63, "_tmp_1":[B
    :goto_138
    invoke-static/range {v63 .. v63}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v37

    .line 2239
    .local v37, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_147

    .line 2240
    const/16 v32, 0x0

    move-object/from16 v64, v32

    .local v32, "_tmp_2":[B
    goto :goto_14d

    .line 2242
    .end local v32    # "_tmp_2":[B
    :cond_147
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v64, v32

    .line 2244
    .local v64, "_tmp_2":[B
    :goto_14d
    invoke-static/range {v64 .. v64}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v38

    .line 2246
    .local v38, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 2248
    .local v39, "_tmpInitialDelay":J
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 2250
    .local v41, "_tmpIntervalDuration":J
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 2252
    .local v43, "_tmpFlexDuration":J
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 2255
    .local v46, "_tmpRunAttemptCount":I
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    move/from16 v65, v32

    .line 2256
    .local v65, "_tmp_3":I
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v65 .. v65}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v47

    .line 2258
    .local v47, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 2260
    .local v48, "_tmpBackoffDelayDuration":J
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 2262
    .local v50, "_tmpLastEnqueueTime":J
    move/from16 v66, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v0, "_cursorIndexOfMinimumRetentionDuration":I
    .local v66, "_cursorIndexOfId":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 2264
    .local v52, "_tmpMinimumRetentionDuration":J
    move/from16 v31, v0

    move/from16 v0, v18

    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .restart local v31    # "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 2267
    .local v54, "_tmpScheduleRequestedAt":J
    move/from16 v18, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v18    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 2268
    .local v19, "_tmp_4":I
    const/16 v32, 0x1

    if-eqz v19, :cond_194

    const/16 v56, 0x1

    goto :goto_196

    :cond_194
    const/16 v56, 0x0

    .line 2271
    .local v56, "_tmpExpedited":Z
    :goto_196
    move/from16 v67, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v67, "_cursorIndexOfExpedited":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2272
    .local v20, "_tmp_5":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v20 .. v20}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v57

    .line 2274
    .local v57, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v68, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v68, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    .line 2276
    .local v58, "_tmpPeriodCount":I
    move/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v21    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    .line 2280
    .local v59, "_tmpGeneration":I
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v22    # "_cursorIndexOfGeneration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 2281
    .local v23, "_tmp_6":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v23 .. v23}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v70

    .line 2284
    .local v70, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v80, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v80, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 2285
    .local v24, "_tmp_7":I
    if-eqz v24, :cond_1cf

    const/16 v71, 0x1

    goto :goto_1d1

    :cond_1cf
    const/16 v71, 0x0

    .line 2288
    .local v71, "_tmpRequiresCharging":Z
    :goto_1d1
    move/from16 v81, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v81, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 2289
    .local v25, "_tmp_8":I
    if-eqz v25, :cond_1de

    const/16 v72, 0x1

    goto :goto_1e0

    :cond_1de
    const/16 v72, 0x0

    .line 2292
    .local v72, "_tmpRequiresDeviceIdle":Z
    :goto_1e0
    move/from16 v82, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v82, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 2293
    .local v26, "_tmp_9":I
    if-eqz v26, :cond_1ed

    const/16 v73, 0x1

    goto :goto_1ef

    :cond_1ed
    const/16 v73, 0x0

    .line 2296
    .local v73, "_tmpRequiresBatteryNotLow":Z
    :goto_1ef
    move/from16 v83, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v83, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 2297
    .local v27, "_tmp_10":I
    if-eqz v27, :cond_1fc

    const/16 v74, 0x1

    goto :goto_1fe

    :cond_1fc
    const/16 v74, 0x0

    .line 2299
    .local v74, "_tmpRequiresStorageNotLow":Z
    :goto_1fe
    move/from16 v84, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v84, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v75

    .line 2301
    .local v75, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v28, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v28    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v77

    .line 2304
    .local v77, "_tmpContentTriggerMaxDelayMillis":J
    move/from16 v29, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfContentUriTriggers":I
    .local v0, "_cursorIndexOfContentUriTriggers":I
    .restart local v29    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_21b

    .line 2305
    const/16 v30, 0x0

    .local v30, "_tmp_11":[B
    goto :goto_21f

    .line 2307
    .end local v30    # "_tmp_11":[B
    :cond_21b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    .line 2309
    .restart local v30    # "_tmp_11":[B
    :goto_21f
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v79

    .line 2310
    .local v79, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v45, Landroidx/work/Constraints;

    move-object/from16 v69, v45

    invoke-direct/range {v69 .. v79}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 2311
    .local v45, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v69, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v32, v69

    move-object/from16 v33, v4

    move-object/from16 v35, v61

    move-object/from16 v36, v62

    invoke-direct/range {v32 .. v59}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    move-object/from16 v32, v69

    .line 2312
    .local v32, "_item":Landroidx/work/impl/model/WorkSpec;
    move/from16 v33, v0

    move-object/from16 v0, v32

    .end local v32    # "_item":Landroidx/work/impl/model/WorkSpec;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec;
    .local v33, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_242
    .catchall {:try_start_71 .. :try_end_242} :catchall_25e

    .line 2313
    move/from16 v30, v33

    move/from16 v0, v66

    move/from16 v19, v67

    move/from16 v20, v68

    move/from16 v23, v80

    move/from16 v24, v81

    move/from16 v25, v82

    move/from16 v26, v83

    move/from16 v27, v84

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v4    # "_tmpId":Ljava/lang/String;
    .end local v19    # "_tmp_4":I
    .end local v20    # "_tmp_5":I
    .end local v23    # "_tmp_6":I
    .end local v24    # "_tmp_7":I
    .end local v25    # "_tmp_8":I
    .end local v26    # "_tmp_9":I
    .end local v27    # "_tmp_10":I
    .end local v30    # "_tmp_11":[B
    .end local v34    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v37    # "_tmpInput":Landroidx/work/Data;
    .end local v38    # "_tmpOutput":Landroidx/work/Data;
    .end local v39    # "_tmpInitialDelay":J
    .end local v41    # "_tmpIntervalDuration":J
    .end local v43    # "_tmpFlexDuration":J
    .end local v45    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v46    # "_tmpRunAttemptCount":I
    .end local v47    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v48    # "_tmpBackoffDelayDuration":J
    .end local v50    # "_tmpLastEnqueueTime":J
    .end local v52    # "_tmpMinimumRetentionDuration":J
    .end local v54    # "_tmpScheduleRequestedAt":J
    .end local v56    # "_tmpExpedited":Z
    .end local v57    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v58    # "_tmpPeriodCount":I
    .end local v59    # "_tmpGeneration":I
    .end local v60    # "_tmp":I
    .end local v61    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v62    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v63    # "_tmp_1":[B
    .end local v64    # "_tmp_2":[B
    .end local v65    # "_tmp_3":I
    .end local v70    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v71    # "_tmpRequiresCharging":Z
    .end local v72    # "_tmpRequiresDeviceIdle":Z
    .end local v73    # "_tmpRequiresBatteryNotLow":Z
    .end local v74    # "_tmpRequiresStorageNotLow":Z
    .end local v75    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v77    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v79    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_e7

    .line 2314
    .end local v33    # "_cursorIndexOfContentUriTriggers":I
    .end local v66    # "_cursorIndexOfId":I
    .end local v67    # "_cursorIndexOfExpedited":I
    .end local v68    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v80    # "_cursorIndexOfRequiredNetworkType":I
    .end local v81    # "_cursorIndexOfRequiresCharging":I
    .end local v82    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v83    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v84    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v19, "_cursorIndexOfExpedited":I
    .local v20, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v23, "_cursorIndexOfRequiredNetworkType":I
    .local v24, "_cursorIndexOfRequiresCharging":I
    .local v25, "_cursorIndexOfRequiresDeviceIdle":I
    .local v26, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v27, "_cursorIndexOfRequiresStorageNotLow":I
    .local v30, "_cursorIndexOfContentUriTriggers":I
    :cond_256
    nop

    .line 2316
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2317
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2314
    return-object v2

    .line 2316
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfLastEnqueueTime":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v3    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v6    # "_cursorIndexOfState":I
    .end local v7    # "_cursorIndexOfWorkerClassName":I
    .end local v8    # "_cursorIndexOfInputMergerClassName":I
    .end local v9    # "_cursorIndexOfInput":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfInitialDelay":I
    .end local v12    # "_cursorIndexOfIntervalDuration":I
    .end local v13    # "_cursorIndexOfFlexDuration":I
    .end local v14    # "_cursorIndexOfRunAttemptCount":I
    .end local v15    # "_cursorIndexOfBackoffPolicy":I
    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v19    # "_cursorIndexOfExpedited":I
    .end local v20    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v21    # "_cursorIndexOfPeriodCount":I
    .end local v22    # "_cursorIndexOfGeneration":I
    .end local v23    # "_cursorIndexOfRequiredNetworkType":I
    .end local v24    # "_cursorIndexOfRequiresCharging":I
    .end local v25    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v26    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v27    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v28    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v29    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v30    # "_cursorIndexOfContentUriTriggers":I
    .end local v31    # "_cursorIndexOfMinimumRetentionDuration":I
    :catchall_25e
    move-exception v0

    goto :goto_269

    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_260
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_269

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_264
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_269
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2317
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2318
    throw v0
.end method

.method public getScheduleRequestedAtLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .registers 9
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1681
    const-string v0, "SELECT schedule_requested_at FROM workspec WHERE id=?"

    .line 1682
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT schedule_requested_at FROM workspec WHERE id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1683
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 1684
    .local v2, "_argIndex":I
    if-nez p1, :cond_10

    .line 1685
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_13

    .line 1687
    :cond_10
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1689
    :goto_13
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v3

    const-string/jumbo v4, "workspec"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroidx/work/impl/model/WorkSpecDao_Impl$18;

    invoke-direct {v5, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$18;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    return-object v3
.end method

.method public getScheduledWork()Ljava/util/List;
    .registers 86
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 2021
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 2022
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 2023
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2024
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 2026
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_17
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 2027
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v6, "state"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 2028
    .local v6, "_cursorIndexOfState":I
    const-string/jumbo v7, "worker_class_name"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 2029
    .local v7, "_cursorIndexOfWorkerClassName":I
    const-string v8, "input_merger_class_name"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 2030
    .local v8, "_cursorIndexOfInputMergerClassName":I
    const-string v9, "input"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 2031
    .local v9, "_cursorIndexOfInput":I
    const-string v10, "output"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 2032
    .local v10, "_cursorIndexOfOutput":I
    const-string v11, "initial_delay"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 2033
    .local v11, "_cursorIndexOfInitialDelay":I
    const-string v12, "interval_duration"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 2034
    .local v12, "_cursorIndexOfIntervalDuration":I
    const-string v13, "flex_duration"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 2035
    .local v13, "_cursorIndexOfFlexDuration":I
    const-string v14, "run_attempt_count"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 2036
    .local v14, "_cursorIndexOfRunAttemptCount":I
    const-string v15, "backoff_policy"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 2037
    .local v15, "_cursorIndexOfBackoffPolicy":I
    const-string v3, "backoff_delay_duration"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 2038
    .local v3, "_cursorIndexOfBackoffDelayDuration":I
    const-string v1, "last_enqueue_time"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_67
    .catchall {:try_start_17 .. :try_end_67} :catchall_264

    .line 2039
    .local v1, "_cursorIndexOfLastEnqueueTime":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_69
    const-string v2, "minimum_retention_duration"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_260

    .line 2040
    .local v2, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_71
    const-string v4, "schedule_requested_at"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2041
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v18, "_cursorIndexOfScheduleRequestedAt":I
    const-string v4, "run_in_foreground"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2042
    .local v4, "_cursorIndexOfExpedited":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfExpedited":I
    .local v19, "_cursorIndexOfExpedited":I
    const-string v4, "out_of_quota_policy"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2043
    .local v4, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v20, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string v4, "period_count"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2044
    .local v4, "_cursorIndexOfPeriodCount":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfPeriodCount":I
    .local v21, "_cursorIndexOfPeriodCount":I
    const-string v4, "generation"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2045
    .local v4, "_cursorIndexOfGeneration":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfGeneration":I
    .local v22, "_cursorIndexOfGeneration":I
    const-string v4, "required_network_type"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2046
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v23, "_cursorIndexOfRequiredNetworkType":I
    const-string v4, "requires_charging"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2047
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v24, "_cursorIndexOfRequiresCharging":I
    const-string v4, "requires_device_idle"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2048
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v25, "_cursorIndexOfRequiresDeviceIdle":I
    const-string v4, "requires_battery_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2049
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v26, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string v4, "requires_storage_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2050
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v27, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2051
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v28, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2052
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v29, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2053
    .local v4, "_cursorIndexOfContentUriTriggers":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfContentUriTriggers":I
    .local v30, "_cursorIndexOfContentUriTriggers":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v31, v2

    .end local v2    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v31, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 2054
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_e7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_256

    .line 2057
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 2058
    const/4 v4, 0x0

    .local v4, "_tmpId":Ljava/lang/String;
    goto :goto_f9

    .line 2060
    .end local v4    # "_tmpId":Ljava/lang/String;
    :cond_f5
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2064
    .restart local v4    # "_tmpId":Ljava/lang/String;
    :goto_f9
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    move/from16 v60, v32

    .line 2065
    .local v60, "_tmp":I
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v60 .. v60}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v34

    .line 2067
    .local v34, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_110

    .line 2068
    const/16 v32, 0x0

    move-object/from16 v61, v32

    .local v32, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_116

    .line 2070
    .end local v32    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_110
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v61, v32

    .line 2073
    .local v61, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_116
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_121

    .line 2074
    const/16 v32, 0x0

    move-object/from16 v62, v32

    .local v32, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_127

    .line 2076
    .end local v32    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_121
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v62, v32

    .line 2080
    .local v62, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_127
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_132

    .line 2081
    const/16 v32, 0x0

    move-object/from16 v63, v32

    .local v32, "_tmp_1":[B
    goto :goto_138

    .line 2083
    .end local v32    # "_tmp_1":[B
    :cond_132
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v63, v32

    .line 2085
    .local v63, "_tmp_1":[B
    :goto_138
    invoke-static/range {v63 .. v63}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v37

    .line 2088
    .local v37, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_147

    .line 2089
    const/16 v32, 0x0

    move-object/from16 v64, v32

    .local v32, "_tmp_2":[B
    goto :goto_14d

    .line 2091
    .end local v32    # "_tmp_2":[B
    :cond_147
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    move-object/from16 v64, v32

    .line 2093
    .local v64, "_tmp_2":[B
    :goto_14d
    invoke-static/range {v64 .. v64}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v38

    .line 2095
    .local v38, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 2097
    .local v39, "_tmpInitialDelay":J
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 2099
    .local v41, "_tmpIntervalDuration":J
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 2101
    .local v43, "_tmpFlexDuration":J
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 2104
    .local v46, "_tmpRunAttemptCount":I
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    move/from16 v65, v32

    .line 2105
    .local v65, "_tmp_3":I
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v65 .. v65}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v47

    .line 2107
    .local v47, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 2109
    .local v48, "_tmpBackoffDelayDuration":J
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 2111
    .local v50, "_tmpLastEnqueueTime":J
    move/from16 v66, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v0, "_cursorIndexOfMinimumRetentionDuration":I
    .local v66, "_cursorIndexOfId":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 2113
    .local v52, "_tmpMinimumRetentionDuration":J
    move/from16 v31, v0

    move/from16 v0, v18

    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .restart local v31    # "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 2116
    .local v54, "_tmpScheduleRequestedAt":J
    move/from16 v18, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v18    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 2117
    .local v19, "_tmp_4":I
    const/16 v32, 0x1

    if-eqz v19, :cond_194

    const/16 v56, 0x1

    goto :goto_196

    :cond_194
    const/16 v56, 0x0

    .line 2120
    .local v56, "_tmpExpedited":Z
    :goto_196
    move/from16 v67, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v67, "_cursorIndexOfExpedited":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2121
    .local v20, "_tmp_5":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v20 .. v20}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v57

    .line 2123
    .local v57, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v68, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v68, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    .line 2125
    .local v58, "_tmpPeriodCount":I
    move/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v21    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    .line 2129
    .local v59, "_tmpGeneration":I
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v22    # "_cursorIndexOfGeneration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 2130
    .local v23, "_tmp_6":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v23 .. v23}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v70

    .line 2133
    .local v70, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v80, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v80, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 2134
    .local v24, "_tmp_7":I
    if-eqz v24, :cond_1cf

    const/16 v71, 0x1

    goto :goto_1d1

    :cond_1cf
    const/16 v71, 0x0

    .line 2137
    .local v71, "_tmpRequiresCharging":Z
    :goto_1d1
    move/from16 v81, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v81, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 2138
    .local v25, "_tmp_8":I
    if-eqz v25, :cond_1de

    const/16 v72, 0x1

    goto :goto_1e0

    :cond_1de
    const/16 v72, 0x0

    .line 2141
    .local v72, "_tmpRequiresDeviceIdle":Z
    :goto_1e0
    move/from16 v82, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v82, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 2142
    .local v26, "_tmp_9":I
    if-eqz v26, :cond_1ed

    const/16 v73, 0x1

    goto :goto_1ef

    :cond_1ed
    const/16 v73, 0x0

    .line 2145
    .local v73, "_tmpRequiresBatteryNotLow":Z
    :goto_1ef
    move/from16 v83, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v83, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 2146
    .local v27, "_tmp_10":I
    if-eqz v27, :cond_1fc

    const/16 v74, 0x1

    goto :goto_1fe

    :cond_1fc
    const/16 v74, 0x0

    .line 2148
    .local v74, "_tmpRequiresStorageNotLow":Z
    :goto_1fe
    move/from16 v84, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v84, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v75

    .line 2150
    .local v75, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v28, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v28    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v77

    .line 2153
    .local v77, "_tmpContentTriggerMaxDelayMillis":J
    move/from16 v29, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfContentUriTriggers":I
    .local v0, "_cursorIndexOfContentUriTriggers":I
    .restart local v29    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_21b

    .line 2154
    const/16 v30, 0x0

    .local v30, "_tmp_11":[B
    goto :goto_21f

    .line 2156
    .end local v30    # "_tmp_11":[B
    :cond_21b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    .line 2158
    .restart local v30    # "_tmp_11":[B
    :goto_21f
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v79

    .line 2159
    .local v79, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v45, Landroidx/work/Constraints;

    move-object/from16 v69, v45

    invoke-direct/range {v69 .. v79}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 2160
    .local v45, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v69, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v32, v69

    move-object/from16 v33, v4

    move-object/from16 v35, v61

    move-object/from16 v36, v62

    invoke-direct/range {v32 .. v59}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    move-object/from16 v32, v69

    .line 2161
    .local v32, "_item":Landroidx/work/impl/model/WorkSpec;
    move/from16 v33, v0

    move-object/from16 v0, v32

    .end local v32    # "_item":Landroidx/work/impl/model/WorkSpec;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec;
    .local v33, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_242
    .catchall {:try_start_71 .. :try_end_242} :catchall_25e

    .line 2162
    move/from16 v30, v33

    move/from16 v0, v66

    move/from16 v19, v67

    move/from16 v20, v68

    move/from16 v23, v80

    move/from16 v24, v81

    move/from16 v25, v82

    move/from16 v26, v83

    move/from16 v27, v84

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v4    # "_tmpId":Ljava/lang/String;
    .end local v19    # "_tmp_4":I
    .end local v20    # "_tmp_5":I
    .end local v23    # "_tmp_6":I
    .end local v24    # "_tmp_7":I
    .end local v25    # "_tmp_8":I
    .end local v26    # "_tmp_9":I
    .end local v27    # "_tmp_10":I
    .end local v30    # "_tmp_11":[B
    .end local v34    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v37    # "_tmpInput":Landroidx/work/Data;
    .end local v38    # "_tmpOutput":Landroidx/work/Data;
    .end local v39    # "_tmpInitialDelay":J
    .end local v41    # "_tmpIntervalDuration":J
    .end local v43    # "_tmpFlexDuration":J
    .end local v45    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v46    # "_tmpRunAttemptCount":I
    .end local v47    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v48    # "_tmpBackoffDelayDuration":J
    .end local v50    # "_tmpLastEnqueueTime":J
    .end local v52    # "_tmpMinimumRetentionDuration":J
    .end local v54    # "_tmpScheduleRequestedAt":J
    .end local v56    # "_tmpExpedited":Z
    .end local v57    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v58    # "_tmpPeriodCount":I
    .end local v59    # "_tmpGeneration":I
    .end local v60    # "_tmp":I
    .end local v61    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v62    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v63    # "_tmp_1":[B
    .end local v64    # "_tmp_2":[B
    .end local v65    # "_tmp_3":I
    .end local v70    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v71    # "_tmpRequiresCharging":Z
    .end local v72    # "_tmpRequiresDeviceIdle":Z
    .end local v73    # "_tmpRequiresBatteryNotLow":Z
    .end local v74    # "_tmpRequiresStorageNotLow":Z
    .end local v75    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v77    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v79    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_e7

    .line 2163
    .end local v33    # "_cursorIndexOfContentUriTriggers":I
    .end local v66    # "_cursorIndexOfId":I
    .end local v67    # "_cursorIndexOfExpedited":I
    .end local v68    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v80    # "_cursorIndexOfRequiredNetworkType":I
    .end local v81    # "_cursorIndexOfRequiresCharging":I
    .end local v82    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v83    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v84    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v19, "_cursorIndexOfExpedited":I
    .local v20, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v23, "_cursorIndexOfRequiredNetworkType":I
    .local v24, "_cursorIndexOfRequiresCharging":I
    .local v25, "_cursorIndexOfRequiresDeviceIdle":I
    .local v26, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v27, "_cursorIndexOfRequiresStorageNotLow":I
    .local v30, "_cursorIndexOfContentUriTriggers":I
    :cond_256
    nop

    .line 2165
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2166
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2163
    return-object v2

    .line 2165
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfLastEnqueueTime":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v3    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v6    # "_cursorIndexOfState":I
    .end local v7    # "_cursorIndexOfWorkerClassName":I
    .end local v8    # "_cursorIndexOfInputMergerClassName":I
    .end local v9    # "_cursorIndexOfInput":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfInitialDelay":I
    .end local v12    # "_cursorIndexOfIntervalDuration":I
    .end local v13    # "_cursorIndexOfFlexDuration":I
    .end local v14    # "_cursorIndexOfRunAttemptCount":I
    .end local v15    # "_cursorIndexOfBackoffPolicy":I
    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v19    # "_cursorIndexOfExpedited":I
    .end local v20    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v21    # "_cursorIndexOfPeriodCount":I
    .end local v22    # "_cursorIndexOfGeneration":I
    .end local v23    # "_cursorIndexOfRequiredNetworkType":I
    .end local v24    # "_cursorIndexOfRequiresCharging":I
    .end local v25    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v26    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v27    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v28    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v29    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v30    # "_cursorIndexOfContentUriTriggers":I
    .end local v31    # "_cursorIndexOfMinimumRetentionDuration":I
    :catchall_25e
    move-exception v0

    goto :goto_269

    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_260
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_269

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_264
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_269
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2166
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2167
    throw v0
.end method

.method public getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 831
    const-string v0, "SELECT state FROM workspec WHERE id=?"

    .line 832
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT state FROM workspec WHERE id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 833
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 834
    .local v2, "_argIndex":I
    if-nez p1, :cond_10

    .line 835
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_13

    .line 837
    :cond_10
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 839
    :goto_13
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 840
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 843
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_20
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 845
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 846
    const/4 v4, 0x0

    .local v4, "_tmp":Ljava/lang/Integer;
    goto :goto_36

    .line 848
    .end local v4    # "_tmp":Ljava/lang/Integer;
    :cond_2e
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 850
    .restart local v4    # "_tmp":Ljava/lang/Integer;
    :goto_36
    if-nez v4, :cond_3a

    .line 851
    const/4 v5, 0x0

    .local v5, "_result":Landroidx/work/WorkInfo$State;
    goto :goto_44

    .line 853
    .end local v5    # "_result":Landroidx/work/WorkInfo$State;
    :cond_3a
    sget-object v5, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v5
    :try_end_44
    .catchall {:try_start_20 .. :try_end_44} :catchall_4e

    .line 855
    .end local v4    # "_tmp":Ljava/lang/Integer;
    .restart local v5    # "_result":Landroidx/work/WorkInfo$State;
    :goto_44
    goto :goto_46

    .line 856
    .end local v5    # "_result":Landroidx/work/WorkInfo$State;
    :cond_45
    const/4 v5, 0x0

    .line 858
    .restart local v5    # "_result":Landroidx/work/WorkInfo$State;
    :goto_46
    nop

    .line 860
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 861
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 858
    return-object v5

    .line 860
    .end local v5    # "_result":Landroidx/work/WorkInfo$State;
    :catchall_4e
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 861
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 862
    throw v4
.end method

.method public getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1605
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1606
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1607
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 1608
    .local v2, "_argIndex":I
    if-nez p1, :cond_10

    .line 1609
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_13

    .line 1611
    :cond_10
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1613
    :goto_13
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1614
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 1616
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_20
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1617
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_29
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1619
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1620
    const/4 v6, 0x0

    .local v6, "_item":Ljava/lang/String;
    goto :goto_3b

    .line 1622
    .end local v6    # "_item":Ljava/lang/String;
    :cond_37
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1624
    .restart local v6    # "_item":Ljava/lang/String;
    :goto_3b
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_48

    .line 1625
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_29

    .line 1626
    :cond_40
    nop

    .line 1628
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1629
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1626
    return-object v4

    .line 1628
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_48
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1629
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1630
    throw v4
.end method

.method public getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1575
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1576
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1577
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 1578
    .local v2, "_argIndex":I
    if-nez p1, :cond_10

    .line 1579
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_13

    .line 1581
    :cond_10
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1583
    :goto_13
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1584
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 1586
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_20
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1587
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_29
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1589
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1590
    const/4 v6, 0x0

    .local v6, "_item":Ljava/lang/String;
    goto :goto_3b

    .line 1592
    .end local v6    # "_item":Ljava/lang/String;
    :cond_37
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1594
    .restart local v6    # "_item":Ljava/lang/String;
    :goto_3b
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_48

    .line 1595
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_29

    .line 1596
    :cond_40
    nop

    .line 1598
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1599
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1596
    return-object v4

    .line 1598
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_48
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1599
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1600
    throw v4
.end method

.method public getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
    .registers 88
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 574
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT * FROM workspec WHERE id=?"

    .line 575
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE id=?"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 576
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 577
    .local v6, "_argIndex":I
    if-nez v2, :cond_14

    .line 578
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_17

    .line 580
    :cond_14
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 582
    :goto_17
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 583
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v5, v8, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 585
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_24
    const-string v0, "id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 586
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v9, "state"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 587
    .local v9, "_cursorIndexOfState":I
    const-string/jumbo v10, "worker_class_name"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 588
    .local v10, "_cursorIndexOfWorkerClassName":I
    const-string v11, "input_merger_class_name"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 589
    .local v11, "_cursorIndexOfInputMergerClassName":I
    const-string v12, "input"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 590
    .local v12, "_cursorIndexOfInput":I
    const-string v13, "output"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 591
    .local v13, "_cursorIndexOfOutput":I
    const-string v14, "initial_delay"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 592
    .local v14, "_cursorIndexOfInitialDelay":I
    const-string v15, "interval_duration"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 593
    .local v15, "_cursorIndexOfIntervalDuration":I
    const-string v4, "flex_duration"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 594
    .local v4, "_cursorIndexOfFlexDuration":I
    const-string v8, "run_attempt_count"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 595
    .local v8, "_cursorIndexOfRunAttemptCount":I
    const-string v1, "backoff_policy"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 596
    .local v1, "_cursorIndexOfBackoffPolicy":I
    const-string v2, "backoff_delay_duration"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_6e
    .catchall {:try_start_24 .. :try_end_6e} :catchall_25c

    .line 597
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    move-object/from16 v18, v3

    .end local v3    # "_sql":Ljava/lang/String;
    .local v18, "_sql":Ljava/lang/String;
    :try_start_70
    const-string v3, "last_enqueue_time"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_256

    .line 598
    .local v3, "_cursorIndexOfLastEnqueueTime":I
    move/from16 v19, v6

    .end local v6    # "_argIndex":I
    .local v19, "_argIndex":I
    :try_start_78
    const-string v6, "minimum_retention_duration"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_252

    .line 599
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v20, v5

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v20, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_80
    const-string v5, "schedule_requested_at"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 600
    .local v5, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v21, v5

    .end local v5    # "_cursorIndexOfScheduleRequestedAt":I
    .local v21, "_cursorIndexOfScheduleRequestedAt":I
    const-string v5, "run_in_foreground"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 601
    .local v5, "_cursorIndexOfExpedited":I
    move/from16 v22, v5

    .end local v5    # "_cursorIndexOfExpedited":I
    .local v22, "_cursorIndexOfExpedited":I
    const-string v5, "out_of_quota_policy"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 602
    .local v5, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v23, v5

    .end local v5    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v23, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string v5, "period_count"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 603
    .local v5, "_cursorIndexOfPeriodCount":I
    move/from16 v24, v5

    .end local v5    # "_cursorIndexOfPeriodCount":I
    .local v24, "_cursorIndexOfPeriodCount":I
    const-string v5, "generation"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 604
    .local v5, "_cursorIndexOfGeneration":I
    move/from16 v25, v5

    .end local v5    # "_cursorIndexOfGeneration":I
    .local v25, "_cursorIndexOfGeneration":I
    const-string v5, "required_network_type"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 605
    .local v5, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v26, v5

    .end local v5    # "_cursorIndexOfRequiredNetworkType":I
    .local v26, "_cursorIndexOfRequiredNetworkType":I
    const-string v5, "requires_charging"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 606
    .local v5, "_cursorIndexOfRequiresCharging":I
    move/from16 v27, v5

    .end local v5    # "_cursorIndexOfRequiresCharging":I
    .local v27, "_cursorIndexOfRequiresCharging":I
    const-string v5, "requires_device_idle"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 607
    .local v5, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v28, v5

    .end local v5    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v28, "_cursorIndexOfRequiresDeviceIdle":I
    const-string v5, "requires_battery_not_low"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 608
    .local v5, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v29, v5

    .end local v5    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v29, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string v5, "requires_storage_not_low"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 609
    .local v5, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v30, v5

    .end local v5    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v30, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v5, "trigger_content_update_delay"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 610
    .local v5, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v31, v5

    .end local v5    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v31, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v5, "trigger_max_content_delay"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 611
    .local v5, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v32, v5

    .end local v5    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v32, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v5, "content_uri_triggers"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 613
    .local v5, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v33

    if-eqz v33, :cond_234

    .line 615
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_f7

    .line 616
    const/16 v33, 0x0

    .local v33, "_tmpId":Ljava/lang/String;
    goto :goto_fb

    .line 618
    .end local v33    # "_tmpId":Ljava/lang/String;
    :cond_f7
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 622
    .restart local v33    # "_tmpId":Ljava/lang/String;
    :goto_fb
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    move/from16 v62, v34

    .line 623
    .local v62, "_tmp":I
    sget-object v34, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v62 .. v62}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v36

    .line 625
    .local v36, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_112

    .line 626
    const/16 v34, 0x0

    move-object/from16 v63, v34

    .local v34, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_118

    .line 628
    .end local v34    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_112
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v63, v34

    .line 631
    .local v63, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_118
    invoke-interface {v7, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_123

    .line 632
    const/16 v34, 0x0

    move-object/from16 v64, v34

    .local v34, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_129

    .line 634
    .end local v34    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_123
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v64, v34

    .line 638
    .local v64, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_129
    invoke-interface {v7, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_134

    .line 639
    const/16 v34, 0x0

    move-object/from16 v65, v34

    .local v34, "_tmp_1":[B
    goto :goto_13a

    .line 641
    .end local v34    # "_tmp_1":[B
    :cond_134
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v34

    move-object/from16 v65, v34

    .line 643
    .local v65, "_tmp_1":[B
    :goto_13a
    invoke-static/range {v65 .. v65}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v39

    .line 646
    .local v39, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_149

    .line 647
    const/16 v34, 0x0

    move-object/from16 v66, v34

    .local v34, "_tmp_2":[B
    goto :goto_14f

    .line 649
    .end local v34    # "_tmp_2":[B
    :cond_149
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v34

    move-object/from16 v66, v34

    .line 651
    .local v66, "_tmp_2":[B
    :goto_14f
    invoke-static/range {v66 .. v66}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v40

    .line 653
    .local v40, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 655
    .local v41, "_tmpInitialDelay":J
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 657
    .local v43, "_tmpIntervalDuration":J
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    .line 659
    .local v45, "_tmpFlexDuration":J
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 662
    .local v48, "_tmpRunAttemptCount":I
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    move/from16 v67, v34

    .line 663
    .local v67, "_tmp_3":I
    sget-object v34, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v67 .. v67}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v49

    .line 665
    .local v49, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 667
    .local v50, "_tmpBackoffDelayDuration":J
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 669
    .local v52, "_tmpLastEnqueueTime":J
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 671
    .local v54, "_tmpMinimumRetentionDuration":J
    move/from16 v68, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .local v68, "_cursorIndexOfId":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    .line 674
    .local v56, "_tmpScheduleRequestedAt":J
    move/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v21    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 675
    .local v22, "_tmp_4":I
    if-eqz v22, :cond_190

    const/16 v58, 0x1

    goto :goto_192

    :cond_190
    const/16 v58, 0x0

    .line 678
    .local v58, "_tmpExpedited":Z
    :goto_192
    move/from16 v69, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v69, "_cursorIndexOfExpedited":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 679
    .local v23, "_tmp_5":I
    sget-object v34, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v23 .. v23}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v59

    .line 681
    .local v59, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v70, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v70, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    .line 683
    .local v60, "_tmpPeriodCount":I
    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v24    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    .line 687
    .local v61, "_tmpGeneration":I
    move/from16 v25, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v25    # "_cursorIndexOfGeneration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 688
    .local v26, "_tmp_6":I
    sget-object v34, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v26 .. v26}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v72

    .line 691
    .local v72, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v82, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v82, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 692
    .local v27, "_tmp_7":I
    if-eqz v27, :cond_1cb

    const/16 v73, 0x1

    goto :goto_1cd

    :cond_1cb
    const/16 v73, 0x0

    .line 695
    .local v73, "_tmpRequiresCharging":Z
    :goto_1cd
    move/from16 v83, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v83, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 696
    .local v28, "_tmp_8":I
    if-eqz v28, :cond_1da

    const/16 v74, 0x1

    goto :goto_1dc

    :cond_1da
    const/16 v74, 0x0

    .line 699
    .local v74, "_tmpRequiresDeviceIdle":Z
    :goto_1dc
    move/from16 v84, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v84, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 700
    .local v29, "_tmp_9":I
    if-eqz v29, :cond_1e9

    const/16 v75, 0x1

    goto :goto_1eb

    :cond_1e9
    const/16 v75, 0x0

    .line 703
    .local v75, "_tmpRequiresBatteryNotLow":Z
    :goto_1eb
    move/from16 v85, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v85, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 704
    .local v30, "_tmp_10":I
    if-eqz v30, :cond_1f8

    const/16 v76, 0x1

    goto :goto_1fa

    :cond_1f8
    const/16 v76, 0x0

    .line 706
    .local v76, "_tmpRequiresStorageNotLow":Z
    :goto_1fa
    move/from16 v16, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v16, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v77

    .line 708
    .local v77, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v31, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v79

    .line 711
    .local v79, "_tmpContentTriggerMaxDelayMillis":J
    invoke-interface {v7, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_213

    .line 712
    const/16 v17, 0x0

    .local v17, "_tmp_11":[B
    goto :goto_217

    .line 714
    .end local v17    # "_tmp_11":[B
    :cond_213
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 716
    .restart local v17    # "_tmp_11":[B
    :goto_217
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v17 .. v17}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v81

    .line 717
    .local v81, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v47, Landroidx/work/Constraints;

    move-object/from16 v71, v47

    invoke-direct/range {v71 .. v81}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 718
    .local v47, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v32, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v34, v32

    move-object/from16 v35, v33

    move-object/from16 v37, v63

    move-object/from16 v38, v64

    invoke-direct/range {v34 .. v61}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V
    :try_end_231
    .catchall {:try_start_80 .. :try_end_231} :catchall_250

    move-object/from16 v17, v32

    .line 719
    .end local v22    # "_tmp_4":I
    .end local v23    # "_tmp_5":I
    .end local v26    # "_tmp_6":I
    .end local v27    # "_tmp_7":I
    .end local v28    # "_tmp_8":I
    .end local v29    # "_tmp_9":I
    .end local v30    # "_tmp_10":I
    .end local v33    # "_tmpId":Ljava/lang/String;
    .end local v36    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v39    # "_tmpInput":Landroidx/work/Data;
    .end local v40    # "_tmpOutput":Landroidx/work/Data;
    .end local v41    # "_tmpInitialDelay":J
    .end local v43    # "_tmpIntervalDuration":J
    .end local v45    # "_tmpFlexDuration":J
    .end local v47    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v48    # "_tmpRunAttemptCount":I
    .end local v49    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v50    # "_tmpBackoffDelayDuration":J
    .end local v52    # "_tmpLastEnqueueTime":J
    .end local v54    # "_tmpMinimumRetentionDuration":J
    .end local v56    # "_tmpScheduleRequestedAt":J
    .end local v58    # "_tmpExpedited":Z
    .end local v59    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v60    # "_tmpPeriodCount":I
    .end local v61    # "_tmpGeneration":I
    .end local v62    # "_tmp":I
    .end local v63    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v64    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v65    # "_tmp_1":[B
    .end local v66    # "_tmp_2":[B
    .end local v67    # "_tmp_3":I
    .end local v72    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v73    # "_tmpRequiresCharging":Z
    .end local v74    # "_tmpRequiresDeviceIdle":Z
    .end local v75    # "_tmpRequiresBatteryNotLow":Z
    .end local v76    # "_tmpRequiresStorageNotLow":Z
    .end local v77    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v79    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v81    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    .local v17, "_result":Landroidx/work/impl/model/WorkSpec;
    goto :goto_248

    .line 720
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_result":Landroidx/work/impl/model/WorkSpec;
    .end local v68    # "_cursorIndexOfId":I
    .end local v69    # "_cursorIndexOfExpedited":I
    .end local v70    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v82    # "_cursorIndexOfRequiredNetworkType":I
    .end local v83    # "_cursorIndexOfRequiresCharging":I
    .end local v84    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v85    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v22, "_cursorIndexOfExpedited":I
    .local v23, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v26, "_cursorIndexOfRequiredNetworkType":I
    .local v27, "_cursorIndexOfRequiresCharging":I
    .local v28, "_cursorIndexOfRequiresDeviceIdle":I
    .local v29, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v30, "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    :cond_234
    move/from16 v68, v0

    move/from16 v69, v22

    move/from16 v70, v23

    move/from16 v82, v26

    move/from16 v83, v27

    move/from16 v84, v28

    move/from16 v85, v29

    move/from16 v16, v30

    move/from16 v0, v32

    .end local v22    # "_cursorIndexOfExpedited":I
    .end local v23    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v26    # "_cursorIndexOfRequiredNetworkType":I
    .end local v27    # "_cursorIndexOfRequiresCharging":I
    .end local v28    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v29    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v30    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v68    # "_cursorIndexOfId":I
    .restart local v69    # "_cursorIndexOfExpedited":I
    .restart local v70    # "_cursorIndexOfOutOfQuotaPolicy":I
    .restart local v82    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v83    # "_cursorIndexOfRequiresCharging":I
    .restart local v84    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v85    # "_cursorIndexOfRequiresBatteryNotLow":I
    const/16 v17, 0x0

    .line 722
    .restart local v17    # "_result":Landroidx/work/impl/model/WorkSpec;
    :goto_248
    nop

    .line 724
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 725
    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 722
    return-object v17

    .line 724
    .end local v0    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v1    # "_cursorIndexOfBackoffPolicy":I
    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v3    # "_cursorIndexOfLastEnqueueTime":I
    .end local v4    # "_cursorIndexOfFlexDuration":I
    .end local v5    # "_cursorIndexOfContentUriTriggers":I
    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v8    # "_cursorIndexOfRunAttemptCount":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfWorkerClassName":I
    .end local v11    # "_cursorIndexOfInputMergerClassName":I
    .end local v12    # "_cursorIndexOfInput":I
    .end local v13    # "_cursorIndexOfOutput":I
    .end local v14    # "_cursorIndexOfInitialDelay":I
    .end local v15    # "_cursorIndexOfIntervalDuration":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_result":Landroidx/work/impl/model/WorkSpec;
    .end local v21    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v24    # "_cursorIndexOfPeriodCount":I
    .end local v25    # "_cursorIndexOfGeneration":I
    .end local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v68    # "_cursorIndexOfId":I
    .end local v69    # "_cursorIndexOfExpedited":I
    .end local v70    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v82    # "_cursorIndexOfRequiredNetworkType":I
    .end local v83    # "_cursorIndexOfRequiresCharging":I
    .end local v84    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v85    # "_cursorIndexOfRequiresBatteryNotLow":I
    :catchall_250
    move-exception v0

    goto :goto_263

    .end local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_252
    move-exception v0

    move-object/from16 v20, v5

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_263

    .end local v19    # "_argIndex":I
    .end local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v6, "_argIndex":I
    :catchall_256
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v19, v6

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .restart local v19    # "_argIndex":I
    .restart local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_263

    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argIndex":I
    .end local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v3, "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    :catchall_25c
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 v19, v6

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argIndex":I
    .restart local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_263
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 725
    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 726
    throw v0
.end method

.method public getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$IdAndState;",
            ">;"
        }
    .end annotation

    .line 731
    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 732
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 733
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 734
    .local v3, "_argIndex":I
    if-nez p1, :cond_10

    .line 735
    invoke-virtual {v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_13

    .line 737
    :cond_10
    invoke-virtual {v1, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 739
    :goto_13
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 740
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v1, v6, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 742
    .local v4, "_cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 743
    .local v5, "_cursorIndexOfId":I
    const/4 v7, 0x1

    .line 744
    .local v7, "_cursorIndexOfState":I
    :try_start_22
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 745
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    :goto_2b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_51

    .line 748
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 749
    const/4 v9, 0x0

    .local v9, "_tmpId":Ljava/lang/String;
    goto :goto_3d

    .line 751
    .end local v9    # "_tmpId":Ljava/lang/String;
    :cond_39
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 755
    .restart local v9    # "_tmpId":Ljava/lang/String;
    :goto_3d
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 756
    .local v10, "_tmp":I
    sget-object v11, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v10}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v11

    .line 757
    .local v11, "_tmpState":Landroidx/work/WorkInfo$State;
    new-instance v12, Landroidx/work/impl/model/WorkSpec$IdAndState;

    invoke-direct {v12, v9, v11}, Landroidx/work/impl/model/WorkSpec$IdAndState;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;)V

    .line 758
    .local v12, "_item":Landroidx/work/impl/model/WorkSpec$IdAndState;
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_22 .. :try_end_4f} :catchall_59

    .line 759
    nop

    .end local v9    # "_tmpId":Ljava/lang/String;
    .end local v10    # "_tmp":I
    .end local v11    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v12    # "_item":Landroidx/work/impl/model/WorkSpec$IdAndState;
    goto :goto_2b

    .line 760
    :cond_51
    nop

    .line 762
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 763
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 760
    return-object v8

    .line 762
    .end local v5    # "_cursorIndexOfId":I
    .end local v7    # "_cursorIndexOfState":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    :catchall_59
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 763
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 764
    throw v2
.end method

.method public getWorkStatusPojoForId(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .registers 31
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 867
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id=?"

    .line 868
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id=?"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 869
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 870
    .local v6, "_argIndex":I
    if-nez v2, :cond_14

    .line 871
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_17

    .line 873
    :cond_14
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 875
    :goto_17
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 876
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 878
    :try_start_21
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v5, v4, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_11b

    move-object v7, v0

    .line 880
    .local v7, "_cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 881
    .local v0, "_cursorIndexOfId":I
    const/4 v8, 0x1

    .line 882
    .local v8, "_cursorIndexOfState":I
    const/4 v9, 0x2

    .line 883
    .local v9, "_cursorIndexOfOutput":I
    const/4 v10, 0x3

    .line 884
    .local v10, "_cursorIndexOfRunAttemptCount":I
    const/4 v11, 0x4

    .line 885
    .local v11, "_cursorIndexOfGeneration":I
    :try_start_2e
    new-instance v12, Landroidx/collection/ArrayMap;

    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    .line 886
    .local v12, "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v13, Landroidx/collection/ArrayMap;

    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    .line 887
    .local v13, "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_38
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_71

    .line 888
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 889
    .local v14, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 890
    .local v16, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v16, :cond_59

    .line 891
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v17

    .line 892
    move-object/from16 v4, v16

    .end local v16    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v14, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v4

    .line 894
    .end local v4    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_59
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 895
    .local v4, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v13, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 896
    .local v15, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v15, :cond_6f

    .line 897
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v18

    .line 898
    invoke-virtual {v13, v4, v15}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    .end local v4    # "_tmpKey_1":Ljava/lang/String;
    .end local v14    # "_tmpKey":Ljava/lang/String;
    .end local v15    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v16    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6f
    const/4 v4, 0x1

    goto :goto_38

    .line 901
    :cond_71
    const/4 v4, -0x1

    invoke-interface {v7, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 902
    invoke-direct {v1, v12}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 903
    invoke-direct {v1, v13}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 905
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 907
    invoke-interface {v7, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 908
    const/4 v4, 0x0

    .local v4, "_tmpId":Ljava/lang/String;
    goto :goto_8d

    .line 910
    .end local v4    # "_tmpId":Ljava/lang/String;
    :cond_89
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 914
    .restart local v4    # "_tmpId":Ljava/lang/String;
    :goto_8d
    const/4 v14, 0x1

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 915
    .local v14, "_tmp":I
    sget-object v16, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v14}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v20

    .line 918
    .local v20, "_tmpState":Landroidx/work/WorkInfo$State;
    const/4 v15, 0x2

    invoke-interface {v7, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_a1

    .line 919
    const/4 v15, 0x0

    .local v15, "_tmp_1":[B
    goto :goto_a5

    .line 921
    .end local v15    # "_tmp_1":[B
    :cond_a1
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 923
    .restart local v15    # "_tmp_1":[B
    :goto_a5
    invoke-static {v15}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v21

    .line 925
    .local v21, "_tmpOutput":Landroidx/work/Data;
    move/from16 v17, v0

    .end local v0    # "_cursorIndexOfId":I
    .local v17, "_cursorIndexOfId":I
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 927
    .local v22, "_tmpRunAttemptCount":I
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 928
    .local v23, "_tmpGeneration":I
    const/4 v0, 0x0

    .line 929
    .local v0, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    .line 930
    .local v0, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v18, v19

    .line 931
    if-nez v18, :cond_d3

    .line 932
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v19

    move-object/from16 v26, v18

    goto :goto_d5

    .line 931
    :cond_d3
    move-object/from16 v26, v18

    .line 934
    .end local v18    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v26, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_d5
    const/16 v18, 0x0

    .line 935
    .local v18, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    move-object/from16 v27, v0

    const/4 v0, 0x0

    .end local v0    # "_tmpKey_2":Ljava/lang/String;
    .local v27, "_tmpKey_2":Ljava/lang/String;
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v13, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 937
    .end local v18    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v16, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v16, :cond_ed

    .line 938
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v18

    .line 940
    :cond_ed
    new-instance v28, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v18, v28

    move-object/from16 v19, v4

    move-object/from16 v24, v26

    move-object/from16 v25, v16

    invoke-direct/range {v18 .. v25}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v28

    .line 941
    .end local v4    # "_tmpId":Ljava/lang/String;
    .end local v14    # "_tmp":I
    .end local v15    # "_tmp_1":[B
    .end local v16    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v20    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v21    # "_tmpOutput":Landroidx/work/Data;
    .end local v22    # "_tmpRunAttemptCount":I
    .end local v23    # "_tmpGeneration":I
    .end local v26    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27    # "_tmpKey_2":Ljava/lang/String;
    .local v0, "_result":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    goto :goto_100

    .line 942
    .end local v17    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    :cond_fd
    move/from16 v17, v0

    .end local v0    # "_cursorIndexOfId":I
    .restart local v17    # "_cursorIndexOfId":I
    const/4 v0, 0x0

    .line 944
    .local v0, "_result":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    :goto_100
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_105
    .catchall {:try_start_2e .. :try_end_105} :catchall_112

    .line 945
    nop

    .line 947
    :try_start_106
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 948
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_10c
    .catchall {:try_start_106 .. :try_end_10c} :catchall_11b

    .line 951
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 945
    return-object v0

    .line 947
    .end local v0    # "_result":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v17    # "_cursorIndexOfId":I
    :catchall_112
    move-exception v0

    :try_start_113
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 948
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 949
    nop

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .end local p1    # "id":Ljava/lang/String;
    throw v0
    :try_end_11b
    .catchall {:try_start_113 .. :try_end_11b} :catchall_11b

    .line 951
    .end local v7    # "_cursor":Landroid/database/Cursor;
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    .restart local p1    # "id":Ljava/lang/String;
    :catchall_11b
    move-exception v0

    iget-object v4, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 952
    throw v0
.end method

.method public getWorkStatusPojoForIds(Ljava/util/List;)Ljava/util/List;
    .registers 36
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 957
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 958
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v0, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 960
    .local v3, "_inputSize":I
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 961
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 963
    .local v4, "_sql":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x0

    .line 964
    .local v5, "_argCount":I
    invoke-static {v4, v5}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v6

    .line 965
    .local v6, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 966
    .local v0, "_argIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    .end local v0    # "_argIndex":I
    .local v8, "_argIndex":I
    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 967
    .local v0, "_item":Ljava/lang/String;
    if-nez v0, :cond_39

    .line 968
    invoke-virtual {v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_3c

    .line 970
    :cond_39
    invoke-virtual {v6, v8, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 972
    :goto_3c
    nop

    .end local v0    # "_item":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 973
    goto :goto_27

    .line 974
    :cond_40
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 975
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 977
    :try_start_4a
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-static {v0, v6, v9, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_184

    move-object v7, v0

    .line 979
    .local v7, "_cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 980
    .local v0, "_cursorIndexOfId":I
    const/4 v10, 0x1

    .line 981
    .local v10, "_cursorIndexOfState":I
    const/4 v11, 0x2

    .line 982
    .local v11, "_cursorIndexOfOutput":I
    const/4 v12, 0x3

    .line 983
    .local v12, "_cursorIndexOfRunAttemptCount":I
    const/4 v13, 0x4

    .line 984
    .local v13, "_cursorIndexOfGeneration":I
    :try_start_58
    new-instance v14, Landroidx/collection/ArrayMap;

    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    .line 985
    .local v14, "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v15, Landroidx/collection/ArrayMap;

    invoke-direct {v15}, Landroidx/collection/ArrayMap;-><init>()V

    .line 986
    .local v15, "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_62
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    const/4 v9, 0x0

    if-eqz v16, :cond_b5

    .line 987
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 988
    .local v18, "_tmpKey":Ljava/lang/String;
    move-object/from16 v9, v18

    .end local v18    # "_tmpKey":Ljava/lang/String;
    .local v9, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v14, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;
    :try_end_77
    .catchall {:try_start_58 .. :try_end_77} :catchall_177

    .line 989
    .local v18, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v18, :cond_8f

    .line 990
    :try_start_79
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v19

    .line 991
    move/from16 v19, v0

    move-object/from16 v0, v18

    .end local v18    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "_cursorIndexOfId":I
    invoke-virtual {v14, v9, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_79 .. :try_end_87} :catchall_8a

    move-object/from16 v18, v0

    goto :goto_91

    .line 1046
    .end local v0    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "_tmpKey":Ljava/lang/String;
    .end local v10    # "_cursorIndexOfState":I
    .end local v11    # "_cursorIndexOfOutput":I
    .end local v12    # "_cursorIndexOfRunAttemptCount":I
    .end local v13    # "_cursorIndexOfGeneration":I
    .end local v14    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v15    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v19    # "_cursorIndexOfId":I
    :catchall_8a
    move-exception v0

    move-object/from16 v20, v2

    goto/16 :goto_17a

    .line 989
    .local v0, "_cursorIndexOfId":I
    .restart local v9    # "_tmpKey":Ljava/lang/String;
    .restart local v10    # "_cursorIndexOfState":I
    .restart local v11    # "_cursorIndexOfOutput":I
    .restart local v12    # "_cursorIndexOfRunAttemptCount":I
    .restart local v13    # "_cursorIndexOfGeneration":I
    .restart local v14    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v15    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v18    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8f
    move/from16 v19, v0

    .line 993
    .end local v0    # "_cursorIndexOfId":I
    .restart local v19    # "_cursorIndexOfId":I
    :goto_91
    const/4 v0, 0x0

    :try_start_92
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 995
    .local v16, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v16, :cond_ad

    .line 996
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
    :try_end_a3
    .catchall {:try_start_92 .. :try_end_a3} :catchall_177

    move-object/from16 v16, v20

    .line 997
    move-object/from16 v20, v2

    move-object/from16 v2, v16

    .end local v16    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v2, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v20, "_stringBuilder":Ljava/lang/StringBuilder;
    :try_start_a9
    invoke-virtual {v15, v0, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_af

    .line 995
    .end local v20    # "_stringBuilder":Ljava/lang/StringBuilder;
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v16    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_ad
    move-object/from16 v20, v2

    .line 999
    .end local v0    # "_tmpKey_1":Ljava/lang/String;
    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "_tmpKey":Ljava/lang/String;
    .end local v16    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v18    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "_stringBuilder":Ljava/lang/StringBuilder;
    :goto_af
    move/from16 v0, v19

    move-object/from16 v2, v20

    const/4 v9, 0x1

    goto :goto_62

    .line 1000
    .end local v19    # "_cursorIndexOfId":I
    .end local v20    # "_stringBuilder":Ljava/lang/StringBuilder;
    .local v0, "_cursorIndexOfId":I
    .restart local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    :cond_b5
    move/from16 v19, v0

    move-object/from16 v20, v2

    .end local v0    # "_cursorIndexOfId":I
    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v19    # "_cursorIndexOfId":I
    .restart local v20    # "_stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1001
    invoke-direct {v1, v14}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 1002
    invoke-direct {v1, v15}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 1003
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1004
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_cc
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_163

    .line 1007
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_db

    .line 1008
    const/4 v9, 0x0

    .local v9, "_tmpId":Ljava/lang/String;
    goto :goto_df

    .line 1010
    .end local v9    # "_tmpId":Ljava/lang/String;
    :cond_db
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1014
    .restart local v9    # "_tmpId":Ljava/lang/String;
    :goto_df
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1015
    .local v17, "_tmp":I
    sget-object v18, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v17 .. v17}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v23

    .line 1018
    .local v23, "_tmpState":Landroidx/work/WorkInfo$State;
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_f3

    .line 1019
    const/4 v2, 0x0

    .local v2, "_tmp_1":[B
    goto :goto_f7

    .line 1021
    .end local v2    # "_tmp_1":[B
    :cond_f3
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1023
    .restart local v2    # "_tmp_1":[B
    :goto_f7
    invoke-static {v2}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v24

    .line 1025
    .local v24, "_tmpOutput":Landroidx/work/Data;
    move-object/from16 v29, v2

    .end local v2    # "_tmp_1":[B
    .local v29, "_tmp_1":[B
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1027
    .local v25, "_tmpRunAttemptCount":I
    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1028
    .local v26, "_tmpGeneration":I
    const/4 v2, 0x0

    .line 1029
    .local v2, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v21, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v2, v22

    .line 1030
    .local v2, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v14, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v21, v22

    .line 1031
    if-nez v21, :cond_125

    .line 1032
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v22

    move-object/from16 v30, v21

    goto :goto_127

    .line 1031
    :cond_125
    move-object/from16 v30, v21

    .line 1034
    .end local v21    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v30, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_127
    const/16 v21, 0x0

    .line 1035
    .local v21, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    move-object/from16 v31, v2

    const/4 v2, 0x0

    .end local v2    # "_tmpKey_2":Ljava/lang/String;
    .local v31, "_tmpKey_2":Ljava/lang/String;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v32, v16

    .line 1036
    .local v32, "_tmpKey_3":Ljava/lang/String;
    move-object/from16 v2, v32

    .end local v32    # "_tmpKey_3":Ljava/lang/String;
    .local v2, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v15, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v21, v22

    .line 1037
    if-nez v21, :cond_148

    .line 1038
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v22

    move-object/from16 v32, v21

    goto :goto_14a

    .line 1037
    :cond_148
    move-object/from16 v32, v21

    .line 1040
    .end local v21    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v32, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_14a
    new-instance v33, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v21, v33

    move-object/from16 v22, v9

    move-object/from16 v27, v30

    move-object/from16 v28, v32

    invoke-direct/range {v21 .. v28}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v21, v33

    .line 1041
    .local v21, "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v22, v2

    move-object/from16 v2, v21

    .end local v21    # "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v2, "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v22, "_tmpKey_3":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    nop

    .end local v2    # "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v9    # "_tmpId":Ljava/lang/String;
    .end local v17    # "_tmp":I
    .end local v22    # "_tmpKey_3":Ljava/lang/String;
    .end local v23    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v24    # "_tmpOutput":Landroidx/work/Data;
    .end local v25    # "_tmpRunAttemptCount":I
    .end local v26    # "_tmpGeneration":I
    .end local v29    # "_tmp_1":[B
    .end local v30    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v31    # "_tmpKey_2":Ljava/lang/String;
    .end local v32    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    goto/16 :goto_cc

    .line 1043
    :cond_163
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_168
    .catchall {:try_start_a9 .. :try_end_168} :catchall_175

    .line 1044
    nop

    .line 1046
    :try_start_169
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1047
    invoke-virtual {v6}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_16f
    .catchall {:try_start_169 .. :try_end_16f} :catchall_182

    .line 1050
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1044
    return-object v0

    .line 1046
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v10    # "_cursorIndexOfState":I
    .end local v11    # "_cursorIndexOfOutput":I
    .end local v12    # "_cursorIndexOfRunAttemptCount":I
    .end local v13    # "_cursorIndexOfGeneration":I
    .end local v14    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v15    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v19    # "_cursorIndexOfId":I
    :catchall_175
    move-exception v0

    goto :goto_17a

    .end local v20    # "_stringBuilder":Ljava/lang/StringBuilder;
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    :catchall_177
    move-exception v0

    move-object/from16 v20, v2

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "_stringBuilder":Ljava/lang/StringBuilder;
    :goto_17a
    :try_start_17a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1047
    invoke-virtual {v6}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1048
    nop

    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .end local v20    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0
    :try_end_182
    .catchall {:try_start_17a .. :try_end_182} :catchall_182

    .line 1050
    .end local v7    # "_cursor":Landroid/database/Cursor;
    .restart local v3    # "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    .restart local v20    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_182
    move-exception v0

    goto :goto_187

    .end local v20    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    :catchall_184
    move-exception v0

    move-object/from16 v20, v2

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "_stringBuilder":Ljava/lang/StringBuilder;
    :goto_187
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1051
    throw v0
.end method

.method public getWorkStatusPojoForName(Ljava/lang/String;)Ljava/util/List;
    .registers 33
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 1354
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1355
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 1356
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 1357
    .local v6, "_argIndex":I
    if-nez v2, :cond_14

    .line 1358
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_17

    .line 1360
    :cond_14
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1362
    :goto_17
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1363
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1365
    :try_start_21
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v5, v4, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_139

    move-object v7, v0

    .line 1367
    .local v7, "_cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1368
    .local v0, "_cursorIndexOfId":I
    const/4 v8, 0x1

    .line 1369
    .local v8, "_cursorIndexOfState":I
    const/4 v9, 0x2

    .line 1370
    .local v9, "_cursorIndexOfOutput":I
    const/4 v10, 0x3

    .line 1371
    .local v10, "_cursorIndexOfRunAttemptCount":I
    const/4 v11, 0x4

    .line 1372
    .local v11, "_cursorIndexOfGeneration":I
    :try_start_2e
    new-instance v12, Landroidx/collection/ArrayMap;

    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1373
    .local v12, "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v13, Landroidx/collection/ArrayMap;

    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1374
    .local v13, "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_38
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_71

    .line 1375
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1376
    .local v14, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 1377
    .local v16, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v16, :cond_59

    .line 1378
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v17

    .line 1379
    move-object/from16 v4, v16

    .end local v16    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v14, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v4

    .line 1381
    .end local v4    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_59
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1382
    .local v4, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v13, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 1383
    .local v15, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v15, :cond_6f

    .line 1384
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v18

    .line 1385
    invoke-virtual {v13, v4, v15}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    .end local v4    # "_tmpKey_1":Ljava/lang/String;
    .end local v14    # "_tmpKey":Ljava/lang/String;
    .end local v15    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v16    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6f
    const/4 v4, 0x1

    goto :goto_38

    .line 1388
    :cond_71
    const/4 v4, -0x1

    invoke-interface {v7, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1389
    invoke-direct {v1, v12}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 1390
    invoke-direct {v1, v13}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 1391
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1392
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_84
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_11c

    .line 1395
    invoke-interface {v7, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_92

    .line 1396
    const/4 v14, 0x0

    .local v14, "_tmpId":Ljava/lang/String;
    goto :goto_96

    .line 1398
    .end local v14    # "_tmpId":Ljava/lang/String;
    :cond_92
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1402
    .restart local v14    # "_tmpId":Ljava/lang/String;
    :goto_96
    const/4 v15, 0x1

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1403
    .local v17, "_tmp":I
    sget-object v18, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v17 .. v17}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v20

    .line 1406
    .local v20, "_tmpState":Landroidx/work/WorkInfo$State;
    const/4 v15, 0x2

    invoke-interface {v7, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_aa

    .line 1407
    const/4 v15, 0x0

    .local v15, "_tmp_1":[B
    goto :goto_ae

    .line 1409
    .end local v15    # "_tmp_1":[B
    :cond_aa
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 1411
    .restart local v15    # "_tmp_1":[B
    :goto_ae
    invoke-static {v15}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v21

    .line 1413
    .local v21, "_tmpOutput":Landroidx/work/Data;
    move/from16 v26, v0

    .end local v0    # "_cursorIndexOfId":I
    .local v26, "_cursorIndexOfId":I
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1415
    .local v22, "_tmpRunAttemptCount":I
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1416
    .local v23, "_tmpGeneration":I
    const/4 v0, 0x0

    .line 1417
    .local v0, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    .line 1418
    .local v0, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v18, v19

    .line 1419
    if-nez v18, :cond_dc

    .line 1420
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v19

    move-object/from16 v27, v18

    goto :goto_de

    .line 1419
    :cond_dc
    move-object/from16 v27, v18

    .line 1422
    .end local v18    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v27, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_de
    const/16 v18, 0x0

    .line 1423
    .local v18, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "_tmpKey_2":Ljava/lang/String;
    .local v28, "_tmpKey_2":Ljava/lang/String;
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v29, v16

    .line 1424
    .local v29, "_tmpKey_3":Ljava/lang/String;
    move-object/from16 v0, v29

    .end local v29    # "_tmpKey_3":Ljava/lang/String;
    .local v0, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v13, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v18, v19

    .line 1425
    if-nez v18, :cond_ff

    .line 1426
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v19

    move-object/from16 v29, v18

    goto :goto_101

    .line 1425
    :cond_ff
    move-object/from16 v29, v18

    .line 1428
    .end local v18    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v29, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_101
    new-instance v30, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v18, v30

    move-object/from16 v19, v14

    move-object/from16 v24, v27

    move-object/from16 v25, v29

    invoke-direct/range {v18 .. v25}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v18, v30

    .line 1429
    .local v18, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v19, v0

    move-object/from16 v0, v18

    .end local v18    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v19, "_tmpKey_3":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    move/from16 v0, v26

    const/4 v15, 0x0

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v14    # "_tmpId":Ljava/lang/String;
    .end local v15    # "_tmp_1":[B
    .end local v17    # "_tmp":I
    .end local v19    # "_tmpKey_3":Ljava/lang/String;
    .end local v20    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v21    # "_tmpOutput":Landroidx/work/Data;
    .end local v22    # "_tmpRunAttemptCount":I
    .end local v23    # "_tmpGeneration":I
    .end local v27    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "_tmpKey_2":Ljava/lang/String;
    .end local v29    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    goto/16 :goto_84

    .line 1431
    .end local v26    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    :cond_11c
    move/from16 v26, v0

    .end local v0    # "_cursorIndexOfId":I
    .restart local v26    # "_cursorIndexOfId":I
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_123
    .catchall {:try_start_2e .. :try_end_123} :catchall_130

    .line 1432
    nop

    .line 1434
    :try_start_124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1435
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_12a
    .catchall {:try_start_124 .. :try_end_12a} :catchall_139

    .line 1438
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1432
    return-object v4

    .line 1434
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v26    # "_cursorIndexOfId":I
    :catchall_130
    move-exception v0

    :try_start_131
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1435
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1436
    nop

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .end local p1    # "name":Ljava/lang/String;
    throw v0
    :try_end_139
    .catchall {:try_start_131 .. :try_end_139} :catchall_139

    .line 1438
    .end local v7    # "_cursor":Landroid/database/Cursor;
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_139
    move-exception v0

    iget-object v4, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1439
    throw v0
.end method

.method public getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;
    .registers 33
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 1164
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1166
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 1167
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 1168
    .local v6, "_argIndex":I
    if-nez v2, :cond_14

    .line 1169
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_17

    .line 1171
    :cond_14
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1173
    :goto_17
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1174
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1176
    :try_start_21
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v5, v4, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_139

    move-object v7, v0

    .line 1178
    .local v7, "_cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1179
    .local v0, "_cursorIndexOfId":I
    const/4 v8, 0x1

    .line 1180
    .local v8, "_cursorIndexOfState":I
    const/4 v9, 0x2

    .line 1181
    .local v9, "_cursorIndexOfOutput":I
    const/4 v10, 0x3

    .line 1182
    .local v10, "_cursorIndexOfRunAttemptCount":I
    const/4 v11, 0x4

    .line 1183
    .local v11, "_cursorIndexOfGeneration":I
    :try_start_2e
    new-instance v12, Landroidx/collection/ArrayMap;

    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1184
    .local v12, "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v13, Landroidx/collection/ArrayMap;

    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1185
    .local v13, "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_38
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_71

    .line 1186
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1187
    .local v14, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 1188
    .local v16, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v16, :cond_59

    .line 1189
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v17

    .line 1190
    move-object/from16 v4, v16

    .end local v16    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v14, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v4

    .line 1192
    .end local v4    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_59
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1193
    .local v4, "_tmpKey_1":Ljava/lang/String;
    invoke-virtual {v13, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 1194
    .local v15, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v15, :cond_6f

    .line 1195
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v18

    .line 1196
    invoke-virtual {v13, v4, v15}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    .end local v4    # "_tmpKey_1":Ljava/lang/String;
    .end local v14    # "_tmpKey":Ljava/lang/String;
    .end local v15    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v16    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6f
    const/4 v4, 0x1

    goto :goto_38

    .line 1199
    :cond_71
    const/4 v4, -0x1

    invoke-interface {v7, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1200
    invoke-direct {v1, v12}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 1201
    invoke-direct {v1, v13}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 1202
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1203
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_84
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_11c

    .line 1206
    invoke-interface {v7, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_92

    .line 1207
    const/4 v14, 0x0

    .local v14, "_tmpId":Ljava/lang/String;
    goto :goto_96

    .line 1209
    .end local v14    # "_tmpId":Ljava/lang/String;
    :cond_92
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1213
    .restart local v14    # "_tmpId":Ljava/lang/String;
    :goto_96
    const/4 v15, 0x1

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1214
    .local v17, "_tmp":I
    sget-object v18, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v17 .. v17}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v20

    .line 1217
    .local v20, "_tmpState":Landroidx/work/WorkInfo$State;
    const/4 v15, 0x2

    invoke-interface {v7, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_aa

    .line 1218
    const/4 v15, 0x0

    .local v15, "_tmp_1":[B
    goto :goto_ae

    .line 1220
    .end local v15    # "_tmp_1":[B
    :cond_aa
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 1222
    .restart local v15    # "_tmp_1":[B
    :goto_ae
    invoke-static {v15}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v21

    .line 1224
    .local v21, "_tmpOutput":Landroidx/work/Data;
    move/from16 v26, v0

    .end local v0    # "_cursorIndexOfId":I
    .local v26, "_cursorIndexOfId":I
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1226
    .local v22, "_tmpRunAttemptCount":I
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1227
    .local v23, "_tmpGeneration":I
    const/4 v0, 0x0

    .line 1228
    .local v0, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    .line 1229
    .local v0, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v18, v19

    .line 1230
    if-nez v18, :cond_dc

    .line 1231
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v19

    move-object/from16 v27, v18

    goto :goto_de

    .line 1230
    :cond_dc
    move-object/from16 v27, v18

    .line 1233
    .end local v18    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v27, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_de
    const/16 v18, 0x0

    .line 1234
    .local v18, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "_tmpKey_2":Ljava/lang/String;
    .local v28, "_tmpKey_2":Ljava/lang/String;
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v29, v16

    .line 1235
    .local v29, "_tmpKey_3":Ljava/lang/String;
    move-object/from16 v0, v29

    .end local v29    # "_tmpKey_3":Ljava/lang/String;
    .local v0, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v13, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v18, v19

    .line 1236
    if-nez v18, :cond_ff

    .line 1237
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v19

    move-object/from16 v29, v18

    goto :goto_101

    .line 1236
    :cond_ff
    move-object/from16 v29, v18

    .line 1239
    .end local v18    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v29, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_101
    new-instance v30, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v18, v30

    move-object/from16 v19, v14

    move-object/from16 v24, v27

    move-object/from16 v25, v29

    invoke-direct/range {v18 .. v25}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v18, v30

    .line 1240
    .local v18, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v19, v0

    move-object/from16 v0, v18

    .end local v18    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v19, "_tmpKey_3":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    move/from16 v0, v26

    const/4 v15, 0x0

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v14    # "_tmpId":Ljava/lang/String;
    .end local v15    # "_tmp_1":[B
    .end local v17    # "_tmp":I
    .end local v19    # "_tmpKey_3":Ljava/lang/String;
    .end local v20    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v21    # "_tmpOutput":Landroidx/work/Data;
    .end local v22    # "_tmpRunAttemptCount":I
    .end local v23    # "_tmpGeneration":I
    .end local v27    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "_tmpKey_2":Ljava/lang/String;
    .end local v29    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    goto/16 :goto_84

    .line 1242
    .end local v26    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    :cond_11c
    move/from16 v26, v0

    .end local v0    # "_cursorIndexOfId":I
    .restart local v26    # "_cursorIndexOfId":I
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_123
    .catchall {:try_start_2e .. :try_end_123} :catchall_130

    .line 1243
    nop

    .line 1245
    :try_start_124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1246
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_12a
    .catchall {:try_start_124 .. :try_end_12a} :catchall_139

    .line 1249
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1243
    return-object v4

    .line 1245
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_collectionTags":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "_collectionProgress":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v26    # "_cursorIndexOfId":I
    :catchall_130
    move-exception v0

    :try_start_131
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1246
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1247
    nop

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .end local p1    # "tag":Ljava/lang/String;
    throw v0
    :try_end_139
    .catchall {:try_start_131 .. :try_end_139} :catchall_139

    .line 1249
    .end local v7    # "_cursor":Landroid/database/Cursor;
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    .restart local p1    # "tag":Ljava/lang/String;
    :catchall_139
    move-exception v0

    iget-object v4, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1250
    throw v0
.end method

.method public getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1057
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1058
    .local v0, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1060
    .local v1, "_inputSize":I
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 1061
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1063
    .local v2, "_sql":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x0

    .line 1064
    .local v3, "_argCount":I
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1065
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 1066
    .local v5, "_argIndex":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1067
    .local v7, "_item":Ljava/lang/String;
    if-nez v7, :cond_36

    .line 1068
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_39

    .line 1070
    :cond_36
    invoke-virtual {v4, v5, v7}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1072
    :goto_39
    nop

    .end local v7    # "_item":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 1073
    goto :goto_24

    .line 1074
    :cond_3d
    iget-object v6, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v6

    const-string v7, "WorkProgress"

    const-string/jumbo v8, "workspec"

    const-string v9, "WorkTag"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroidx/work/impl/model/WorkSpecDao_Impl$15;

    invoke-direct {v8, p0, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl$15;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v9, v8}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v6

    return-object v6
.end method

.method public getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1444
    const-string v0, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1445
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1446
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 1447
    .local v3, "_argIndex":I
    if-nez p1, :cond_10

    .line 1448
    invoke-virtual {v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_13

    .line 1450
    :cond_10
    invoke-virtual {v1, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1452
    :goto_13
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v4

    const-string/jumbo v5, "workspec"

    const-string/jumbo v6, "workname"

    const-string v7, "WorkTag"

    const-string v8, "WorkProgress"

    filled-new-array {v7, v8, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroidx/work/impl/model/WorkSpecDao_Impl$17;

    invoke-direct {v6, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$17;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v4, v5, v2, v6}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .registers 11
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1255
    const-string v0, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1257
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1258
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 1259
    .local v3, "_argIndex":I
    if-nez p1, :cond_10

    .line 1260
    invoke-virtual {v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_13

    .line 1262
    :cond_10
    invoke-virtual {v1, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1264
    :goto_13
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v4

    const-string/jumbo v5, "workspec"

    const-string/jumbo v6, "worktag"

    const-string v7, "WorkTag"

    const-string v8, "WorkProgress"

    filled-new-array {v7, v8, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroidx/work/impl/model/WorkSpecDao_Impl$16;

    invoke-direct {v6, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$16;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v4, v5, v2, v6}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public hasUnfinishedWork()Z
    .registers 6

    .line 1659
    const-string v0, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    .line 1660
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1661
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1662
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 1665
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_15
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1667
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_2c

    .line 1668
    .local v4, "_tmp":I
    if-eqz v4, :cond_22

    const/4 v2, 0x1

    .line 1669
    .end local v4    # "_tmp":I
    .local v2, "_result":Z
    :cond_22
    goto :goto_24

    .line 1670
    .end local v2    # "_result":Z
    :cond_23
    const/4 v2, 0x0

    .line 1672
    .restart local v2    # "_result":Z
    :goto_24
    nop

    .line 1674
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1675
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1672
    return v2

    .line 1674
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1675
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1676
    throw v2
.end method

.method public incrementGeneration(Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 555
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 556
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 557
    .local v1, "_argIndex":I
    if-nez p1, :cond_12

    .line 558
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 560
    :cond_12
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 562
    :goto_15
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 564
    :try_start_1a
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 565
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2e

    .line 567
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 568
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 569
    nop

    .line 570
    return-void

    .line 567
    :catchall_2e
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 568
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 569
    throw v2
.end method

.method public incrementPeriodCount(Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 392
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 393
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 394
    .local v1, "_argIndex":I
    if-nez p1, :cond_12

    .line 395
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 397
    :cond_12
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 399
    :goto_15
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 401
    :try_start_1a
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 402
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2e

    .line 404
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 405
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 406
    nop

    .line 407
    return-void

    .line 404
    :catchall_2e
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 405
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 406
    throw v2
.end method

.method public incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 461
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 462
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 463
    .local v1, "_argIndex":I
    if-nez p1, :cond_12

    .line 464
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 466
    :cond_12
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 468
    :goto_15
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 470
    :try_start_1a
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 471
    .local v2, "_result":I
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2f

    .line 472
    nop

    .line 474
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 475
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 472
    return v2

    .line 474
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 475
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 476
    throw v2
.end method

.method public insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .registers 4
    .param p1, "workSpec"    # Landroidx/work/impl/model/WorkSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "workSpec"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 324
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 326
    :try_start_a
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 329
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 330
    nop

    .line 331
    return-void

    .line 329
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 330
    throw v0
.end method

.method public markWorkSpecScheduled(Ljava/lang/String;J)I
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "startTime"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 503
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 504
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 505
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 506
    const/4 v1, 0x2

    .line 507
    if-nez p1, :cond_16

    .line 508
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_19

    .line 510
    :cond_16
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 512
    :goto_19
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 514
    :try_start_1e
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 515
    .local v2, "_result":I
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_33

    .line 516
    nop

    .line 518
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 519
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 516
    return v2

    .line 518
    .end local v2    # "_result":I
    :catchall_33
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 519
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 520
    throw v2
.end method

.method public pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast()V
    .registers 4

    .line 540
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 541
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 542
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 544
    :try_start_10
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 545
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_24

    .line 547
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 548
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 549
    nop

    .line 550
    return-void

    .line 547
    :catchall_24
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 548
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 549
    throw v1
.end method

.method public resetScheduledState()I
    .registers 4

    .line 525
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 526
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 527
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 529
    :try_start_10
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    .line 530
    .local v1, "_result":I
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_25

    .line 531
    nop

    .line 533
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 534
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 531
    return v1

    .line 533
    .end local v1    # "_result":I
    :catchall_25
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 534
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 535
    throw v1
.end method

.method public resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 482
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 483
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 484
    .local v1, "_argIndex":I
    if-nez p1, :cond_12

    .line 485
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 487
    :cond_12
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 489
    :goto_15
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 491
    :try_start_1a
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 492
    .local v2, "_result":I
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2f

    .line 493
    nop

    .line 495
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 496
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 493
    return v2

    .line 495
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 496
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 497
    throw v2
.end method

.method public setLastEnqueuedTime(Ljava/lang/String;J)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enqueueTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "enqueueTime"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 439
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 440
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 441
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 442
    const/4 v1, 0x2

    .line 443
    if-nez p1, :cond_16

    .line 444
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_19

    .line 446
    :cond_16
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 448
    :goto_19
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 450
    :try_start_1e
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 451
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_32

    .line 453
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 454
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 455
    nop

    .line 456
    return-void

    .line 453
    :catchall_32
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 454
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 455
    throw v2
.end method

.method public setOutput(Ljava/lang/String;Landroidx/work/Data;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "output"    # Landroidx/work/Data;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "output"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 412
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 413
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 414
    .local v1, "_argIndex":I
    invoke-static {p2}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object v2

    .line 415
    .local v2, "_tmp":[B
    if-nez v2, :cond_16

    .line 416
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_19

    .line 418
    :cond_16
    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 420
    :goto_19
    const/4 v1, 0x2

    .line 421
    if-nez p1, :cond_20

    .line 422
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_23

    .line 424
    :cond_20
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 426
    :goto_23
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 428
    :try_start_28
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 429
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_3c

    .line 431
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 432
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 433
    nop

    .line 434
    return-void

    .line 431
    :catchall_3c
    move-exception v3

    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 432
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v4, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 433
    throw v3
.end method

.method public setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I
    .registers 8
    .param p1, "state"    # Landroidx/work/WorkInfo$State;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "state",
            "id"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 368
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 369
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 370
    .local v1, "_argIndex":I
    sget-object v2, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {p1}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v2

    .line 371
    .local v2, "_tmp":I
    int-to-long v3, v2

    invoke-interface {v0, v1, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 372
    const/4 v1, 0x2

    .line 373
    if-nez p2, :cond_1d

    .line 374
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_20

    .line 376
    :cond_1d
    invoke-interface {v0, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 378
    :goto_20
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 380
    :try_start_25
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v3

    .line 381
    .local v3, "_result":I
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_3a

    .line 382
    nop

    .line 384
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 385
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v4, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 382
    return v3

    .line 384
    .end local v3    # "_result":I
    :catchall_3a
    move-exception v3

    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 385
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v4, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 386
    throw v3
.end method

.method public updateWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .registers 4
    .param p1, "workSpec"    # Landroidx/work/impl/model/WorkSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "workSpec"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 336
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 338
    :try_start_a
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 339
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    .line 341
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 342
    nop

    .line 343
    return-void

    .line 341
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 342
    throw v0
.end method
