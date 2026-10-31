.class public final Landroidx/room/InvalidationTracker$ObservedTableTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObservedTableTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/InvalidationTracker$ObservedTableTracker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/InvalidationTracker$ObservedTableTracker\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,840:1\n13600#2,2:841\n13600#2,2:843\n13684#2,3:845\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/InvalidationTracker$ObservedTableTracker\n*L\n711#1:841,2\n729#1:843,2\n765#1:845,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0016\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0018\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0010H\u0007J\u0012\u0010\u0014\u001a\u00020\u00062\n\u0010\u0015\u001a\u00020\u0010\"\u00020\u0003J\u0012\u0010\u0016\u001a\u00020\u00062\n\u0010\u0015\u001a\u00020\u0010\"\u00020\u0003J\u0006\u0010\u0017\u001a\u00020\u0018R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/room/InvalidationTracker$ObservedTableTracker;",
        "",
        "tableCount",
        "",
        "(I)V",
        "needsSync",
        "",
        "getNeedsSync",
        "()Z",
        "setNeedsSync",
        "(Z)V",
        "tableObservers",
        "",
        "getTableObservers",
        "()[J",
        "triggerStateChanges",
        "",
        "triggerStates",
        "",
        "getTablesToSync",
        "onAdded",
        "tableIds",
        "onRemoved",
        "resetTriggerState",
        "",
        "Companion",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ADD:I = 0x1

.field public static final Companion:Landroidx/room/InvalidationTracker$ObservedTableTracker$Companion;

.field public static final NO_OP:I = 0x0

.field public static final REMOVE:I = 0x2


# instance fields
.field private needsSync:Z

