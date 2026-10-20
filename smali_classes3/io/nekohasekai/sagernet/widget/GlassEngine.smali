.class public final Lio/nekohasekai/sagernet/widget/GlassEngine;
.super Ljava/lang/Object;
.source "GlassEngine.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/widget/GlassEngine$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000]\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0019*\u0001*\u0018\u0000 L2\u00020\u0001:\u0001LB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010,\u001a\u00020\u0010H\u0016J\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020.2\u0006\u00100\u001a\u000201J\u0010\u00102\u001a\u00020.2\u0006\u00103\u001a\u000204H\u0002J\u0018\u00105\u001a\u00020.2\u0006\u00100\u001a\u0002012\u0006\u00106\u001a\u00020 H\u0002J\u0018\u0010<\u001a\u00020\u001d2\u0006\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u0007H\u0002J\u0018\u0010?\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\u001d2\u0006\u0010A\u001a\u00020\u0007H\u0002J\u001e\u0010B\u001a\u00020.2\u0006\u00100\u001a\u0002012\u0006\u0010=\u001a\u00020\u00072\u0006\u0010C\u001a\u00020\u0007J\u0018\u0010G\u001a\u00020\u001d2\u0006\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u0007H\u0002J\u001e\u0010H\u001a\u00020.2\u0006\u00100\u001a\u0002012\u0006\u0010=\u001a\u00020\u00072\u0006\u0010C\u001a\u00020\u0007J\u0016\u0010I\u001a\u00020.2\u0006\u00100\u001a\u0002012\u0006\u0010J\u001a\u00020\u0007J\u0018\u0010K\u001a\u00020.2\u0006\u00100\u001a\u0002012\u0006\u00106\u001a\u00020 H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\t\"\u0004\u0008\u0018\u0010\u000bR\u001a\u0010\u0019\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012\"\u0004\u0008\u001b\u0010\u0014R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010+R\u000e\u00107\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/widget/GlassEngine;",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "host",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "lensPower",
        "",
        "getLensPower",
        "()F",
        "setLensPower",
        "(F)V",
        "topLensPower",
        "getTopLensPower",
        "setTopLensPower",
        "lensFlip",
        "",
        "getLensFlip",
        "()Z",
        "setLensFlip",
        "(Z)V",
        "value",
        "snapshotScale",
        "getSnapshotScale",
        "setSnapshotScale",
        "paused",
        "getPaused",
        "setPaused",
        "warpVerts",
        "",
        "source",
        "snapshot",
        "Landroid/graphics/Bitmap;",
        "snapshotRect",
        "Landroid/graphics/Rect;",
        "pixels",
        "",
        "lastPixels",
        "first",
        "location",
        "sourceLocation",
        "attachListener",
        "io/nekohasekai/sagernet/widget/GlassEngine$attachListener$1",
        "Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;",
        "onPreDraw",
        "refresh",
        "",
        "render",
        "canvas",
        "Landroid/graphics/Canvas;",
        "ensureVerts",
        "need",
        "",
        "renderRadialLens",
        "bmp",
        "edgeTableX",
        "edgeTableY",
        "edgeMag",
        "edgeBandX",
        "edgeBandY",
        "edgeProfile",
        "magnify",
        "bandFraction",
        "edgeMap",
        "tbl",
        "t",
        "renderEdgeLens",
        "edgeDp",
        "holdMag",
        "holdBand",
        "holdTable",
        "buildHoldTable",
        "renderTopHoldLens",
        "renderGradientLens",
        "falloff",
        "renderTopLens",
        "Companion",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CHANGE_DETECT_STEP:I = 0xc

.field public static final Companion:Lio/nekohasekai/sagernet/widget/GlassEngine$Companion;

.field public static final MAX_SNAPSHOT_PIXELS:I = 0x222e0

.field private static final RENDER_PAINT:Landroid/graphics/Paint;

.field private static volatile capturing:Z


# instance fields
.field private final attachListener:Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;

.field private edgeBandX:F

.field private edgeBandY:F

.field private edgeMag:F

