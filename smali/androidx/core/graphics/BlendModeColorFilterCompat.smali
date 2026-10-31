.class public Landroidx/core/graphics/BlendModeColorFilterCompat;
.super Ljava/lang/Object;
.source "BlendModeColorFilterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BlendModeColorFilterCompat$Api29Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;
    .registers 5
    .param p0, "color"    # I
    .param p1, "blendModeCompat"    # Landroidx/core/graphics/BlendModeCompat;

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_15

    .line 46
    nop

    .line 47
    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils$Api29Impl;->obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "blendMode":Ljava/lang/Object;
    if-eqz v0, :cond_13

    .line 49
    invoke-static {p0, v0}, Landroidx/core/graphics/BlendModeColorFilterCompat$Api29Impl;->createBlendModeColorFilter(ILjava/lang/Object;)Landroid/graphics/ColorFilter;

    move-result-object v2

    goto :goto_14

    :cond_13
    nop

    .line 48
    :goto_14
    return-object v2

    .line 51
    .end local v0    # "blendMode":Ljava/lang/Object;
    :cond_15
    nop

    .line 52
    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils;->obtainPorterDuffFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 53
    .local v0, "porterDuffMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_22

    .line 54
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_23

    :cond_22
    nop

    .line 53
    :goto_23
    return-object v2
.end method