.field private final tableObservers:[J

.field private final triggerStateChanges:[I

.field private final triggerStates:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/room/InvalidationTracker$ObservedTableTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/InvalidationTracker$ObservedTableTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->Companion:Landroidx/room/InvalidationTracker$ObservedTableTracker$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "tableCount"    # I

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->tableObservers:[J

    .line 698
    new-array v0, p1, [Z

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->triggerStates:[Z

    .line 701
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->triggerStateChanges:[I

    .line 692
    return-void
.end method


# virtual methods
.method public final getNeedsSync()Z
    .registers 2

    .line 703
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->needsSync:Z

    return v0
.end method

.method public final getTableObservers()[J
    .registers 2

    .line 694
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->tableObservers:[J

    return-object v0
.end method

.method public final getTablesToSync()[I
    .registers 19

    .line 761
    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v0, 0x0

    .line 762
    .local v0, "$i$a$-synchronized-InvalidationTracker$ObservedTableTracker$getTablesToSync$1":I
    :try_start_4
    iget-boolean v2, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->needsSync:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_51

    if-nez v2, :cond_c

    .line 763
    nop

    .end local v0    # "$i$a$-synchronized-InvalidationTracker$ObservedTableTracker$getTablesToSync$1":I
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 765
    .restart local v0    # "$i$a$-synchronized-InvalidationTracker$ObservedTableTracker$getTablesToSync$1":I
    :cond_c
    :try_start_c
    iget-object v2, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->tableObservers:[J

    .local v2, "$this$forEachIndexed$iv":[J
    const/4 v3, 0x0

    .line 845
    .local v3, "$i$f$forEachIndexed":I
    const/4 v4, 0x0

    .line 846
    .local v4, "index$iv":I
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v5, :cond_44

    aget-wide v8, v2, v7

    .local v8, "item$iv":J
    add-int/lit8 v10, v4, 0x1

    .local v4, "i":I
    .local v10, "index$iv":I
    move-wide v11, v8

    .local v11, "observerCount":J
    const/4 v13, 0x0

    .line 766
    .local v13, "$i$a$-forEachIndexed-InvalidationTracker$ObservedTableTracker$getTablesToSync$1$1":I
    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    cmp-long v17, v11, v14

    if-lez v17, :cond_25

    const/4 v14, 0x1

    goto :goto_26

    :cond_25
    const/4 v14, 0x0

    .line 767
    .local v14, "newState":Z
    :goto_26
    iget-object v15, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->triggerStates:[Z

    aget-boolean v15, v15, v4

    if-eq v14, v15, :cond_36

    .line 768
    iget-object v15, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->triggerStateChanges:[I

    if-eqz v14, :cond_31

    goto :goto_33

    :cond_31
    const/16 v16, 0x2

    :goto_33
    aput v16, v15, v4

    goto :goto_3a

    .line 770
    :cond_36
    iget-object v15, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->triggerStateChanges:[I

    aput v6, v15, v4

    .line 772
    :goto_3a
    iget-object v15, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->triggerStates:[Z

    aput-boolean v14, v15, v4

    .line 773
    nop

    .line 846
    .end local v4    # "i":I
    .end local v11    # "observerCount":J
    .end local v13    # "$i$a$-forEachIndexed-InvalidationTracker$ObservedTableTracker$getTablesToSync$1$1":I
    .end local v14    # "newState":Z
    nop

    .end local v8    # "item$iv":J
    add-int/lit8 v7, v7, 0x1

    move v4, v10

    goto :goto_13

    .line 847
    .end local v10    # "index$iv":I
    .local v4, "index$iv":I
    :cond_44
    nop

    .line 774
    .end local v2    # "$this$forEachIndexed$iv":[J
    .end local v3    # "$i$f$forEachIndexed":I
    .end local v4    # "index$iv":I
    iput-boolean v6, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->needsSync:Z

    .line 775
    iget-object v2, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->triggerStateChanges:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I
    :try_end_4f
    .catchall {:try_start_c .. :try_end_4f} :catchall_51

    .end local v0    # "$i$a$-synchronized-InvalidationTracker$ObservedTableTracker$getTablesToSync$1":I
    monitor-exit p0

    return-object v2

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs onAdded([I)Z
    .registers 16
    .param p1, "tableIds"    # [I

    const-string/jumbo v0, "tableIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    const/4 v0, 0x0

    .line 710
    .local v0, "needTriggerSync":Z
    monitor-enter p0

    const/4 v1, 0x0

    .line 711
    .local v1, "$i$a$-synchronized-InvalidationTracker$ObservedTableTracker$onAdded$1":I
    move-object v2, p1

    .local v2, "$this$forEach$iv":[I
    const/4 v3, 0x0

    .line 841
    .local v3, "$i$f$forEach":I
    :try_start_b
    array-length v4, v2

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v4, :cond_2e

    aget v6, v2, v5

    .local v6, "element$iv":I
    move v7, v6

    .local v7, "tableId":I
    const/4 v8, 0x0

    .line 712
    .local v8, "$i$a$-forEach-InvalidationTracker$ObservedTableTracker$onAdded$1$1":I
    iget-object v9, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->tableObservers:[J

    aget-wide v10, v9, v7

    move-wide v9, v10

    .line 713
    .local v9, "prevObserverCount":J
    iget-object v11, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->tableObservers:[J

    const-wide/16 v12, 0x1

    add-long/2addr v12, v9

    aput-wide v12, v11, v7

    .line 714
    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_29

    .line 715
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->needsSync:Z

    .line 716
    const/4 v0, 0x1

    .line 718
    :cond_29
    nop

    .line 841
    .end local v7    # "tableId":I
    .end local v8    # "$i$a$-forEach-InvalidationTracker$ObservedTableTracker$onAdded$1$1":I
    .end local v9    # "prevObserverCount":J
    nop

    .end local v6    # "element$iv":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 842
    :cond_2e
    nop

    .line 719
    .end local v2    # "$this$forEach$iv":[I
    .end local v3    # "$i$f$forEach":I
    nop

    .end local v1    # "$i$a$-synchronized-InvalidationTracker$ObservedTableTracker$onAdded$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_34

    .line 710
    monitor-exit p0

    .line 720
    return v0

    .line 710
    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final varargs onRemoved([I)Z
    .registers 20
    .param p1, "tableIds"    # [I

    move-object/from16 v1, p0

    const-string/jumbo v0, "tableIds"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    const/4 v3, 0x0

    .line 728
    .local v3, "needTriggerSync":Z
    monitor-enter p0

    const/4 v0, 0x0

    .line 729
    .local v0, "$i$a$-synchronized-InvalidationTracker$ObservedTableTracker$onRemoved$1":I
    move-object/from16 v4, p1

    .local v4, "$this$forEach$iv":[I
    const/4 v5, 0x0

    .line 843
    .local v5, "$i$f$forEach":I
    :try_start_10
    array-length v6, v4

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v6, :cond_32

    aget v8, v4, v7

    .local v8, "element$iv":I
    move v9, v8

    .local v9, "tableId":I
    const/4 v10, 0x0

    .line 730
    .local v10, "$i$a$-forEach-InvalidationTracker$ObservedTableTracker$onRemoved$1$1":I
    iget-object v11, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->tableObservers:[J

    aget-wide v12, v11, v9

    move-wide v11, v12

    .line 731
    .local v11, "prevObserverCount":J
    iget-object v13, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->tableObservers:[J

    const-wide/16 v14, 0x1

    sub-long v16, v11, v14

    aput-wide v16, v13, v9

    .line 732
    cmp-long v13, v11, v14

    if-nez v13, :cond_2d

    .line 733
    const/4 v13, 0x1

    iput-boolean v13, v1, Landroidx/room/InvalidationTracker$ObservedTableTracker;->needsSync:Z

    .line 734
    const/4 v3, 0x1

    .line 736
    :cond_2d
    nop

    .line 843
    .end local v9    # "tableId":I
    .end local v10    # "$i$a$-forEach-InvalidationTracker$ObservedTableTracker$onRemoved$1$1":I
    .end local v11    # "prevObserverCount":J
    nop

    .end local v8    # "element$iv":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 844
    :cond_32
    nop

    .line 737
    .end local v4    # "$this$forEach$iv":[I
    .end local v5    # "$i$f$forEach":I
    nop

    .end local v0    # "$i$a$-synchronized-InvalidationTracker$ObservedTableTracker$onRemoved$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_38

    .line 728
    monitor-exit p0

    .line 738
    return v3

    .line 728
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetTriggerState()V
    .registers 4

    .line 746
    monitor-enter p0

    const/4 v0, 0x0

    .line 747
    .local v0, "$i$a$-synchronized-InvalidationTracker$ObservedTableTracker$resetTriggerState$1":I
    :try_start_2
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->triggerStates:[Z

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 748
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->needsSync:Z

    .line 749
    nop

    .end local v0    # "$i$a$-synchronized-InvalidationTracker$ObservedTableTracker$resetTriggerState$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    .line 746
    monitor-exit p0

    .line 750
    return-void

    .line 746
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setNeedsSync(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 703
    iput-boolean p1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->needsSync:Z

    return-void
.end method
