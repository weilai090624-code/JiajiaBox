.class Landroidx/core/os/ProcessCompat$Api19Impl;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ProcessCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# static fields
.field private static sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

.field private static sResolved:Z

.field private static final sResolvedLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/os/ProcessCompat$Api19Impl;->sResolvedLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method static isApplicationUid(I)Z
    .registers 8
    .param p0, "uid"    # I

    .line 89
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Landroidx/core/os/ProcessCompat$Api19Impl;->sResolvedLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_42

    .line 90
    :try_start_4
    sget-boolean v2, Landroidx/core/os/ProcessCompat$Api19Impl;->sResolved:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    .line 91
    sput-boolean v0, Landroidx/core/os/ProcessCompat$Api19Impl;->sResolved:Z

    .line 92
    const-class v2, Landroid/os/UserHandle;

    const-string v4, "isApp"

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/os/ProcessCompat$Api19Impl;->sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

    .line 95
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_3f

    .line 96
    :try_start_1c
    sget-object v1, Landroidx/core/os/ProcessCompat$Api19Impl;->sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3e

    .line 97
    sget-object v1, Landroidx/core/os/ProcessCompat$Api19Impl;->sMethodUserHandleIsAppMethod:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 98
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_38

    .line 102
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 100
    :cond_38
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    .end local p0    # "uid":I
    throw v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3e} :catch_42

    .line 106
    .end local v1    # "result":Ljava/lang/Boolean;
    .restart local p0    # "uid":I
    :cond_3e
    goto :goto_46

    .line 95
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    .end local p0    # "uid":I
    :try_start_41
    throw v2
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_42} :catch_42

    .line 104
    .restart local p0    # "uid":I
    :catch_42
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_46
    return v0
.end method
