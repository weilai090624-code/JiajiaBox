.class public final Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;
.super Ljava/lang/Object;
.source "WorkConstraintsTracker.kt"

# interfaces
.implements Landroidx/work/impl/constraints/WorkConstraintsTracker;
.implements Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkConstraintsTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/WorkConstraintsTrackerImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1282#2,2:149\n766#3:151\n857#3,2:152\n1851#3,2:154\n1#4:156\n*S KotlinDebug\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/WorkConstraintsTrackerImpl\n*L\n120#1:149,2\n134#1:151\n134#1:152,2\n135#1:154,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0001\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\t\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0016J\u0016\u0010\u0018\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0016J\u0016\u0010\u0019\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0014H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;",
        "Landroidx/work/impl/constraints/WorkConstraintsTracker;",
        "Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;",
        "trackers",
        "Landroidx/work/impl/constraints/trackers/Trackers;",
        "callback",
        "Landroidx/work/impl/constraints/WorkConstraintsCallback;",
        "(Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/constraints/WorkConstraintsCallback;)V",
        "constraintControllers",
        "",
        "Landroidx/work/impl/constraints/controllers/ConstraintController;",
        "(Landroidx/work/impl/constraints/WorkConstraintsCallback;[Landroidx/work/impl/constraints/controllers/ConstraintController;)V",
        "[Landroidx/work/impl/constraints/controllers/ConstraintController;",
        "lock",
        "",
        "areAllConstraintsMet",
        "",
        "workSpecId",
        "",
        "onConstraintMet",
        "",
        "workSpecs",
        "",
        "Landroidx/work/impl/model/WorkSpec;",
        "onConstraintNotMet",
        "replace",
        "",
        "reset",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final callback:Landroidx/work/impl/constraints/WorkConstraintsCallback;

