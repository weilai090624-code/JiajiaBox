.class Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;
.super Landroid/view/View;
.source "LocalAppearanceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->animate(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mask:Landroid/graphics/Paint;

.field final synthetic val$dark:Z

.field final synthetic val$snapshot:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .registers 4

    .line 237
    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->val$snapshot:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->val$dark:Z

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 238
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->mask:Landroid/graphics/Paint;

    .line 240
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->mask:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 241
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 243
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 244
    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->val$snapshot:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 245
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    .line 246
    const v2, 0x7f0a01e2

    invoke-virtual {p0, v2}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 247
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    mul-float v2, v2, v3

    sub-float/2addr v2, v1

    .line 248
    iget-boolean v3, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->val$dark:Z

    if-eqz v3, :cond_3d

    goto :goto_45

    :cond_3d
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    sub-float v2, v3, v1

    :goto_45
    move v4, v2

    .line 249
    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->mask:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    add-float v6, v4, v1

    .line 250
    iget-boolean v1, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->val$dark:Z

    const/high16 v3, -0x1000000

    const/4 v5, 0x0

    if-eqz v1, :cond_56

    const/high16 v8, -0x1000000

    goto :goto_57

    :cond_56
    const/4 v8, 0x0

    :goto_57
    iget-boolean v1, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->val$dark:Z

    if-eqz v1, :cond_5d

    const/4 v9, 0x0

    goto :goto_5f

    :cond_5d
    const/high16 v9, -0x1000000

    :goto_5f
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 249
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 252
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->getWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->getHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$2;->mask:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 253
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 254
    return-void
.end method
