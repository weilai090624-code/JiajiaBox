.class Landroidx/transition/CanvasUtils;
.super Ljava/lang/Object;
.source "CanvasUtils.java"


# static fields
.field private static sInorderBarrierMethod:Ljava/lang/reflect/Method;

.field private static sOrderMethodsFetched:Z

.field private static sReorderBarrierMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method static enableZ(Landroid/graphics/Canvas;Z)V
    .registers 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "enable"    # Z

    .line 41
    nop

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_11

    .line 44
    if-eqz p1, :cond_d

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Canvas;->enableZ()V

    goto :goto_6e

    .line 47
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/Canvas;->disableZ()V

    goto :goto_6e

    .line 49
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_6f

    .line 53
    sget-boolean v0, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    const/4 v1, 0x0

    if-nez v0, :cond_43

    .line 55
    const/4 v0, 0x1

    :try_start_1d
    const-class v2, Landroid/graphics/Canvas;

    const-string v3, "insertReorderBarrier"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 57
    sget-object v2, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 58
    const-class v2, Landroid/graphics/Canvas;

    const-string v3, "insertInorderBarrier"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 60
    sget-object v2, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_3f} :catch_40

    .line 63
    goto :goto_41

    .line 61
    :catch_40
    move-exception v2

    .line 64
    :goto_41
    sput-boolean v0, Landroidx/transition/CanvasUtils;->sOrderMethodsFetched:Z

    .line 67
    :cond_43
    if-eqz p1, :cond_55

    :try_start_45
    sget-object v0, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_55

    .line 68
    sget-object v0, Landroidx/transition/CanvasUtils;->sReorderBarrierMethod:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    .line 75
    :catch_51
    move-exception v0

    goto :goto_63

    .line 73
    :catch_53
    move-exception v0

    goto :goto_6d

    .line 70
    :cond_55
    :goto_55
    if-nez p1, :cond_6d

    sget-object v0, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6d

    .line 71
    sget-object v0, Landroidx/transition/CanvasUtils;->sInorderBarrierMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_62} :catch_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_45 .. :try_end_62} :catch_51

    goto :goto_6d

    .line 76
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_63
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_6d
    :goto_6d
    nop

    .line 79
    :goto_6e
    return-void

    .line 51
    :cond_6f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method doesn\'t work on Pie!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
