.class public final Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;
.super Ljava/lang/Object;
.source "FullScreenBackdrop.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static final TAG:I = 0x7f0a0f49

.field private static final WORKER:Ljava/util/concurrent/ExecutorService;

.field private static final preloaded:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final content:Landroid/view/ViewGroup;

.field private disposed:Z

.field private moving:Z

.field private final root:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$0;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->WORKER:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->preloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->root:Landroid/view/ViewGroup;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    return-void
.end method

.method static blur(Landroid/graphics/Bitmap;I)V
    .registers 19

    move/from16 v0, p1

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v1, v3, v7

    new-array v2, v1, [I

    new-array v9, v1, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v3

    const/4 v3, 0x0

    move v8, v7

    move v7, v4

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1e
    const/4 v5, 0x3

    if-ge v3, v5, :cond_cf

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v8, :cond_79

    const/4 v6, 0x0

    :goto_25
    if-ge v6, v4, :cond_74

    neg-int v7, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2c
    if-gt v7, v0, :cond_56

    mul-int v14, v5, v4

    add-int/lit8 v15, v4, -0x1

    move-object/from16 v16, v1

    add-int v1, v6, v7

    .line 112
    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v14, v1

    aget v1, v16, v14

    ushr-int/lit8 v14, v1, 0x18

    add-int/2addr v10, v14

    ushr-int/lit8 v14, v1, 0x10

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v11, v14

    ushr-int/lit8 v14, v1, 0x8

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v12, v14

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v13, v1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    goto :goto_2c

    :cond_56
    move-object/from16 v16, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int v7, v5, v4

    add-int/2addr v7, v6

    div-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x18

    div-int/2addr v11, v1

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    div-int/2addr v12, v1

    shl-int/lit8 v11, v12, 0x8

    or-int/2addr v10, v11

    div-int/2addr v13, v1

    or-int v1, v10, v13

    aput v1, v9, v7

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    goto :goto_25

    :cond_74
    move-object/from16 v16, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_79
    move-object/from16 v16, v1

    const/4 v1, 0x0

    :goto_7c
    if-ge v1, v8, :cond_c9

    const/4 v5, 0x0

    :goto_7f
    if-ge v5, v4, :cond_c6

    neg-int v6, v0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_86
    if-gt v6, v0, :cond_ac

    add-int/lit8 v13, v8, -0x1

    add-int v14, v1, v6

    .line 113
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    mul-int v13, v13, v4

    add-int/2addr v13, v5

    aget v13, v9, v13

    ushr-int/lit8 v14, v13, 0x18

    add-int/2addr v7, v14

    ushr-int/lit8 v14, v13, 0x10

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v10, v14

    ushr-int/lit8 v14, v13, 0x8

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v11, v14

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v12, v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_86

    :cond_ac
    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int v13, v1, v4

    add-int/2addr v13, v5

    div-int/2addr v7, v6

    shl-int/lit8 v7, v7, 0x18

    div-int/2addr v10, v6

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v7, v10

    div-int/2addr v11, v6

    shl-int/lit8 v10, v11, 0x8

    or-int/2addr v7, v10

    div-int/2addr v12, v6

    or-int v6, v7, v12

    aput v6, v16, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    :cond_c6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_c9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_1e

    :cond_cf
    move-object/from16 v16, v1

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v4

    move-object/from16 v0, p0

    move v3, v4

    move v7, v8

    const/4 v4, 0x0

    .line 115
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public static drawerSlide(Landroid/view/View;F)V
    .registers 2

    return-void
.end method

.method public static drawerState(Landroid/app/Activity;I)V
    .registers 6

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->drawerMoving(Landroid/view/View;Z)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->owner(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    move-result-object p0

    if-eqz p0, :cond_26

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 87
    :goto_24
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->moving:Z

    :cond_26
    return-void
.end method

.method public static install(Landroid/app/Activity;)V
    .registers 7

    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0f49

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    goto :goto_74

    .line 61
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getBinding"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "navGlassLight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "coordinator"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 64
    instance-of v3, v2, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v3, :cond_74

    instance-of v3, p0, Landroid/view/ViewGroup;

    if-nez v3, :cond_4b

    goto :goto_74

    .line 65
    :cond_4b
    new-instance v3, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-direct {v3, v0, p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 66
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 67
    move-object p0, v2

    check-cast p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_69

    check-cast v2, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_6a

    :cond_69
    move-object p0, v4

    :goto_6a
    if-eqz p0, :cond_6f

    .line 70
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_6f
    iget-object p0, v3, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_75

    :cond_74
    :goto_74
    return-void

    :catch_75
    move-exception p0

    .line 72
    const-string v0, "FullScreenBackdrop"

    const-string v1, "Cannot install drawer motion gate"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static isTransitioning(Landroid/view/View;)Z
    .registers 2

    .line 91
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->owner(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    move-result-object v0

    .line 92
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->isMoving(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_13

    if-eqz v0, :cond_11

    iget-boolean p0, v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->moving:Z

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$preload$1()V
    .registers 8

    .line 42
    :try_start_0
    const-class v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 43
    const-string v1, "DrawerDesign"

    const-string v2, "DrawerDesign$Glyph"

    const-string v3, "DrawerMotion"

    const-string v4, "DrawerMorph"

    const-string v5, "DrawerNavigator"

    const-string v6, "ResponsiveDrawerHeader"

    const-string v7, "RosePalette"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a
    const/4 v4, 0x7

    if-ge v3, v4, :cond_36

    aget-object v4, v1, v3

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "io.nekohasekai.sagernet.ui."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 45
    :cond_36
    invoke-static {}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->preload()V

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x18

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_4e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_41} :catch_4e

    const/4 v0, 0x2

    .line 47
    :try_start_42
    invoke-static {v1, v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->blur(Landroid/graphics/Bitmap;I)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_49

    :try_start_45
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catchall_49
    move-exception v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4e} :catch_4e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_45 .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception v0

    .line 48
    const-string v1, "FullScreenBackdrop"

    const-string v2, "Optional startup prewarm skipped"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "drawer-prewarm"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static owner(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 77
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0a0f49

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 78
    instance-of v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    if-eqz v1, :cond_16

    check-cast p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static preload()V
    .registers 3

    .line 39
    sget-object v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->preloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 40
    :cond_b
    sget-object v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static refreshNative(Landroid/view/ViewGroup;)V
    .registers 1

    return-void
.end method

.method public static sceneChanged(Landroid/app/Activity;)V
    .registers 1

    return-void
.end method

.method public static sceneChanged(Landroid/view/View;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .line 103
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->disposed:Z

    if-eqz p1, :cond_5

    goto :goto_1e

    :cond_5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->disposed:Z

    .line 104
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 105
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->root:Landroid/view/ViewGroup;

    const v0, 0x7f0a0f49

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_1e

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->root:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_1e
    :goto_1e
    return-void
.end method
