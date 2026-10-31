.class public final synthetic Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;
.super Ljava/lang/Object;
.source "WorkTypeConverters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/model/WorkTypeConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    invoke-static {}, Landroidx/work/WorkInfo$State;->values()[Landroidx/work/WorkInfo$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v2}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v2

    :goto_12
    const/4 v2, 0x2

    :try_start_13
    sget-object v3, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    invoke-virtual {v3}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v3

    :goto_1d
    const/4 v3, 0x3

    :try_start_1e
    sget-object v4, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v4}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v4

    :goto_28
    const/4 v4, 0x4

    :try_start_29
    sget-object v5, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v5}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_31} :catch_32

    goto :goto_33

    :catch_32
    move-exception v5

    :goto_33
    const/4 v5, 0x5

    :try_start_34
    sget-object v6, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v6}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    move-exception v6

    :goto_3e
    :try_start_3e
    sget-object v6, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v6}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v0, v6
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_47} :catch_48

    goto :goto_49

    :catch_48
    move-exception v6

    :goto_49
    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Landroidx/work/BackoffPolicy;->values()[Landroidx/work/BackoffPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_52
    sget-object v6, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    invoke-virtual {v6}, Landroidx/work/BackoffPolicy;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5a} :catch_5b

    goto :goto_5c

    :catch_5b
    move-exception v6

    :goto_5c
    :try_start_5c
    sget-object v6, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    invoke-virtual {v6}, Landroidx/work/BackoffPolicy;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v6

    :goto_66
    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Landroidx/work/NetworkType;->values()[Landroidx/work/NetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_6f
    sget-object v6, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    invoke-virtual {v6}, Landroidx/work/NetworkType;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_77} :catch_78

    goto :goto_79

    :catch_78
    move-exception v6

    :goto_79
    :try_start_79
    sget-object v6, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v6}, Landroidx/work/NetworkType;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    move-exception v6

    :goto_83
    :try_start_83
    sget-object v6, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    invoke-virtual {v6}, Landroidx/work/NetworkType;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8b} :catch_8c

    goto :goto_8d

    :catch_8c
    move-exception v3

    :goto_8d
    :try_start_8d
    sget-object v3, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    invoke-virtual {v3}, Landroidx/work/NetworkType;->ordinal()I

    move-result v3

    aput v4, v0, v3
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_95} :catch_96

    goto :goto_97

    :catch_96
    move-exception v3

    :goto_97
    :try_start_97
    sget-object v3, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    invoke-virtual {v3}, Landroidx/work/NetworkType;->ordinal()I

    move-result v3

    aput v5, v0, v3
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_9f} :catch_a0

    goto :goto_a1

    :catch_a0
    move-exception v3

    :goto_a1
    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Landroidx/work/OutOfQuotaPolicy;->values()[Landroidx/work/OutOfQuotaPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_aa
    sget-object v3, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {v3}, Landroidx/work/OutOfQuotaPolicy;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b2} :catch_b3

    goto :goto_b4

    :catch_b3
    move-exception v1

    :goto_b4
    :try_start_b4
    sget-object v1, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {v1}, Landroidx/work/OutOfQuotaPolicy;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_bc} :catch_bd

    goto :goto_be

    :catch_bd
    move-exception v1

    :goto_be
    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$3:[I

    return-void
.end method
