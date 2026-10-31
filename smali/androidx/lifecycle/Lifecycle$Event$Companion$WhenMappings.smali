.class public final synthetic Landroidx/lifecycle/Lifecycle$Event$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "Lifecycle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/Lifecycle$Event$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    :try_start_12
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v1

    :goto_1d
    :try_start_1d
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v1

    :goto_28
    :try_start_28
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_33

    :catch_32
    move-exception v1

    :goto_33
    :try_start_33
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    move-exception v1

    :goto_3e
    sput-object v0, Landroidx/lifecycle/Lifecycle$Event$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
