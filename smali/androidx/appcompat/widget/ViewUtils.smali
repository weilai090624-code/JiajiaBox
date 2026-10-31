.class public Landroidx/appcompat/widget/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field private static sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    .line 51
    nop

    .line 53
    :try_start_e
    const-class v0, Landroid/view/View;

    const-string v1, "computeFitSystemWindows"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v2

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    .line 55
    sget-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 56
    sget-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_2e} :catch_2f

    .line 60
    :cond_2e
    goto :goto_37

    .line 58
    :catch_2f
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewUtils"

    const-string v2, "Could not find method computeFitSystemWindows. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_37
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .line 75
    sget-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 77
    :try_start_4
    sget-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    .line 80
    goto :goto_1b

    .line 78
    :catch_13
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewUtils"

    const-string v2, "Could not invoke computeFitSystemWindows"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 67
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static makeOptionalFitsSystemWindows(Landroid/view/View;)V
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 89
    const-string v0, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v1, "ViewUtils"

    .line 93
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "makeOptionalFitsSystemWindows"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 94
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 95
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 97
    :cond_1b
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_20} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_20} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_20} :catch_22

    .line 104
    nop

    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_33

    .line 102
    :catch_22
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 100
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_27
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_32

    .line 98
    :catch_2c
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_32
    nop

    .line 106
    :goto_33
    return-void
.end method