.field private edgeTableX:[F

.field private edgeTableY:[F

.field private first:Z

.field private holdBand:F

.field private holdMag:F

.field private holdTable:[F

.field private final host:Landroid/view/View;

.field private lastPixels:[I

.field private lensFlip:Z

.field private lensPower:F

.field private final location:[I

.field private volatile paused:Z

.field private pixels:[I

.field private snapshot:Landroid/graphics/Bitmap;

.field private final snapshotRect:Landroid/graphics/Rect;

.field private snapshotScale:F

.field private source:Landroid/view/View;

.field private final sourceLocation:[I

.field private topLensPower:F

.field private warpVerts:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/widget/GlassEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/widget/GlassEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->Companion:Lio/nekohasekai/sagernet/widget/GlassEngine$Companion;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->RENDER_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->lensPower:F

    .line 70
    iput v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->topLensPower:F

    .line 85
    iput v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotScale:F

    .line 104
    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotRect:Landroid/graphics/Rect;

    .line 109
    new-array v1, v0, [I

    iput-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->pixels:[I

    .line 110
    new-array v1, v0, [I

    iput-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->lastPixels:[I

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->first:Z

    .line 113
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->location:[I

    .line 114
    new-array v1, v1, [I

    iput-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->sourceLocation:[I

    .line 116
    new-instance v1, Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;-><init>(Lio/nekohasekai/sagernet/widget/GlassEngine;)V

    iput-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->attachListener:Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;

    .line 131
    nop

    .line 132
    iget-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    iget-object v2, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->attachListener:Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 133
    iget-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->attachListener:Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;

    iget-object v2, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/widget/GlassEngine$attachListener$1;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 134
    :cond_0
    nop

    .line 281
    new-array v1, v0, [F

    iput-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeTableX:[F

    .line 282
    new-array v1, v0, [F

    iput-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeTableY:[F

    .line 397
    new-array v0, v0, [F

    iput-object v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->holdTable:[F

    .line 41
    return-void
.end method

.method public static final synthetic access$getCapturing$cp()Z
    .locals 1

    .line 41
    sget-boolean v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->capturing:Z

    return v0
.end method

.method public static final synthetic access$getRENDER_PAINT$cp()Landroid/graphics/Paint;
    .locals 1

    .line 41
    sget-object v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->RENDER_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static final synthetic access$getSource$p(Lio/nekohasekai/sagernet/widget/GlassEngine;)Landroid/view/View;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/widget/GlassEngine;

    .line 41
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->source:Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic access$setCapturing$cp(Z)V
    .locals 0
    .param p0, "<set-?>"    # Z

    .line 41
    sput-boolean p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->capturing:Z

    return-void
.end method

.method public static final synthetic access$setFirst$p(Lio/nekohasekai/sagernet/widget/GlassEngine;Z)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/widget/GlassEngine;
    .param p1, "<set-?>"    # Z

    .line 41
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->first:Z

    return-void
.end method

.method public static final synthetic access$setSnapshot$p(Lio/nekohasekai/sagernet/widget/GlassEngine;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/widget/GlassEngine;
    .param p1, "<set-?>"    # Landroid/graphics/Bitmap;

    .line 41
    iput-object p1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshot:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$setSource$p(Lio/nekohasekai/sagernet/widget/GlassEngine;Landroid/view/View;)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/widget/GlassEngine;
    .param p1, "<set-?>"    # Landroid/view/View;

    .line 41
    iput-object p1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->source:Landroid/view/View;

    return-void
.end method

.method private final buildHoldTable(FF)[F
    .locals 13
    .param p1, "magnify"    # F
    .param p2, "bandFraction"    # F

    .line 407
    const v0, 0x3f8147ae    # 1.01f

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    .line 408
    .local v0, "M":F
    const v1, 0x3ba3d70a    # 0.005f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {p2, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    .line 416
    .local v1, "band":F
    const/16 v3, 0x1000

    .line 417
    .local v3, "gw":I
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [F

    .line 418
    .local v4, "g":[F
    const/4 v5, 0x1

    .line 419
    .local v5, "j":I
    :goto_0
    add-int/lit8 v6, v5, -0x1

    int-to-float v6, v6

    int-to-float v7, v3

    div-float/2addr v6, v7

    .line 420
    .local v6, "a":F
    int-to-float v7, v5

    int-to-float v8, v3

    div-float/2addr v7, v8

    .line 421
    .local v7, "b":F
    add-int/lit8 v8, v5, -0x1

    aget v8, v4, v8

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/widget/GlassEngine;->buildHoldTable$magOfW(FF)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v9, v10, v9

    invoke-static {v0, v7}, Lio/nekohasekai/sagernet/widget/GlassEngine;->buildHoldTable$magOfW(FF)F

    move-result v11

    div-float v11, v10, v11

    add-float/2addr v9, v11

    mul-float v9, v9, v2

    int-to-float v11, v3

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    aput v8, v4, v5

    .line 418
    .end local v6    # "a":F
    .end local v7    # "b":F
    if-eq v5, v3, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 423
    .end local v5    # "j":I
    :cond_0
    aget v2, v4, v3

    .line 424
    .local v2, "g1":F
    mul-float v5, v1, v2

    sub-float v5, v10, v5

    .line 438
    .local v5, "s1":F
    const/16 v6, 0x400

    .line 439
    .local v6, "N":I
    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [F

    .line 440
    .local v7, "out":[F
    const/4 v8, 0x0

    .line 441
    .local v8, "i":I
    :goto_1
    int-to-float v9, v8

    int-to-float v11, v6

    div-float/2addr v9, v11

    .line 442
    .local v9, "s":F
    cmpg-float v11, v9, v5

    if-gtz v11, :cond_1

    .line 444
    sub-float v11, v10, v1

    sub-float v12, v9, v5

    mul-float v12, v12, v0

    add-float/2addr v11, v12

    goto :goto_2

    .line 447
    :cond_1
    sub-float v11, v10, v9

    div-float/2addr v11, v1

    invoke-static {v2, v3, v4, v11}, Lio/nekohasekai/sagernet/widget/GlassEngine;->buildHoldTable$wOf(FI[FF)F

    move-result v11

    mul-float v11, v11, v1

    sub-float v11, v10, v11

    :goto_2
    aput v11, v7, v8

    .line 440
    .end local v9    # "s":F
    if-eq v8, v6, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 450
    .end local v8    # "i":I
    :cond_2
    return-object v7
.end method

.method private static final buildHoldTable$magOfW(FF)F
    .locals 5
    .param p0, "M"    # F
    .param p1, "w"    # F

    .line 411
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 412
    .local v0, "c":F
    mul-float v2, v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v0

    const/high16 v4, 0x40400000    # 3.0f

    sub-float/2addr v4, v3

    mul-float v2, v2, v4

    .line 413
    .local v2, "sm":F
    sub-float v3, p0, v1

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    return v3
.end method

.method private static final buildHoldTable$wOf(FI[FF)F
    .locals 7
    .param p0, "g1"    # F
    .param p1, "gw"    # I
    .param p2, "g"    # [F
    .param p3, "q"    # F

    .line 426
    const/4 v0, 0x0

    invoke-static {p3, v0, p0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    .line 427
    .local v1, "t":F
    cmpl-float v2, v1, p0

    if-ltz v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 428
    :cond_0
    const/4 v2, 0x0

    .line 429
    .local v2, "lo":I
    move v3, p1

    .line 430
    .local v3, "hi":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 431
    add-int v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v4, v4, 0x1

    .line 432
    .local v4, "mid":I
    aget v5, p2, v4

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "mid":I
    goto :goto_0

    .line 434
    :cond_2
    add-int/lit8 v4, v2, 0x1

    aget v4, p2, v4

    aget v5, p2, v2

    sub-float/2addr v4, v5

    .line 435
    .local v4, "den":F
    const v5, 0x358637bd    # 1.0E-6f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    aget v0, p2, v2

    sub-float v0, v1, v0

    div-float/2addr v0, v4

    .line 436
    .local v0, "fr":F
    :cond_3
    int-to-float v5, v2

    add-float/2addr v5, v0

    int-to-float v6, p1

    div-float/2addr v5, v6

    return v5
.end method

.method private final edgeMap([FF)F
    .locals 3
    .param p1, "tbl"    # [F
    .param p2, "t"    # F

    .line 342
    const/high16 v0, 0x44800000    # 1024.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x3ff

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 343
    .local v0, "i":I
    aget v1, p1, v0

    return v1
.end method

.method private final edgeProfile(FF)[F
    .locals 20
    .param p1, "magnify"    # F
    .param p2, "bandFraction"    # F

    .line 289
    const v0, 0x3f8147ae    # 1.01f

    move/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    .line 290
    .local v0, "M":F
    const v2, 0x3c03126f    # 0.008f

    const/high16 v3, 0x3f000000    # 0.5f

    move/from16 v4, p2

    invoke-static {v4, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    .line 291
    .local v2, "band":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v2

    .line 292
    .local v6, "yRise0":F
    const v7, 0x3f0ccccd    # 0.55f

    mul-float v7, v7, v2

    add-float/2addr v7, v6

    .line 293
    .local v7, "yPeak":F
    const/16 v8, 0x400

    .line 315
    .local v8, "N":I
    const/4 v9, 0x0

    .local v9, "lo":F
    div-float v9, v5, v0

    .line 316
    const/4 v10, 0x0

    .local v10, "hi":F
    const/high16 v10, 0x42800000    # 64.0f

    .line 317
    const/4 v11, 0x0

    :goto_0
    const/high16 v12, 0x40000000    # 2.0f

    const/16 v13, 0x30

    if-ge v11, v13, :cond_1

    move v13, v11

    .local v13, "it":I
    const/4 v14, 0x0

    .line 318
    .local v14, "$i$a$-repeat-GlassEngine$edgeProfile$1":I
    add-float v15, v9, v10

    div-float/2addr v15, v12

    .line 319
    .local v15, "mid":F
    invoke-static {v8, v6, v0, v7, v15}, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeProfile$area(IFFFF)F

    move-result v12

    cmpg-float v12, v12, v5

    if-gez v12, :cond_0

    move v9, v15

    goto :goto_1

    :cond_0
    move v10, v15

    .line 320
    :goto_1
    nop

    .line 317
    .end local v13    # "it":I
    .end local v14    # "$i$a$-repeat-GlassEngine$edgeProfile$1":I
    .end local v15    # "mid":F
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 321
    :cond_1
    add-float v11, v9, v10

    div-float/2addr v11, v12

    .line 322
    .local v11, "peak":F
    add-int/lit8 v12, v8, 0x1

    new-array v12, v12, [F

    .line 323
    .local v12, "p":[F
    const/4 v13, 0x1

    .line 324
    .local v13, "i":I
    :goto_2
    add-int/lit8 v14, v13, -0x1

    int-to-float v14, v14

    int-to-float v15, v8

    div-float/2addr v14, v15

    .line 325
    .local v14, "a":F
    int-to-float v15, v13

    int-to-float v5, v8

    div-float/2addr v15, v5

    .line 326
    .local v15, "b":F
    add-int/lit8 v5, v13, -0x1

    aget v5, v12, v5

    invoke-static {v6, v0, v7, v14, v11}, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeProfile$qAt(FFFFF)F

    move-result v17

    invoke-static {v6, v0, v7, v15, v11}, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeProfile$qAt(FFFFF)F

    move-result v18

    add-float v17, v17, v18

    mul-float v17, v17, v3

    int-to-float v3, v8

    div-float v17, v17, v3

    add-float v5, v5, v17

    aput v5, v12, v13

    .line 323
    .end local v14    # "a":F
    .end local v15    # "b":F
    if-eq v13, v8, :cond_2

    add-int/lit8 v13, v13, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    .line 329
    .end local v13    # "i":I
    :cond_2
    const/16 v3, 0x401

    new-array v5, v3, [F

    .line 330
    .local v5, "inv":[F
    const/4 v13, 0x0

    .line 331
    .local v13, "pi":I
    const/4 v14, 0x0

    .local v14, "ti":I
    :goto_3
    if-ge v14, v3, :cond_5

    .line 332
    int-to-float v15, v14

    const/high16 v17, 0x44800000    # 1024.0f

    div-float v15, v15, v17

    .line 333
    .local v15, "target":F
    :goto_4
    add-int/lit8 v3, v8, -0x1

    if-ge v13, v3, :cond_3

    add-int/lit8 v3, v13, 0x1

    aget v3, v12, v3

    cmpg-float v3, v3, v15

    if-gez v3, :cond_3

    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0x401

    goto :goto_4

    .line 334
    :cond_3
    add-int/lit8 v3, v13, 0x1

    aget v3, v12, v3

    aget v18, v12, v13

    sub-float v3, v3, v18

    .line 335
    .local v3, "denom":F
    const v18, 0x358637bd    # 1.0E-6f

    move/from16 v19, v0

    .end local v0    # "M":F
    .local v19, "M":F
    cmpl-float v18, v3, v18

    if-lez v18, :cond_4

    aget v18, v12, v13

    sub-float v18, v15, v18

    div-float v18, v18, v3

    goto :goto_5

    :cond_4
    const/16 v18, 0x0

    .line 336
    .local v18, "frac":F
    :goto_5
    int-to-float v0, v13

    add-float v0, v0, v18

    int-to-float v1, v8

    div-float/2addr v0, v1

    move/from16 v16, v2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .end local v2    # "band":F
    .local v16, "band":F
    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    aput v0, v5, v14

    .line 331
    .end local v3    # "denom":F
    .end local v15    # "target":F
    .end local v18    # "frac":F
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    move/from16 v2, v16

    move/from16 v0, v19

    const/16 v3, 0x401

    goto :goto_3

    .line 338
    .end local v14    # "ti":I
    .end local v16    # "band":F
    .end local v19    # "M":F
    .restart local v0    # "M":F
    .restart local v2    # "band":F
    :cond_5
    return-object v5
.end method

.method private static final edgeProfile$area(IFFFF)F
    .locals 6
    .param p0, "N"    # I
    .param p1, "yRise0"    # F
    .param p2, "M"    # F
    .param p3, "yPeak"    # F
    .param p4, "peak"    # F

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "acc":F
    const/4 v1, 0x1

    .local v1, "i":I
    if-gt v1, p0, :cond_0

    .line 308
    :goto_0
    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    int-to-float v3, p0

    div-float/2addr v2, v3

    .line 309
    .local v2, "a":F
    int-to-float v3, v1

    int-to-float v4, p0

    div-float/2addr v3, v4

    .line 310
    .local v3, "b":F
    invoke-static {p1, p2, p3, v2, p4}, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeProfile$qAt(FFFFF)F

    move-result v4

    invoke-static {p1, p2, p3, v3, p4}, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeProfile$qAt(FFFFF)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    int-to-float v5, p0

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 307
    .end local v2    # "a":F
    .end local v3    # "b":F
    if-eq v1, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private static final edgeProfile$qAt(FFFFF)F
    .locals 6
    .param p0, "yRise0"    # F
    .param p1, "M"    # F
    .param p2, "yPeak"    # F
    .param p3, "y"    # F
    .param p4, "peak"    # F

    .line 295
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p3, p0

    if-gez v1, :cond_0

    div-float/2addr v0, p1

    return v0

    .line 296
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x0

    cmpg-float v4, p3, p2

    if-gez v4, :cond_1

    .line 297
    sub-float v4, p3, p0

    sub-float v5, p2, p0

    div-float/2addr v4, v5

    invoke-static {v4, v3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    .line 298
    .local v3, "t":F
    mul-float v4, v3, v3

    mul-float v1, v1, v3

    sub-float/2addr v2, v1

    mul-float v4, v4, v2

    .line 299
    .local v4, "sm":F
    div-float v1, v0, p1

    div-float/2addr v0, p1

    sub-float v0, p4, v0

    mul-float v0, v0, v4

    add-float/2addr v1, v0

    return v1

    .line 301
    .end local v3    # "t":F
    .end local v4    # "sm":F
    :cond_1
    sub-float v4, p3, p2

    sub-float v5, v0, p2

    div-float/2addr v4, v5

    invoke-static {v4, v3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    .line 302
    .restart local v3    # "t":F
    mul-float v4, v3, v3

    mul-float v1, v1, v3

    sub-float/2addr v2, v1

    mul-float v4, v4, v2

    .line 303
    .restart local v4    # "sm":F
    sub-float/2addr v0, p4

    mul-float v0, v0, v4

    add-float/2addr v0, p4

    return v0
.end method

.method private final ensureVerts(I)V
    .locals 1
    .param p1, "need"    # I

    .line 241
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [F

    iput-object v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    .line 242
    :cond_0
    return-void
.end method

.method private final renderRadialLens(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 251
    .local v1, "w":I
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 252
    .local v2, "h":I
    if-lez v1, :cond_5

    if-gtz v2, :cond_0

    goto/16 :goto_3

    .line 253
    :cond_0
    int-to-float v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 254
    .local v3, "cx":F
    int-to-float v5, v2

    div-float/2addr v5, v4

    .line 255
    .local v5, "cy":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    .line 256
    .local v6, "radius":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v8, v6, v7

    if-gez v8, :cond_1

    return-void

    .line 257
    :cond_1
    const/16 v8, 0x28

    .line 258
    .local v8, "grid":I
    add-int/lit8 v18, v8, 0x1

    .line 259
    .local v18, "count":I
    mul-int v9, v18, v18

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v0, v9}, Lio/nekohasekai/sagernet/widget/GlassEngine;->ensureVerts(I)V

    .line 260
    iget v9, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->lensPower:F

    div-float v19, v7, v9

    .line 261
    .local v19, "exp":F
    int-to-float v9, v8

    div-float v20, v7, v9

    .line 262
    .local v20, "step":F
    const/4 v9, 0x0

    .line 263
    .local v9, "idx":I
    const/4 v10, 0x0

    .line 264
    .local v10, "gy":I
    :goto_0
    int-to-float v11, v10

    mul-float v11, v11, v20

    mul-float v11, v11, v4

    sub-float/2addr v11, v7

    .line 265
    .local v11, "qy":F
    const/4 v12, 0x0

    .line 266
    .local v12, "gx":I
    :goto_1
    int-to-float v13, v12

    mul-float v13, v13, v20

    mul-float v13, v13, v4

    sub-float/2addr v13, v7

    .line 267
    .local v13, "qx":F
    mul-float v14, v13, v13

    mul-float v15, v11, v11

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 268
    .local v14, "s":F
    const/4 v15, 0x0

    cmpl-float v16, v14, v15

    if-lez v16, :cond_2

    .line 269
    move/from16 v21, v8

    .end local v8    # "grid":I
    .local v21, "grid":I
    float-to-double v7, v14

    const/4 v15, 0x1

    int-to-float v15, v15

    sub-float v15, v19, v15

    move/from16 v22, v5

    .end local v5    # "cy":F
    .local v22, "cy":F
    float-to-double v4, v15

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v15, v4

    goto :goto_2

    .line 270
    .end local v21    # "grid":I
    .end local v22    # "cy":F
    .restart local v5    # "cy":F
    .restart local v8    # "grid":I
    :cond_2
    move/from16 v22, v5

    move/from16 v21, v8

    .line 268
    .end local v5    # "cy":F
    .end local v8    # "grid":I
    .restart local v21    # "grid":I
    .restart local v22    # "cy":F
    :goto_2
    move v4, v15

    .line 271
    .local v4, "scale":F
    iget-object v5, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    add-int/lit8 v7, v9, 0x1

    .end local v9    # "idx":I
    .local v7, "idx":I
    mul-float v8, v13, v4

    mul-float v8, v8, v6

    add-float/2addr v8, v3

    aput v8, v5, v9

    .line 272
    iget-object v5, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "idx":I
    .local v8, "idx":I
    mul-float v9, v11, v4

    mul-float v9, v9, v6

    add-float v9, v22, v9

    aput v9, v5, v7

    .line 265
    .end local v4    # "scale":F
    .end local v13    # "qx":F
    .end local v14    # "s":F
    move/from16 v4, v21

    .end local v21    # "grid":I
    .local v4, "grid":I
    if-eq v12, v4, :cond_3

    add-int/lit8 v12, v12, 0x1

    move v9, v8

    move/from16 v5, v22

    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v4

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_1

    .line 263
    .end local v11    # "qy":F
    .end local v12    # "gx":I
    :cond_3
    if-eq v10, v4, :cond_4

    add-int/lit8 v10, v10, 0x1

    move v9, v8

    move/from16 v5, v22

    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v4

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_0

    .line 275
    .end local v10    # "gy":I
    :cond_4
    iget-object v13, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    const/16 v16, 0x0

    sget-object v17, Lio/nekohasekai/sagernet/widget/GlassEngine;->RENDER_PAINT:Landroid/graphics/Paint;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move v11, v4

    move v12, v4

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 276
    return-void

    .line 252
    .end local v3    # "cx":F
    .end local v4    # "grid":I
    .end local v6    # "radius":F
    .end local v8    # "idx":I
    .end local v18    # "count":I
    .end local v19    # "exp":F
    .end local v20    # "step":F
    .end local v22    # "cy":F
    :cond_5
    :goto_3
    return-void
.end method

.method private final renderTopLens(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 544
    .local v1, "w":I
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 545
    .local v2, "h":I
    if-lez v1, :cond_5

    if-gtz v2, :cond_0

    move/from16 v17, v2

    goto/16 :goto_4

    .line 546
    :cond_0
    const/16 v12, 0x48

    .line 547
    .local v12, "gridX":I
    const/16 v13, 0x14

    .line 548
    .local v13, "gridY":I
    add-int/lit8 v14, v12, 0x1

    .line 549
    .local v14, "countX":I
    add-int/lit8 v15, v13, 0x1

    .line 550
    .local v15, "countY":I
    mul-int v3, v14, v15

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Lio/nekohasekai/sagernet/widget/GlassEngine;->ensureVerts(I)V

    .line 551
    iget v3, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->topLensPower:F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v11, v4, v3

    .line 552
    .local v11, "exp":F
    const/4 v3, 0x0

    .line 553
    .local v3, "idx":I
    const/4 v5, 0x0

    .line 555
    .local v5, "gy":I
    :goto_0
    iget-boolean v6, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->lensFlip:Z

    if-eqz v6, :cond_1

    .line 556
    int-to-float v6, v5

    int-to-float v7, v13

    div-float/2addr v6, v7

    sub-float v6, v4, v6

    goto :goto_1

    .line 558
    :cond_1
    int-to-float v6, v5

    int-to-float v7, v13

    div-float/2addr v6, v7

    .line 555
    :goto_1
    nop

    .line 560
    .local v6, "sy":F
    float-to-double v7, v6

    float-to-double v9, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 562
    .local v7, "raw":F
    move v8, v7

    .line 563
    .local v8, "dyN":F
    iget-boolean v9, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->lensFlip:Z

    if-eqz v9, :cond_2

    int-to-float v9, v2

    sub-float v10, v4, v8

    mul-float v9, v9, v10

    goto :goto_2

    :cond_2
    int-to-float v9, v2

    mul-float v9, v9, v8

    .line 564
    .local v9, "dy":F
    :goto_2
    const/4 v10, 0x0

    .line 565
    .local v10, "gx":I
    :goto_3
    int-to-float v4, v10

    move/from16 v17, v2

    .end local v2    # "h":I
    .local v17, "h":I
    int-to-float v2, v12

    div-float/2addr v4, v2

    int-to-float v2, v1

    mul-float v4, v4, v2

    .line 566
    .local v4, "dx":F
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    add-int/lit8 v18, v3, 0x1

    .end local v3    # "idx":I
    .local v18, "idx":I
    aput v4, v2, v3

    .line 567
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "idx":I
    .local v19, "idx":I
    aput v9, v2, v18

    .line 564
    .end local v4    # "dx":F
    if-eq v10, v12, :cond_3

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v17

    move/from16 v3, v19

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    .line 553
    .end local v6    # "sy":F
    .end local v7    # "raw":F
    .end local v8    # "dyN":F
    .end local v9    # "dy":F
    .end local v10    # "gx":I
    :cond_3
    if-eq v5, v13, :cond_4

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v17

    move/from16 v3, v19

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    .line 570
    .end local v5    # "gy":I
    :cond_4
    iget-object v7, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    const/4 v10, 0x0

    sget-object v2, Lio/nekohasekai/sagernet/widget/GlassEngine;->RENDER_PAINT:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v12

    move v6, v13

    move/from16 v16, v11

    .end local v11    # "exp":F
    .local v16, "exp":F
    move-object v11, v2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 571
    return-void

    .line 545
    .end local v12    # "gridX":I
    .end local v13    # "gridY":I
    .end local v14    # "countX":I
    .end local v15    # "countY":I
    .end local v16    # "exp":F
    .end local v17    # "h":I
    .end local v19    # "idx":I
    .restart local v2    # "h":I
    :cond_5
    move/from16 v17, v2

    .end local v2    # "h":I
    .restart local v17    # "h":I
    :goto_4
    return-void
.end method


# virtual methods
.method public final getLensFlip()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->lensFlip:Z

    return v0
.end method

.method public final getLensPower()F
    .locals 1

    .line 63
    iget v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->lensPower:F

    return v0
.end method

.method public final getPaused()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->paused:Z

    return v0
.end method

.method public final getSnapshotScale()F
    .locals 1

    .line 85
    iget v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotScale:F

    return v0
.end method

.method public final getTopLensPower()F
    .locals 1

    .line 70
    iget v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->topLensPower:F

    return v0
.end method

.method public onPreDraw()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->paused:Z

    if-nez v0, :cond_done

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/widget/GlassEngine;->refresh()V

    .line 138
    :cond_done
    const/4 v0, 0x1

    return v0
.end method

.method public final refresh()V
    .locals 29

    .line 146
    move-object/from16 v1, p0

    iget-object v2, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    .line 147
    .local v2, "h":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 148
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 149
    .local v4, "height":I
    iget-object v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->source:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v5, v0

    .line 150
    .local v5, "src":Landroid/view/View;
    if-lez v3, :cond_d

    if-gtz v4, :cond_1

    move-object v8, v2

    move/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_a

    .line 151
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v6, 0x0

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_2

    move-object v8, v2

    move/from16 v18, v3

    move/from16 v17, v4

    goto/16 :goto_9

    .line 153
    :cond_2
    iget-object v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->location:[I

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 154
    iget-object v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->sourceLocation:[I

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 155
    iget-object v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->location:[I

    const/4 v6, 0x0

    aget v0, v0, v6

    iget-object v7, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->sourceLocation:[I

    aget v7, v7, v6

    sub-int v7, v0, v7

    .line 156
    .local v7, "left":I
    iget-object v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->location:[I

    const/4 v8, 0x1

    aget v0, v0, v8

    iget-object v9, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->sourceLocation:[I

    aget v9, v9, v8

    sub-int v9, v0, v9

    .line 160
    .local v9, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v7, v6, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v10

    .line 161
    .local v10, "cropL":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v9, v6, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v11

    .line 162
    .local v11, "cropT":I
    add-int v0, v7, v3

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-static {v0, v6, v12}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v12

    .line 163
    .local v12, "cropR":I
    add-int v0, v9, v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-static {v0, v6, v13}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v13

    .line 164
    .local v13, "cropB":I
    if-le v12, v10, :cond_b

    if-gt v13, v11, :cond_3

    move-object v8, v2

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v19, v12

    move/from16 v20, v13

    goto/16 :goto_8

    .line 166
    :cond_3
    sub-int v0, v12, v10

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 167
    .local v14, "bw":I
    sub-int v0, v13, v11

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 168
    .local v15, "bh":I
    int-to-float v0, v14

    iget v6, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotScale:F

    mul-float v0, v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 169
    .local v0, "sw":I
    int-to-float v6, v15

    iget v8, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotScale:F

    mul-float v6, v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v8, 0x1

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 175
    .local v6, "sh":I
    move-object v8, v2

    move/from16 v18, v3

    .end local v2    # "h":Landroid/view/View;
    .end local v3    # "w":I
    .local v8, "h":Landroid/view/View;
    .local v18, "w":I
    int-to-long v2, v0

    move/from16 v19, v12

    move/from16 v20, v13

    .end local v12    # "cropR":I
    .end local v13    # "cropB":I
    .local v19, "cropR":I
    .local v20, "cropB":I
    int-to-long v12, v6

    mul-long v2, v2, v12

    const-wide/32 v12, 0x222e0

    cmp-long v21, v2, v12

    if-lez v21, :cond_4

    .line 176
    int-to-double v2, v0

    int-to-double v12, v6

    mul-double v2, v2, v12

    const v12, 0x222e0

    int-to-double v12, v12

    div-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 177
    .local v2, "f":D
    int-to-double v12, v0

    div-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v13, v12

    const/4 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 178
    int-to-double v12, v6

    div-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v13, v12

    const/4 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v2, v0

    goto :goto_0

    .line 175
    .end local v2    # "f":D
    :cond_4
    move v2, v0

    .line 180
    .end local v0    # "sw":I
    .local v2, "sw":I
    :goto_0
    iget v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotScale:F

    int-to-float v3, v2

    int-to-float v12, v14

    div-float/2addr v3, v12

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 181
    .local v3, "scale":F
    iget-object v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshot:Landroid/graphics/Bitmap;

    .line 182
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ne v12, v2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-eq v12, v6, :cond_5

    goto :goto_1

    :cond_5
    move-object v13, v0

    const/4 v12, 0x1

    goto :goto_2

    .line 183
    :cond_6
    :goto_1
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    iput-object v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshot:Landroid/graphics/Bitmap;

    .line 185
    mul-int v12, v2, v6

    new-array v12, v12, [I

    iput-object v12, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->pixels:[I

    .line 186
    mul-int v12, v2, v6

    new-array v12, v12, [I

    iput-object v12, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->lastPixels:[I

    .line 187
    const/4 v12, 0x1

    iput-boolean v12, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->first:Z

    move-object v13, v0

    .line 190
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .local v13, "bmp":Landroid/graphics/Bitmap;
    :goto_2
    sput-boolean v12, Lio/nekohasekai/sagernet/widget/GlassEngine;->capturing:Z

    .line 191
    nop

    .line 192
    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    .local v0, "c":Landroid/graphics/Canvas;
    neg-int v12, v10

    int-to-float v12, v12

    mul-float v12, v12, v3

    move/from16 v17, v4

    .end local v4    # "height":I
    .local v17, "height":I
    neg-int v4, v11

    int-to-float v4, v4

    mul-float v4, v4, v3

    :try_start_1
    invoke-virtual {v0, v12, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 195
    invoke-virtual {v5, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v0    # "c":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    sput-boolean v4, Lio/nekohasekai/sagernet/widget/GlassEngine;->capturing:Z

    .line 198
    nop

    .line 200
    iget-object v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->pixels:[I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v13

    move-object/from16 v22, v0

    move/from16 v24, v2

    move/from16 v27, v2

    move/from16 v28, v6

    invoke-virtual/range {v21 .. v28}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 201
    iget-boolean v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->first:Z

    .line 202
    .local v0, "changed":Z
    if-nez v0, :cond_9

    .line 206
    const/4 v4, 0x0

    .line 207
    .local v4, "i":I
    const/16 v12, 0xc

    .line 208
    .local v12, "step":I
    :goto_3
    move/from16 v21, v0

    .end local v0    # "changed":Z
    .local v21, "changed":Z
    iget-object v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->pixels:[I

    array-length v0, v0

    if-ge v4, v0, :cond_8

    .line 209
    iget-object v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->pixels:[I

    aget v0, v0, v4

    move/from16 v22, v2

    .end local v2    # "sw":I
    .local v22, "sw":I
    iget-object v2, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->lastPixels:[I

    aget v2, v2, v4

    if-eq v0, v2, :cond_7

    .line 210
    const/4 v0, 0x1

    .line 211
    .end local v21    # "changed":Z
    .restart local v0    # "changed":Z
    goto :goto_5

    .line 213
    .end local v0    # "changed":Z
    .restart local v21    # "changed":Z
    :cond_7
    add-int/2addr v4, v12

    move/from16 v0, v21

    move/from16 v2, v22

    goto :goto_3

    .line 208
    .end local v22    # "sw":I
    .restart local v2    # "sw":I
    :cond_8
    move/from16 v22, v2

    .end local v2    # "sw":I
    .restart local v22    # "sw":I
    goto :goto_4

    .line 202
    .end local v4    # "i":I
    .end local v12    # "step":I
    .end local v21    # "changed":Z
    .end local v22    # "sw":I
    .restart local v0    # "changed":Z
    .restart local v2    # "sw":I
    :cond_9
    move/from16 v21, v0

    move/from16 v22, v2

    .line 216
    .end local v0    # "changed":Z
    .end local v2    # "sw":I
    .restart local v21    # "changed":Z
    .restart local v22    # "sw":I
    :goto_4
    move/from16 v0, v21

    .end local v21    # "changed":Z
    .restart local v0    # "changed":Z
    :goto_5
    if-eqz v0, :cond_a

    .line 217
    iget-object v2, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->pixels:[I

    iget-object v4, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->lastPixels:[I

    iget-object v12, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->pixels:[I

    array-length v12, v12

    move/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "scale":F
    .local v21, "scale":F
    invoke-static {v2, v3, v4, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iput-boolean v3, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->first:Z

    .line 219
    iget-object v2, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotRect:Landroid/graphics/Rect;

    .line 220
    sub-int v3, v10, v7

    sub-int v4, v11, v9

    .line 221
    sub-int v12, v19, v7

    move/from16 v16, v0

    .end local v0    # "changed":Z
    .local v16, "changed":Z
    sub-int v0, v20, v9

    .line 219
    invoke-virtual {v2, v3, v4, v12, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    iget-object v0, v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 216
    .end local v16    # "changed":Z
    .end local v21    # "scale":F
    .restart local v0    # "changed":Z
    .restart local v3    # "scale":F
    :cond_a
    move/from16 v16, v0

    move/from16 v21, v3

    .line 225
    .end local v0    # "changed":Z
    .end local v3    # "scale":F
    .restart local v16    # "changed":Z
    .restart local v21    # "scale":F
    :goto_6
    return-void

    .line 197
    .end local v16    # "changed":Z
    .end local v21    # "scale":F
    .end local v22    # "sw":I
    .restart local v2    # "sw":I
    .restart local v3    # "scale":F
    :catchall_0
    move-exception v0

    move/from16 v22, v2

    move/from16 v21, v3

    .end local v2    # "sw":I
    .end local v3    # "scale":F
    .restart local v21    # "scale":F
    .restart local v22    # "sw":I
    goto :goto_7

    .end local v17    # "height":I
    .end local v21    # "scale":F
    .end local v22    # "sw":I
    .restart local v2    # "sw":I
    .restart local v3    # "scale":F
    .local v4, "height":I
    :catchall_1
    move-exception v0

    move/from16 v22, v2

    move/from16 v21, v3

    move/from16 v17, v4

    .end local v2    # "sw":I
    .end local v3    # "scale":F
    .end local v4    # "height":I
    .restart local v17    # "height":I
    .restart local v21    # "scale":F
    .restart local v22    # "sw":I
    :goto_7
    const/4 v2, 0x0

    sput-boolean v2, Lio/nekohasekai/sagernet/widget/GlassEngine;->capturing:Z

    throw v0

    .line 164
    .end local v6    # "sh":I
    .end local v8    # "h":Landroid/view/View;
    .end local v14    # "bw":I
    .end local v15    # "bh":I
    .end local v17    # "height":I
    .end local v18    # "w":I
    .end local v19    # "cropR":I
    .end local v20    # "cropB":I
    .end local v21    # "scale":F
    .end local v22    # "sw":I
    .local v2, "h":Landroid/view/View;
    .local v3, "w":I
    .restart local v4    # "height":I
    .local v12, "cropR":I
    .local v13, "cropB":I
    :cond_b
    move-object v8, v2

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v19, v12

    move/from16 v20, v13

    .end local v2    # "h":Landroid/view/View;
    .end local v3    # "w":I
    .end local v4    # "height":I
    .end local v12    # "cropR":I
    .end local v13    # "cropB":I
    .restart local v8    # "h":Landroid/view/View;
    .restart local v17    # "height":I
    .restart local v18    # "w":I
    .restart local v19    # "cropR":I
    .restart local v20    # "cropB":I
    :goto_8
    return-void

    .line 151
    .end local v7    # "left":I
    .end local v8    # "h":Landroid/view/View;
    .end local v9    # "top":I
    .end local v10    # "cropL":I
    .end local v11    # "cropT":I
    .end local v17    # "height":I
    .end local v18    # "w":I
    .end local v19    # "cropR":I
    .end local v20    # "cropB":I
    .restart local v2    # "h":Landroid/view/View;
    .restart local v3    # "w":I
    .restart local v4    # "height":I
    :cond_c
    move-object v8, v2

    move/from16 v18, v3

    move/from16 v17, v4

    .end local v2    # "h":Landroid/view/View;
    .end local v3    # "w":I
    .end local v4    # "height":I
    .restart local v8    # "h":Landroid/view/View;
    .restart local v17    # "height":I
    .restart local v18    # "w":I
    :goto_9
    return-void

    .line 150
    .end local v8    # "h":Landroid/view/View;
    .end local v17    # "height":I
    .end local v18    # "w":I
    .restart local v2    # "h":Landroid/view/View;
    .restart local v3    # "w":I
    .restart local v4    # "height":I
    :cond_d
    move-object v8, v2

    move/from16 v18, v3

    move/from16 v17, v4

    .end local v2    # "h":Landroid/view/View;
    .end local v3    # "w":I
    .end local v4    # "height":I
    .restart local v8    # "h":Landroid/view/View;
    .restart local v17    # "height":I
    .restart local v18    # "w":I
    :goto_a
    return-void
.end method

.method public final render(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshot:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 230
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 231
    :cond_1
    iget v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->topLensPower:F

    const v2, 0x3f8020c5    # 1.001f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 232
    invoke-direct {p0, p1, v0}, Lio/nekohasekai/sagernet/widget/GlassEngine;->renderTopLens(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 233
    :cond_2
    iget v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->lensPower:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 234
    invoke-direct {p0, p1, v0}, Lio/nekohasekai/sagernet/widget/GlassEngine;->renderRadialLens(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotRect:Landroid/graphics/Rect;

    sget-object v2, Lio/nekohasekai/sagernet/widget/GlassEngine;->RENDER_PAINT:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 238
    :goto_0
    return-void
.end method

.method public final renderEdgeLens(Landroid/graphics/Canvas;FF)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "magnify"    # F
    .param p3, "edgeDp"    # F

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "canvas"

    move-object/from16 v12, p1

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v4, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshot:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    return-void

    .line 352
    .local v4, "bmp":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 353
    :cond_1
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 354
    .local v2, "w":I
    iget-object v3, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 355
    .local v13, "h":I
    if-lez v2, :cond_11

    if-gtz v13, :cond_2

    move/from16 v21, v2

    goto/16 :goto_7

    .line 356
    :cond_2
    int-to-float v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v14, v3, v5

    .line 357
    .local v14, "hw":F
    int-to-float v3, v13

    div-float v15, v3, v5

    .line 358
    .local v15, "hh":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v6, v14, v3

    if-ltz v6, :cond_10

    cmpg-float v6, v15, v3

    if-gez v6, :cond_3

    move/from16 v21, v2

    goto/16 :goto_6

    .line 359
    :cond_3
    iget-object v6, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v11, v6, Landroid/util/DisplayMetrics;->density:F

    .line 360
    .local v11, "density":F
    mul-float v6, p3, v11

    invoke-static {v6, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v16

    .line 361
    .local v16, "bandPx":F
    div-float v6, v16, v14

    const v7, 0x3c03126f    # 0.008f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v6, v7, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v10

    .line 362
    .local v10, "bandX":F
    div-float v6, v16, v15

    invoke-static {v6, v7, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v9

    .line 363
    .local v9, "bandY":F
    iget v6, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeMag:F

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmpg-float v6, v6, v1

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_6

    iget v6, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeBandX:F

    cmpg-float v6, v6, v10

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_7

    .line 364
    :cond_6
    iput v1, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeMag:F

    .line 365
    iput v10, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeBandX:F

    .line 366
    invoke-direct {v0, v1, v10}, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeProfile(FF)[F

    move-result-object v6

    iput-object v6, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeTableX:[F

    .line 368
    :cond_7
    iget v6, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeMag:F

    cmpg-float v6, v6, v1

    if-nez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_a

    iget v6, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeBandY:F

    cmpg-float v6, v6, v9

    if-nez v6, :cond_9

    const/4 v7, 0x1

    :cond_9
    if-nez v7, :cond_b

    .line 369
    :cond_a
    iput v1, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeMag:F

    .line 370
    iput v9, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeBandY:F

    .line 371
    invoke-direct {v0, v1, v9}, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeProfile(FF)[F

    move-result-object v6

    iput-object v6, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeTableY:[F

    .line 373
    :cond_b
    iget-object v6, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeTableX:[F

    array-length v6, v6

    if-eqz v6, :cond_f

    iget-object v6, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeTableY:[F

    array-length v6, v6

    if-nez v6, :cond_c

    move/from16 v21, v2

    move/from16 v22, v9

    move/from16 v19, v10

    move v1, v11

    goto/16 :goto_5

    .line 374
    :cond_c
    const/16 v8, 0x48

    .line 375
    .local v8, "grid":I
    add-int/lit8 v17, v8, 0x1

    .line 376
    .local v17, "count":I
    mul-int v6, v17, v17

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v0, v6}, Lio/nekohasekai/sagernet/widget/GlassEngine;->ensureVerts(I)V

    .line 377
    int-to-float v6, v8

    div-float v18, v3, v6

    .line 378
    .local v18, "step":F
    const/4 v6, 0x0

    .line 379
    .local v6, "idx":I
    const/4 v7, 0x0

    .line 380
    .local v7, "gy":I
    :goto_3
    int-to-float v3, v7

    mul-float v3, v3, v18

    mul-float v3, v3, v5

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v3, v3, v19

    .line 381
    .local v3, "ySrc":F
    iget-object v5, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeTableY:[F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {v0, v5, v1}, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeMap([FF)F

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    mul-float v1, v1, v5

    .line 382
    .local v1, "ty":F
    const/4 v5, 0x0

    .line 383
    .local v5, "gx":I
    :goto_4
    move/from16 v21, v2

    .end local v2    # "w":I
    .local v21, "w":I
    int-to-float v2, v5

    mul-float v2, v2, v18

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v2, v2, v20

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v2, v2, v19

    .line 384
    .local v2, "xSrc":F
    move/from16 v22, v3

    .end local v3    # "ySrc":F
    .local v22, "ySrc":F
    iget-object v3, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeTableX:[F

    move/from16 v23, v9

    .end local v9    # "bandY":F
    .local v23, "bandY":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-direct {v0, v3, v9}, Lio/nekohasekai/sagernet/widget/GlassEngine;->edgeMap([FF)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v9

    mul-float v3, v3, v9

    .line 385
    .local v3, "tx":F
    iget-object v9, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    add-int/lit8 v24, v6, 0x1

    .end local v6    # "idx":I
    .local v24, "idx":I
    mul-float v25, v3, v14

    add-float v25, v14, v25

    aput v25, v9, v6

    .line 386
    iget-object v6, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    add-int/lit8 v25, v24, 0x1

    .end local v24    # "idx":I
    .local v25, "idx":I
    mul-float v9, v1, v15

    add-float/2addr v9, v15

    aput v9, v6, v24

    .line 382
    .end local v2    # "xSrc":F
    .end local v3    # "tx":F
    if-eq v5, v8, :cond_d

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v9, v23

    move/from16 v6, v25

    goto :goto_4

    .line 379
    .end local v1    # "ty":F
    .end local v5    # "gx":I
    .end local v22    # "ySrc":F
    :cond_d
    if-eq v7, v8, :cond_e

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p2

    move/from16 v2, v21

    move/from16 v9, v23

    move/from16 v6, v25

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_3

    .line 389
    .end local v7    # "gy":I
    :cond_e
    iget-object v7, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    const/4 v1, 0x0

    sget-object v2, Lio/nekohasekai/sagernet/widget/GlassEngine;->RENDER_PAINT:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p1

    move v5, v8

    move v6, v8

    move/from16 v20, v8

    .end local v8    # "grid":I
    .local v20, "grid":I
    move v8, v9

    move/from16 v22, v23

    .end local v23    # "bandY":F
    .local v22, "bandY":F
    move-object/from16 v9, v19

    move/from16 v19, v10

    .end local v10    # "bandX":F
    .local v19, "bandX":F
    move v10, v1

    move v1, v11

    .end local v11    # "density":F
    .local v1, "density":F
    move-object v11, v2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 390
    return-void

    .line 373
    .end local v1    # "density":F
    .end local v17    # "count":I
    .end local v18    # "step":F
    .end local v19    # "bandX":F
    .end local v20    # "grid":I
    .end local v21    # "w":I
    .end local v22    # "bandY":F
    .end local v25    # "idx":I
    .local v2, "w":I
    .restart local v9    # "bandY":F
    .restart local v10    # "bandX":F
    .restart local v11    # "density":F
    :cond_f
    move/from16 v21, v2

    move/from16 v22, v9

    move/from16 v19, v10

    move v1, v11

    .end local v2    # "w":I
    .end local v9    # "bandY":F
    .end local v10    # "bandX":F
    .end local v11    # "density":F
    .restart local v1    # "density":F
    .restart local v19    # "bandX":F
    .restart local v21    # "w":I
    .restart local v22    # "bandY":F
    :goto_5
    return-void

    .line 358
    .end local v1    # "density":F
    .end local v16    # "bandPx":F
    .end local v19    # "bandX":F
    .end local v21    # "w":I
    .end local v22    # "bandY":F
    .restart local v2    # "w":I
    :cond_10
    move/from16 v21, v2

    .end local v2    # "w":I
    .restart local v21    # "w":I
    :goto_6
    return-void

    .line 355
    .end local v14    # "hw":F
    .end local v15    # "hh":F
    .end local v21    # "w":I
    .restart local v2    # "w":I
    :cond_11
    move/from16 v21, v2

    .end local v2    # "w":I
    .restart local v21    # "w":I
    :goto_7
    return-void
.end method

.method public final renderGradientLens(Landroid/graphics/Canvas;F)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "falloff"    # F

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "canvas"

    move-object/from16 v12, p1

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v4, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshot:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    return-void

    .line 503
    .local v4, "bmp":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 504
    :cond_1
    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    .line 505
    invoke-virtual/range {p0 .. p1}, Lio/nekohasekai/sagernet/widget/GlassEngine;->render(Landroid/graphics/Canvas;)V

    .line 506
    return-void

    .line 508
    :cond_2
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 509
    .local v2, "w":I
    iget-object v3, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 510
    .local v13, "h":I
    if-lez v2, :cond_9

    if-gtz v13, :cond_3

    move/from16 v23, v2

    goto/16 :goto_4

    .line 511
    :cond_3
    int-to-float v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v14, v3, v5

    .line 512
    .local v14, "cx":F
    int-to-float v3, v13

    div-float v15, v3, v5

    .line 513
    .local v15, "cy":F
    int-to-float v3, v2

    div-float v16, v3, v5

    .line 514
    .local v16, "hw":F
    int-to-float v3, v13

    div-float v17, v3, v5

    .line 515
    .local v17, "hh":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v6, v16, v3

    if-ltz v6, :cond_8

    cmpg-float v6, v17, v3

    if-gez v6, :cond_4

    move/from16 v23, v2

    goto/16 :goto_3

    .line 516
    :cond_4
    const/16 v11, 0x40

    .line 517
    .local v11, "grid":I
    add-int/lit8 v18, v11, 0x1

    .line 518
    .local v18, "count":I
    mul-int v6, v18, v18

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v0, v6}, Lio/nekohasekai/sagernet/widget/GlassEngine;->ensureVerts(I)V

    .line 519
    int-to-float v6, v11

    div-float v19, v3, v6

    .line 520
    .local v19, "step":F
    const v6, 0x3d4ccccd    # 0.05f

    const v7, 0x3f7ae148    # 0.98f

    invoke-static {v1, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v20

    .line 521
    .local v20, "exp":F
    const/4 v6, 0x0

    .line 522
    .local v6, "idx":I
    const/4 v7, 0x0

    .line 523
    .local v7, "gy":I
    :goto_0
    int-to-float v8, v7

    mul-float v8, v8, v19

    mul-float v8, v8, v5

    sub-float/2addr v8, v3

    .line 524
    .local v8, "qy":F
    const/4 v9, 0x0

    .line 525
    .local v9, "gx":I
    :goto_1
    int-to-float v10, v9

    mul-float v10, v10, v19

    mul-float v10, v10, v5

    sub-float/2addr v10, v3

    .line 526
    .local v10, "qx":F
    mul-float v21, v10, v10

    mul-float v22, v8, v8

    add-float v3, v21, v22

    move/from16 v22, v6

    .end local v6    # "idx":I
    .local v22, "idx":I
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 527
    .local v3, "s":F
    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-lez v6, :cond_5

    .line 528
    float-to-double v5, v3

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float v1, v20, v1

    move/from16 v23, v2

    .end local v2    # "w":I
    .local v23, "w":I
    float-to-double v1, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v5, v1

    goto :goto_2

    .line 529
    .end local v23    # "w":I
    .restart local v2    # "w":I
    :cond_5
    move/from16 v23, v2

    .line 527
    .end local v2    # "w":I
    .restart local v23    # "w":I
    :goto_2
    move v1, v5

    .line 530
    .local v1, "scale":F
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    add-int/lit8 v6, v22, 0x1

    .end local v22    # "idx":I
    .restart local v6    # "idx":I
    mul-float v5, v10, v1

    mul-float v5, v5, v16

    add-float/2addr v5, v14

    aput v5, v2, v22

    .line 531
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    add-int/lit8 v22, v6, 0x1

    .end local v6    # "idx":I
    .restart local v22    # "idx":I
    mul-float v5, v8, v1

    mul-float v5, v5, v17

    add-float/2addr v5, v15

    aput v5, v2, v6

    .line 524
    .end local v1    # "scale":F
    .end local v3    # "s":F
    .end local v10    # "qx":F
    if-eq v9, v11, :cond_6

    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p2

    move/from16 v6, v22

    move/from16 v2, v23

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_1

    .line 522
    .end local v8    # "qy":F
    .end local v9    # "gx":I
    :cond_6
    if-eq v7, v11, :cond_7

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p2

    move/from16 v6, v22

    move/from16 v2, v23

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_0

    .line 534
    .end local v7    # "gy":I
    :cond_7
    iget-object v7, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    const/4 v10, 0x0

    sget-object v1, Lio/nekohasekai/sagernet/widget/GlassEngine;->RENDER_PAINT:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move v5, v11

    move v6, v11

    move v2, v11

    .end local v11    # "grid":I
    .local v2, "grid":I
    move-object v11, v1

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 535
    return-void

    .line 515
    .end local v18    # "count":I
    .end local v19    # "step":F
    .end local v20    # "exp":F
    .end local v22    # "idx":I
    .end local v23    # "w":I
    .local v2, "w":I
    :cond_8
    move/from16 v23, v2

    .end local v2    # "w":I
    .restart local v23    # "w":I
    :goto_3
    return-void

    .line 510
    .end local v14    # "cx":F
    .end local v15    # "cy":F
    .end local v16    # "hw":F
    .end local v17    # "hh":F
    .end local v23    # "w":I
    .restart local v2    # "w":I
    :cond_9
    move/from16 v23, v2

    .end local v2    # "w":I
    .restart local v23    # "w":I
    :goto_4
    return-void
.end method

.method public final renderTopHoldLens(Landroid/graphics/Canvas;FF)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "magnify"    # F
    .param p3, "edgeDp"    # F

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "canvas"

    move-object/from16 v12, p1

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    iget-object v4, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshot:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    return-void

    .line 461
    .local v4, "bmp":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 462
    :cond_1
    iget-object v2, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 463
    .local v2, "w":I
    iget-object v3, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 464
    .local v13, "h":I
    if-lez v2, :cond_a

    if-gtz v13, :cond_2

    goto/16 :goto_4

    .line 465
    :cond_2
    iget-object v3, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v14, v3, Landroid/util/DisplayMetrics;->density:F

    .line 466
    .local v14, "density":F
    mul-float v3, p3, v14

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v15

    .line 467
    .local v15, "bandPx":F
    int-to-float v3, v13

    div-float v3, v15, v3

    const v6, 0x3ba3d70a    # 0.005f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v3, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v11

    .line 468
    .local v11, "bandFrac":F
    iget v3, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->holdMag:F

    const/4 v7, 0x1

    cmpg-float v3, v3, v1

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    iget v3, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->holdBand:F

    cmpg-float v3, v3, v11

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_6

    .line 469
    :cond_5
    iput v1, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->holdMag:F

    .line 470
    iput v11, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->holdBand:F

    .line 471
    invoke-direct {v0, v1, v11}, Lio/nekohasekai/sagernet/widget/GlassEngine;->buildHoldTable(FF)[F

    move-result-object v3

    iput-object v3, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->holdTable:[F

    .line 473
    :cond_6
    iget-object v3, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->holdTable:[F

    array-length v3, v3

    if-nez v3, :cond_7

    return-void

    .line 474
    :cond_7
    const/16 v10, 0x50

    .line 475
    .local v10, "gridX":I
    const/16 v9, 0x30

    .line 476
    .local v9, "gridY":I
    add-int/lit8 v16, v10, 0x1

    .line 477
    .local v16, "countX":I
    add-int/lit8 v17, v9, 0x1

    .line 478
    .local v17, "countY":I
    mul-int v3, v16, v17

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Lio/nekohasekai/sagernet/widget/GlassEngine;->ensureVerts(I)V

    .line 479
    int-to-float v3, v9

    div-float v18, v5, v3

    .line 480
    .local v18, "stepY":F
    int-to-float v3, v10

    div-float v19, v5, v3

    .line 481
    .local v19, "stepX":F
    const/4 v3, 0x0

    .line 482
    .local v3, "idx":I
    const/4 v5, 0x0

    .line 484
    .local v5, "gy":I
    :goto_2
    int-to-float v7, v5

    mul-float v7, v7, v18

    .line 485
    .local v7, "s":F
    iget-object v8, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->holdTable:[F

    const/high16 v20, 0x44800000    # 1024.0f

    mul-float v6, v7, v20

    float-to-int v6, v6

    const/16 v1, 0x400

    move/from16 v20, v3

    const/4 v3, 0x0

    .end local v3    # "idx":I
    .local v20, "idx":I
    invoke-static {v6, v3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    aget v1, v8, v1

    .line 486
    .local v1, "destFrac":F
    int-to-float v6, v13

    mul-float v6, v6, v1

    .line 487
    .local v6, "dy":F
    const/4 v8, 0x0

    .line 488
    .local v8, "gx":I
    :goto_3
    iget-object v3, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    add-int/lit8 v22, v20, 0x1

    move/from16 v23, v1

    .end local v1    # "destFrac":F
    .end local v20    # "idx":I
    .local v22, "idx":I
    .local v23, "destFrac":F
    int-to-float v1, v8

    mul-float v1, v1, v19

    move/from16 v24, v7

    .end local v7    # "s":F
    .local v24, "s":F
    int-to-float v7, v2

    mul-float v1, v1, v7

    aput v1, v3, v20

    .line 489
    iget-object v1, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    add-int/lit8 v20, v22, 0x1

    .end local v22    # "idx":I
    .restart local v20    # "idx":I
    aput v6, v1, v22

    .line 487
    if-eq v8, v10, :cond_8

    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v23

    move/from16 v7, v24

    const/4 v3, 0x0

    goto :goto_3

    .line 482
    .end local v6    # "dy":F
    .end local v8    # "gx":I
    .end local v23    # "destFrac":F
    .end local v24    # "s":F
    :cond_8
    if-eq v5, v9, :cond_9

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p2

    move/from16 v3, v20

    goto :goto_2

    .line 492
    .end local v5    # "gy":I
    :cond_9
    iget-object v7, v0, Lio/nekohasekai/sagernet/widget/GlassEngine;->warpVerts:[F

    const/4 v1, 0x0

    sget-object v21, Lio/nekohasekai/sagernet/widget/GlassEngine;->RENDER_PAINT:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/16 v22, 0x0

    move-object/from16 v3, p1

    move v5, v10

    move v6, v9

    move/from16 v23, v9

    .end local v9    # "gridY":I
    .local v23, "gridY":I
    move-object/from16 v9, v22

    move/from16 v22, v10

    .end local v10    # "gridX":I
    .local v22, "gridX":I
    move v10, v1

    move v1, v11

    .end local v11    # "bandFrac":F
    .local v1, "bandFrac":F
    move-object/from16 v11, v21

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 493
    return-void

    .line 464
    .end local v1    # "bandFrac":F
    .end local v14    # "density":F
    .end local v15    # "bandPx":F
    .end local v16    # "countX":I
    .end local v17    # "countY":I
    .end local v18    # "stepY":F
    .end local v19    # "stepX":F
    .end local v20    # "idx":I
    .end local v22    # "gridX":I
    .end local v23    # "gridY":I
    :cond_a
    :goto_4
    return-void
.end method

.method public final setLensFlip(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 77
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->lensFlip:Z

    return-void
.end method

.method public final setLensPower(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 63
    iput p1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->lensPower:F

    return-void
.end method

.method public final setPaused(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 101
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->paused:Z

    .line 102
    return-void
.end method

.method public final setRefreshIntervalMs(I)V
    .locals 0

    return-void
.end method

.method public final setSnapshotScale(F)V
    .locals 3
    .param p1, "value"    # F

    .line 87
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 88
    .local v0, "v":F
    iget v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotScale:F

    const/4 v2, 0x1

    cmpg-float v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 89
    iput v0, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshotScale:F

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->snapshot:Landroid/graphics/Bitmap;

    .line 91
    iput-boolean v2, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->first:Z

    .line 92
    iget-object v1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->host:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 94
    :cond_1
    return-void
.end method

.method public final setTopLensPower(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 70
    iput p1, p0, Lio/nekohasekai/sagernet/widget/GlassEngine;->topLensPower:F

    return-void
.end method
