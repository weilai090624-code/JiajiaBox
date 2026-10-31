.class synthetic Landroidx/constraintlayout/core/SolverVariable$1;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$core$SolverVariable$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 106
    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable$Type;->values()[Landroidx/constraintlayout/core/SolverVariable$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/constraintlayout/core/SolverVariable$1;->$SwitchMap$androidx$constraintlayout$core$SolverVariable$Type:[I

    :try_start_9
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$1;->$SwitchMap$androidx$constraintlayout$core$SolverVariable$Type:[I

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/SolverVariable$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$1;->$SwitchMap$androidx$constraintlayout$core$SolverVariable$Type:[I

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->CONSTANT:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/SolverVariable$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$1;->$SwitchMap$androidx$constraintlayout$core$SolverVariable$Type:[I

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/SolverVariable$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$1;->$SwitchMap$androidx$constraintlayout$core$SolverVariable$Type:[I

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/SolverVariable$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$1;->$SwitchMap$androidx$constraintlayout$core$SolverVariable$Type:[I

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/SolverVariable$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    return-void
.end method
