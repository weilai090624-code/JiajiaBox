.class public final Lio/nekohasekai/sagernet/ui/CardLight;
.super Landroid/graphics/drawable/Drawable;
.source "CardLight.java"


# static fields
.field private static final TAG:I = 0x7f0a0f81

.field private static final lights:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lio/nekohasekai/sagernet/ui/CardLight;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final area:Landroid/graphics/RectF;

.field private color:I

.field private height:F

.field private overlay:Z

.field private final paint:Landroid/graphics/Paint;

.field private radius:F

.field private shaderHeight:F

.field private shaderTop:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/CardLight;->lights:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/CardLight;->paint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/CardLight;->area:Landroid/graphics/RectF;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 21
    iput v0, p0, Lio/nekohasekai/sagernet/ui/CardLight;->shaderTop:F

    .line 24
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/CardLight;->configure(Landroid/view/View;)V

    return-void
.end method

.method public static bind(Landroid/view/View;F)V
    .registers 5

    .line 36
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v0, :cond_5

    goto :goto_3c

    .line 37
    :cond_5
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/CardLight;->light(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/CardLight;

    move-result-object v0

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/CardLight;->configure(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v1

    iput p1, v0, Lio/nekohasekai/sagernet/ui/CardLight;->radius:F

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Lio/nekohasekai/sagernet/ui/CardLight;->setBounds(IIII)V

    .line 40
    iget-boolean p1, v0, Lio/nekohasekai/sagernet/ui/CardLight;->overlay:Z

    if-nez p1, :cond_3c

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, v0, Lio/nekohasekai/sagernet/ui/CardLight;->overlay:Z

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 42
    new-instance p1, Lio/nekohasekai/sagernet/ui/CardLight$0;

    invoke-direct {p1, v0}, Lio/nekohasekai/sagernet/ui/CardLight$0;-><init>(Lio/nekohasekai/sagernet/ui/CardLight;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private configure(Landroid/view/View;)V
    .registers 4

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41600000    # 14.0f

    mul-float v0, v0, v1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const p1, 0x24ffffff

    goto :goto_1f

    :cond_1c
    const p1, 0x20e9a9c0

    .line 28
    :goto_1f
    iget v1, p0, Lio/nekohasekai/sagernet/ui/CardLight;->height:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2b

    iget v1, p0, Lio/nekohasekai/sagernet/ui/CardLight;->color:I

    if-eq v1, p1, :cond_2a

    goto :goto_2b

    :cond_2a
    return-void

    :cond_2b
    :goto_2b
    iput v0, p0, Lio/nekohasekai/sagernet/ui/CardLight;->height:F

    iput p1, p0, Lio/nekohasekai/sagernet/ui/CardLight;->color:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lio/nekohasekai/sagernet/ui/CardLight;->shaderTop:F

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/CardLight;->invalidateSelf()V

    return-void
.end method

.method public static drawNative(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .registers 4

    .line 46
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/CardLight;->light(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/CardLight;

    move-result-object p0

    invoke-direct {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/CardLight;->render(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    return-void
.end method

.method static synthetic lambda$bind$0(Lio/nekohasekai/sagernet/ui/CardLight;Landroid/view/View;IIIIIIII)V
    .registers 10

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1, p1, p4, p5}, Lio/nekohasekai/sagernet/ui/CardLight;->setBounds(IIII)V

    return-void
.end method

.method private static light(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/CardLight;
    .registers 4

    const v0, 0x7f0a0f81

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lio/nekohasekai/sagernet/ui/CardLight;

    if-eqz v2, :cond_e

    check-cast v1, Lio/nekohasekai/sagernet/ui/CardLight;

    return-object v1

    .line 32
    :cond_e
    new-instance v1, Lio/nekohasekai/sagernet/ui/CardLight;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/CardLight;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget-object v0, Lio/nekohasekai/sagernet/ui/CardLight;->lights:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static refreshAll()V
    .registers 5

    .line 49
    sget-object v0, Lio/nekohasekai/sagernet/ui/CardLight;->lights:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    array-length v2, v0

    :goto_10
    if-ge v1, v2, :cond_27

    aget-object v3, v0, v1

    sget-object v4, Lio/nekohasekai/sagernet/ui/CardLight;->lights:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/nekohasekai/sagernet/ui/CardLight;

    if-eqz v4, :cond_24

    invoke-direct {v4, v3}, Lio/nekohasekai/sagernet/ui/CardLight;->configure(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_27
    return-void
.end method

.method private render(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .registers 14

    .line 52
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_63

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_12

    goto :goto_63

    .line 53
    :cond_12
    iget v0, p0, Lio/nekohasekai/sagernet/ui/CardLight;->height:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 54
    iget v1, p0, Lio/nekohasekai/sagernet/ui/CardLight;->shaderTop:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2a

    iget v1, p0, Lio/nekohasekai/sagernet/ui/CardLight;->shaderHeight:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_4b

    .line 55
    :cond_2a
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iput v1, p0, Lio/nekohasekai/sagernet/ui/CardLight;->shaderTop:F

    iput v0, p0, Lio/nekohasekai/sagernet/ui/CardLight;->shaderHeight:F

    .line 56
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/CardLight;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float v6, v3, v0

    iget v7, p0, Lio/nekohasekai/sagernet/ui/CardLight;->color:I

    const v3, 0xffffff

    and-int v8, v7, v3

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 58
    :cond_4b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 59
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CardLight;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_63
    :goto_63
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CardLight;->area:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/CardLight;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CardLight;->area:Landroid/graphics/RectF;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/CardLight;->radius:F

    invoke-direct {p0, p1, v0, v1}, Lio/nekohasekai/sagernet/ui/CardLight;->render(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 62
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CardLight;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/CardLight;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 63
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CardLight;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/CardLight;->invalidateSelf()V

    return-void
.end method
