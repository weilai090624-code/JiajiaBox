.class public final Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;
.super Landroid/view/View;
.source "FullScreenBackdrop.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static final TAG:I = 0x7f0a0f49

.field private static final WORKER:Ljava/util/concurrent/ExecutorService;

.field private static final preloaded:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private added:Z

.field private final card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

.field private final content:Landroid/view/ViewGroup;

.field private final destination:Landroid/graphics/Rect;

.field private disposed:Z

.field private drawerProgress:F

.field private generation:I

.field private height:I

.field private final idle:Landroid/os/MessageQueue$IdleHandler;

.field private image:Landroid/graphics/Bitmap;

.field private imageGeneration:I

.field private final main:Landroid/os/Handler;

.field private moving:Z

.field private final paint:Landroid/graphics/Paint;

.field private final root:Landroid/view/ViewGroup;

.field private scheduled:Z

.field private final warmTask:Ljava/lang/Runnable;

.field private warming:Z

.field private width:I


# direct methods
.method public static synthetic $r8$lambda$S6RRKOiENHdJo39Q7EahTkFAhu4(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)V
    .registers 1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->enqueueIdle()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$0;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->WORKER:Ljava/util/concurrent/ExecutorService;

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->preloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;)V
    .registers 6

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->main:Landroid/os/Handler;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->paint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->destination:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->imageGeneration:I

    .line 25
    new-instance v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$2;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$2;-><init>(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->idle:Landroid/os/MessageQueue$IdleHandler;

    .line 26
    new-instance v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$3;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$3;-><init>(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->warmTask:Ljava/lang/Runnable;

    .line 28
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->root:Landroid/view/ViewGroup;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->setImportantForAccessibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->setAlpha(F)V

    return-void
.end method

.method static synthetic access$000(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Z
    .registers 1

    .line 9
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->disposed:Z

    return p0
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->generation:I

    return p0
.end method

.method static synthetic access$1002(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->width:I

    return p1
.end method

.method static synthetic access$1102(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->height:I

    return p1
.end method

.method static synthetic access$1202(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->imageGeneration:I

    return p1
.end method

.method static synthetic access$1300(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Landroid/graphics/Rect;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->destination:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Landroid/view/ViewGroup;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$302(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->warming:Z

    return p1
.end method

.method static synthetic access$400(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)V
    .registers 1

    .line 9
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->requestWarm()V

    return-void
.end method

.method static synthetic access$500(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Z
    .registers 1

    .line 9
    iget-boolean p0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->moving:Z

    return p0
.end method

.method static synthetic access$600(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)F
    .registers 1

    .line 9
    iget p0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->drawerProgress:F

    return p0
.end method

.method static synthetic access$700(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    return-object p0
.end method

.method static synthetic access$800(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Landroid/os/Handler;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;)Landroid/graphics/Bitmap;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->image:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$902(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static blur(Landroid/graphics/Bitmap;I)V
    .registers 19

    move/from16 v0, p1

    .line 88
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

    .line 90
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

    .line 91
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

    .line 93
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method private captureWarm()V
    .registers 12

    .line 41
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->warming:Z

    if-nez v0, :cond_c9

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->valid()Z

    move-result v0

    if-nez v0, :cond_c9

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->eligible()Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_c9

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->warming:Z

    .line 42
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    iget v5, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->generation:I

    .line 43
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->getVisibility()I

    move-result v1

    add-int/lit8 v2, v6, 0xb

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 45
    :try_start_2b
    div-int/lit8 v2, v2, 0xc

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v7, 0xb

    div-int/lit8 v3, v3, 0xc

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_3f} :catch_a1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_3f} :catch_9f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_9d

    .line 46
    :try_start_3f
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v6

    div-float/2addr v2, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v10, v7

    div-float/2addr v3, v10

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 47
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepare(Landroid/view/View;)V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->warmMenuLayer(Landroid/view/View;)Z

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getWidth()I

    move-result v2

    if-lez v2, :cond_77

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getHeight()I

    move-result v2

    if-lez v2, :cond_77

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v2, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_77
    const/4 v2, 0x4

    .line 48
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->setVisibility(I)V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_80} :catch_9a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3f .. :try_end_80} :catch_98
    .catchall {:try_start_3f .. :try_end_80} :catchall_95

    .line 50
    :try_start_80
    sget-object v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;-><init>(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;Landroid/graphics/Bitmap;III)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_8b
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_8b} :catch_a1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_80 .. :try_end_8b} :catch_9f
    .catchall {:try_start_80 .. :try_end_8b} :catchall_9d

    .line 61
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_c9

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->setVisibility(I)V

    return-void

    :catchall_95
    move-exception v0

    move-object v9, v4

    goto :goto_ba

    :catch_98
    move-exception v0

    goto :goto_9b

    :catch_9a
    move-exception v0

    :goto_9b
    move-object v9, v4

    goto :goto_a2

    :catchall_9d
    move-exception v0

    goto :goto_ba

    :catch_9f
    move-exception v0

    goto :goto_a2

    :catch_a1
    move-exception v0

    .line 60
    :goto_a2
    :try_start_a2
    iput-boolean v8, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->warming:Z

    const-string v2, "FullScreenBackdrop"

    const-string v3, "Cannot capture cached backdrop"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_9d

    .line 61
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_b4

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->setVisibility(I)V

    :cond_b4
    if-eqz v9, :cond_c9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_c9

    :goto_ba
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_c3

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->setVisibility(I)V

    :cond_c3
    if-eqz v9, :cond_c8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c8
    throw v0

    :cond_c9
    :goto_c9
    return-void
.end method

.method public static drawerSlide(Landroid/view/View;F)V
    .registers 5

    .line 79
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->owner(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_36

    :cond_7
    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->drawerProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->drawerProgress:F

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->getAlpha()F

    move-result p1

    iget v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->drawerProgress:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_23

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->setAlpha(F)V

    :cond_23
    cmpl-float p1, v0, v1

    if-lez p1, :cond_36

    iget p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->drawerProgress:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_36

    iget p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->generation:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->generation:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->requestWarm()V

    :cond_36
    :goto_36
    return-void
.end method

.method public static drawerState(Landroid/app/Activity;I)V
    .registers 2

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->owner(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_1b

    :cond_f
    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->moving:Z

    if-nez p1, :cond_1b

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->requestWarm()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private eligible()Z
    .registers 3

    .line 38
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->disposed:Z

    if-nez v0, :cond_42

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_42

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lez v0, :cond_42

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->isShown()Z

    move-result v0

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->moving:Z

    if-nez v0, :cond_42

    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->drawerProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_42

    invoke-static {}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->isMoving()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const v1, 0x7f0a0f48

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    return v0

    :cond_42
    const/4 v0, 0x0

    return v0
.end method

.method private enqueueIdle()V
    .registers 3

    .line 27
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->disposed:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->idle:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void

    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->scheduled:Z

    return-void
.end method

.method public static install(Landroid/app/Activity;)V
    .registers 6

    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0f49

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    goto :goto_41

    .line 31
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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "navGlassLight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const v2, 0x7f0a00e1

    .line 32
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_42

    :goto_41
    return-void

    .line 33
    :cond_42
    new-instance v3, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v3, v0, v2, p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-direct {v3}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->requestWarm()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception p0

    .line 34
    const-string v0, "FullScreenBackdrop"

    const-string v1, "Cannot install backdrop"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static isTransitioning(Landroid/view/View;)Z
    .registers 3

    .line 81
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->owner(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    move-result-object p0

    if-eqz p0, :cond_24

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->moving:Z

    if-nez v0, :cond_22

    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->drawerProgress:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_17

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_22

    :cond_17
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const v0, 0x7f0a0f48

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$preload$1()V
    .registers 8

    .line 14
    :try_start_0
    const-class v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

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

    .line 15
    :cond_36
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x18

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_4b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3e} :catch_4b

    const/4 v0, 0x2

    :try_start_3f
    invoke-static {v1, v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->blur(Landroid/graphics/Bitmap;I)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_46

    :try_start_42
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catchall_46
    move-exception v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_4b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_42 .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception v0

    .line 16
    const-string v1, "FullScreenBackdrop"

    const-string v2, "Optional startup prewarm skipped"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 11
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

    .line 78
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0a0f49

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    if-eqz v1, :cond_16

    check-cast p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    return-object p0

    :cond_16
    return-object v0
.end method

.method public static preload()V
    .registers 3

    .line 13
    sget-object v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->preloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    sget-object v0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$6;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static refreshNative(Landroid/view/ViewGroup;)V
    .registers 1

    return-void
.end method

.method private requestWarm()V
    .registers 5

    .line 39
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->disposed:Z

    if-nez v0, :cond_25

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->valid()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->warming:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->scheduled:Z

    if-nez v0, :cond_25

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->eligible()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_25

    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->scheduled:Z

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->warmTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_25
    :goto_25
    return-void
.end method

.method public static sceneChanged(Landroid/app/Activity;)V
    .registers 1

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->sceneChanged(Landroid/view/View;)V

    return-void
.end method

.method public static sceneChanged(Landroid/view/View;)V
    .registers 2

    .line 83
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->owner(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    move-result-object p0

    if-eqz p0, :cond_f

    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->generation:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->requestWarm()V

    :cond_f
    return-void
.end method

.method private usable()Z
    .registers 3

    .line 36
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->width:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->height:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private valid()Z
    .registers 3

    .line 37
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->usable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->imageGeneration:I

    iget v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->generation:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$captureWarm$3$io-nekohasekai-sagernet-ui-FullScreenBackdrop(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->warming:Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const-string p1, "FullScreenBackdrop"

    const-string v0, "Cannot prepare cached backdrop"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method synthetic lambda$captureWarm$4$io-nekohasekai-sagernet-ui-FullScreenBackdrop(Landroid/graphics/Bitmap;III)V
    .registers 12

    .line 0
    const/4 v0, 0x2

    .line 51
    :try_start_1
    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->blur(Landroid/graphics/Bitmap;I)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v1, 0x16000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_11} :catch_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_11} :catch_21

    .line 53
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->main:Landroid/os/Handler;

    new-instance v1, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;

    move-object v2, p0

    move-object v6, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$1;-><init>(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;IIILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_21
    move-exception v0

    goto :goto_24

    :catch_23
    move-exception v0

    :goto_24
    move-object v6, p1

    move-object p1, v0

    .line 52
    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->main:Landroid/os/Handler;

    new-instance p3, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$4;

    invoke-direct {p3, p0, v6, p1}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$4;-><init>(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$new$2$io-nekohasekai-sagernet-ui-FullScreenBackdrop()Z
    .registers 3

    .line 0
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->scheduled:Z

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->eligible()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->captureWarm()V

    :cond_c
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 76
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->usable()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->image:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->destination:Landroid/graphics/Rect;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_11
    const/high16 v0, 0x16000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public onPreDraw()Z
    .registers 6

    .line 64
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->disposed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 65
    :cond_6
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-lez v0, :cond_46

    if-lez v2, :cond_46

    .line 68
    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->added:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2f

    invoke-virtual {p0, v4, v4, v0, v2}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->layout(IIII)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->destination:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->added:Z

    goto :goto_46

    .line 69
    :cond_2f
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_3b

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_46

    :cond_3b
    invoke-virtual {p0, v4, v4, v0, v2}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->layout(IIII)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->destination:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->invalidate()V

    .line 71
    :cond_46
    :goto_46
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->card:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->isShown()Z

    move-result v0

    if-eqz v0, :cond_51

    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->drawerProgress:F

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    .line 72
    :goto_52
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_5d

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->setAlpha(F)V

    .line 73
    :cond_5d
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->valid()Z

    move-result v0

    if-nez v0, :cond_66

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->requestWarm()V

    :cond_66
    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 84
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->requestWarm()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->disposed:Z

    iget v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->generation:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->generation:I

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->main:Landroid/os/Handler;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->warmTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->idle:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {p1, v0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->scheduled:Z

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->added:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->added:Z

    :cond_2a
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->image:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->image:Landroid/graphics/Bitmap;

    :cond_34
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->root:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->root:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_49
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->root:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->root:Landroid/view/ViewGroup;

    const v1, 0x7f0a0f49

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method