.field private final constraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/work/impl/constraints/controllers/ConstraintController<",
            "*>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/work/impl/constraints/WorkConstraintsCallback;[Landroidx/work/impl/constraints/controllers/ConstraintController;)V
    .registers 4
    .param p1, "callback"    # Landroidx/work/impl/constraints/WorkConstraintsCallback;
    .param p2, "constraintControllers"    # [Landroidx/work/impl/constraints/controllers/ConstraintController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/constraints/WorkConstraintsCallback;",
            "[",
            "Landroidx/work/impl/constraints/controllers/ConstraintController<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "constraintControllers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->callback:Landroidx/work/impl/constraints/WorkConstraintsCallback;

    .line 51
    iput-object p2, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->constraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->lock:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/constraints/WorkConstraintsCallback;)V
    .registers 6
    .param p1, "trackers"    # Landroidx/work/impl/constraints/trackers/Trackers;
    .param p2, "callback"    # Landroidx/work/impl/constraints/WorkConstraintsCallback;

    const-string/jumbo v0, "trackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    nop

    .line 69
    nop

    .line 71
    const/4 v0, 0x7

    new-array v0, v0, [Landroidx/work/impl/constraints/controllers/ConstraintController;

    new-instance v1, Landroidx/work/impl/constraints/controllers/BatteryChargingController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getBatteryChargingTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/BatteryChargingController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    check-cast v1, Landroidx/work/impl/constraints/controllers/ConstraintController;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 72
    new-instance v1, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getBatteryNotLowTracker()Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;)V

    check-cast v1, Landroidx/work/impl/constraints/controllers/ConstraintController;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 71
    nop

    .line 73
    new-instance v1, Landroidx/work/impl/constraints/controllers/StorageNotLowController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getStorageNotLowTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/StorageNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    check-cast v1, Landroidx/work/impl/constraints/controllers/ConstraintController;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 71
    nop

    .line 74
    new-instance v1, Landroidx/work/impl/constraints/controllers/NetworkConnectedController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/NetworkConnectedController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    check-cast v1, Landroidx/work/impl/constraints/controllers/ConstraintController;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 71
    nop

    .line 75
    new-instance v1, Landroidx/work/impl/constraints/controllers/NetworkUnmeteredController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/NetworkUnmeteredController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    check-cast v1, Landroidx/work/impl/constraints/controllers/ConstraintController;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 71
    nop

    .line 76
    new-instance v1, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    check-cast v1, Landroidx/work/impl/constraints/controllers/ConstraintController;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 71
    nop

    .line 77
    new-instance v1, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    check-cast v1, Landroidx/work/impl/constraints/controllers/ConstraintController;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 71
    nop

    .line 68
    invoke-direct {p0, p2, v0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;-><init>(Landroidx/work/impl/constraints/WorkConstraintsCallback;[Landroidx/work/impl/constraints/controllers/ConstraintController;)V

    .line 79
    return-void
.end method


# virtual methods
.method public final areAllConstraintsMet(Ljava/lang/String;)Z
    .registers 13
    .param p1, "workSpecId"    # Ljava/lang/String;

    const-string/jumbo v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 120
    .local v1, "$i$a$-synchronized-WorkConstraintsTrackerImpl$areAllConstraintsMet$1":I
    :try_start_a
    iget-object v2, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->constraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;

    .local v2, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 149
    .local v3, "$i$f$firstOrNull":I
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v4, :cond_20

    aget-object v7, v2, v6

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it":Landroidx/work/impl/constraints/controllers/ConstraintController;
    const/4 v9, 0x0

    .line 121
    .local v9, "$i$a$-firstOrNull-WorkConstraintsTrackerImpl$areAllConstraintsMet$1$controller$1":I
    invoke-virtual {v8, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;->isWorkSpecConstrained(Ljava/lang/String;)Z

    move-result v10

    .line 149
    .end local v8    # "it":Landroidx/work/impl/constraints/controllers/ConstraintController;
    .end local v9    # "$i$a$-firstOrNull-WorkConstraintsTrackerImpl$areAllConstraintsMet$1$controller$1":I
    if-eqz v10, :cond_1d

    goto :goto_21

    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 150
    :cond_20
    const/4 v7, 0x0

    .line 120
    .end local v2    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_21
    move-object v2, v7

    .line 123
    .local v2, "controller":Landroidx/work/impl/constraints/controllers/ConstraintController;
    if-eqz v2, :cond_54

    .line 124
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v3

    .line 125
    # getter for: Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;
    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Work "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " constrained by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-virtual {v3, v4, v6}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_59

    .line 128
    :cond_54
    if-nez v2, :cond_57

    const/4 v5, 0x1

    .end local v1    # "$i$a$-synchronized-WorkConstraintsTrackerImpl$areAllConstraintsMet$1":I
    .end local v2    # "controller":Landroidx/work/impl/constraints/controllers/ConstraintController;
    :cond_57
    monitor-exit v0

    return v5

    :catchall_59
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onConstraintMet(Ljava/util/List;)V
    .registers 15
    .param p1, "workSpecs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "workSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 134
    .local v1, "$i$a$-synchronized-WorkConstraintsTrackerImpl$onConstraintMet$1":I
    :try_start_a
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 151
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 152
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1b
    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/work/impl/model/WorkSpec;

    .local v9, "it":Landroidx/work/impl/model/WorkSpec;
    const/4 v10, 0x0

    .line 134
    .local v10, "$i$a$-filter-WorkConstraintsTrackerImpl$onConstraintMet$1$unconstrainedWorkSpecIds$1":I
    iget-object v11, v9, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {p0, v11}, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->areAllConstraintsMet(Ljava/lang/String;)Z

    move-result v11

    .line 152
    .end local v9    # "it":Landroidx/work/impl/model/WorkSpec;
    .end local v10    # "$i$a$-filter-WorkConstraintsTrackerImpl$onConstraintMet$1$unconstrainedWorkSpecIds$1":I
    if-eqz v11, :cond_1b

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 153
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_35
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 151
    nop

    .line 134
    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    move-object v2, v4

    .line 135
    .local v2, "unconstrainedWorkSpecIds":Ljava/util/List;
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 154
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/work/impl/model/WorkSpec;

    .local v7, "it":Landroidx/work/impl/model/WorkSpec;
    const/4 v8, 0x0

    .line 136
    .local v8, "$i$a$-forEach-WorkConstraintsTrackerImpl$onConstraintMet$1$1":I
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v9

    # getter for: Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;
    invoke-static {}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Constraints met for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    nop

    .line 154
    .end local v7    # "it":Landroidx/work/impl/model/WorkSpec;
    .end local v8    # "$i$a$-forEach-WorkConstraintsTrackerImpl$onConstraintMet$1$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_42

    .line 155
    :cond_71
    nop

    .line 138
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    iget-object v3, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->callback:Landroidx/work/impl/constraints/WorkConstraintsCallback;

    if-eqz v3, :cond_7b

    invoke-interface {v3, v2}, Landroidx/work/impl/constraints/WorkConstraintsCallback;->onAllConstraintsMet(Ljava/util/List;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7b
    .catchall {:try_start_a .. :try_end_7b} :catchall_7d

    .line 133
    .end local v1    # "$i$a$-synchronized-WorkConstraintsTrackerImpl$onConstraintMet$1":I
    .end local v2    # "unconstrainedWorkSpecIds":Ljava/util/List;
    :cond_7b
    monitor-exit v0

    .line 140
    return-void

    .line 133
    :catchall_7d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onConstraintNotMet(Ljava/util/List;)V
    .registers 5
    .param p1, "workSpecs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "workSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    const/4 v1, 0x0

    .line 143
    .local v1, "$i$a$-synchronized-WorkConstraintsTrackerImpl$onConstraintNotMet$1":I
    :try_start_a
    iget-object v2, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->callback:Landroidx/work/impl/constraints/WorkConstraintsCallback;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1}, Landroidx/work/impl/constraints/WorkConstraintsCallback;->onAllConstraintsNotMet(Ljava/util/List;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_15

    .end local v1    # "$i$a$-synchronized-WorkConstraintsTrackerImpl$onConstraintNotMet$1":I
    :cond_13
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public replace(Ljava/lang/Iterable;)V
    .registers 10
    .param p1, "workSpecs"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "workSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 88
    .local v1, "$i$a$-synchronized-WorkConstraintsTrackerImpl$replace$1":I
    :try_start_a
    iget-object v2, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->constraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v3, :cond_1a

    aget-object v6, v2, v5

    .line 89
    .local v6, "controller":Landroidx/work/impl/constraints/controllers/ConstraintController;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/work/impl/constraints/controllers/ConstraintController;->setCallback(Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V

    .line 88
    .end local v6    # "controller":Landroidx/work/impl/constraints/controllers/ConstraintController;
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 91
    :cond_1a
    iget-object v2, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->constraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v3, :cond_28

    aget-object v6, v2, v5

    .line 92
    .restart local v6    # "controller":Landroidx/work/impl/constraints/controllers/ConstraintController;
    invoke-virtual {v6, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;->replace(Ljava/lang/Iterable;)V

    .line 91
    .end local v6    # "controller":Landroidx/work/impl/constraints/controllers/ConstraintController;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 94
    :cond_28
    iget-object v2, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->constraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;

    array-length v3, v2

    :goto_2b
    if-ge v4, v3, :cond_38

    aget-object v5, v2, v4

    .line 95
    .local v5, "controller":Landroidx/work/impl/constraints/controllers/ConstraintController;
    move-object v6, p0

    check-cast v6, Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;

    invoke-virtual {v5, v6}, Landroidx/work/impl/constraints/controllers/ConstraintController;->setCallback(Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V

    .line 94
    .end local v5    # "controller":Landroidx/work/impl/constraints/controllers/ConstraintController;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 97
    :cond_38
    nop

    .end local v1    # "$i$a$-synchronized-WorkConstraintsTrackerImpl$replace$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_3d

    .line 87
    monitor-exit v0

    .line 98
    return-void

    .line 87
    :catchall_3d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public reset()V
    .registers 7

    .line 104
    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 105
    .local v1, "$i$a$-synchronized-WorkConstraintsTrackerImpl$reset$1":I
    :try_start_4
    iget-object v2, p0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->constraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_12

    aget-object v5, v2, v4

    .line 106
    .local v5, "controller":Landroidx/work/impl/constraints/controllers/ConstraintController;
    invoke-virtual {v5}, Landroidx/work/impl/constraints/controllers/ConstraintController;->reset()V

    .line 105
    .end local v5    # "controller":Landroidx/work/impl/constraints/controllers/ConstraintController;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 108
    :cond_12
    nop

    .end local v1    # "$i$a$-synchronized-WorkConstraintsTrackerImpl$reset$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_17

    .line 104
    monitor-exit v0

    .line 109
    return-void

    .line 104
    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method
