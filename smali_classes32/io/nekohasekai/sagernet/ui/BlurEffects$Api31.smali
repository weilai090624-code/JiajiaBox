.class final Lio/nekohasekai/sagernet/ui/BlurEffects$Api31;
.super Ljava/lang/Object;
.source "BlurEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/BlurEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# static fields
.field private static density:F

.field private static effects:[Landroid/graphics/RenderEffect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const/16 v0, 0x31

    new-array v0, v0, [Landroid/graphics/RenderEffect;

    sput-object v0, Lio/nekohasekai/sagernet/ui/BlurEffects$Api31;->effects:[Landroid/graphics/RenderEffect;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Landroid/view/View;I)V
    .registers 4

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    sget v1, Lio/nekohasekai/sagernet/ui/BlurEffects$Api31;->density:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_18

    sput v0, Lio/nekohasekai/sagernet/ui/BlurEffects$Api31;->density:F

    const/16 v0, 0x31

    new-array v0, v0, [Landroid/graphics/RenderEffect;

    sput-object v0, Lio/nekohasekai/sagernet/ui/BlurEffects$Api31;->effects:[Landroid/graphics/RenderEffect;

    .line 16
    :cond_18
    if-nez p1, :cond_1f

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    return-void

    .line 17
    :cond_1f
    sget-object v0, Lio/nekohasekai/sagernet/ui/BlurEffects$Api31;->effects:[Landroid/graphics/RenderEffect;

    aget-object v0, v0, p1

    .line 18
    if-nez v0, :cond_39

    const/high16 v0, 0x41900000    # 18.0f

    sget v1, Lio/nekohasekai/sagernet/ui/BlurEffects$Api31;->density:F

    mul-float/2addr v1, v0

    int-to-float v0, p1

    mul-float/2addr v1, v0

    const/high16 v0, 0x42400000    # 48.0f

    div-float/2addr v1, v0

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {v1, v1, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    sget-object v1, Lio/nekohasekai/sagernet/ui/BlurEffects$Api31;->effects:[Landroid/graphics/RenderEffect;

    aput-object v0, v1, p1

    .line 19
    :cond_39
    invoke-virtual {p0, v0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 20
    return-void
.end method
