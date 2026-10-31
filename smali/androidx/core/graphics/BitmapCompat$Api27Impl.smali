.class Landroidx/core/graphics/BitmapCompat$Api27Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api27Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    return-void
.end method

.method static copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .line 360
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1a

    .line 361
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 362
    .local v0, "newConfig":Landroid/graphics/Bitmap$Config;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_14

    .line 363
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api31Impl;->getHardwareBitmapConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 365
    :cond_14
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 367
    .end local v0    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_1a
    return-object p0
.end method

.method static createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "src"    # Landroid/graphics/Bitmap;
    .param p3, "linear"    # Z

    .line 336
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 337
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 338
    .local v1, "colorSpace":Landroid/graphics/ColorSpace;
    sget-object v2, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 339
    .local v2, "linearCs":Landroid/graphics/ColorSpace;
    if-eqz p3, :cond_1e

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 341
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 342
    move-object v1, v2

    goto :goto_32

    .line 343
    :cond_1e
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_32

    .line 344
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 345
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_32

    .line 346
    invoke-static {p2}, Landroidx/core/graphics/BitmapCompat$Api31Impl;->getHardwareBitmapConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 349
    :cond_32
    :goto_32
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    invoke-static {p0, p1, v0, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method static isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z
    .registers 4
    .param p0, "b"    # Landroid/graphics/Bitmap;

    .line 354
    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 355
    .local v0, "linearCs":Landroid/graphics/ColorSpace;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method
