.class Landroidx/core/view/DisplayCompat$Api23Impl;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMode(Landroid/content/Context;Landroid/view/Display;)Landroidx/core/view/DisplayCompat$ModeCompat;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;

    .line 234
    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 235
    .local v0, "currentMode":Landroid/view/Display$Mode;
    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    .line 238
    .local v1, "workaroundSize":Landroid/graphics/Point;
    if-eqz v1, :cond_17

    invoke-static {v0, v1}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_17

    .line 240
    :cond_11
    new-instance v2, Landroidx/core/view/DisplayCompat$ModeCompat;

    invoke-direct {v2, v0, v1}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Landroid/graphics/Point;)V

    goto :goto_1d

    .line 239
    :cond_17
    :goto_17
    new-instance v2, Landroidx/core/view/DisplayCompat$ModeCompat;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    .line 238
    :goto_1d
    return-object v2
.end method

.method public static getSupportedModes(Landroid/content/Context;Landroid/view/Display;)[Landroidx/core/view/DisplayCompat$ModeCompat;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;

    .line 247
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    .line 248
    .local v0, "supportedModes":[Landroid/view/Display$Mode;
    array-length v1, v0

    new-array v1, v1, [Landroidx/core/view/DisplayCompat$ModeCompat;

    .line 250
    .local v1, "supportedModesCompat":[Landroidx/core/view/DisplayCompat$ModeCompat;
    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    .line 251
    .local v2, "currentMode":Landroid/view/Display$Mode;
    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v3

    .line 254
    .local v3, "workaroundSize":Landroid/graphics/Point;
    if-eqz v3, :cond_39

    invoke-static {v2, v3}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_39

    .line 262
    :cond_18
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, v0

    if-ge v4, v5, :cond_4f

    .line 264
    aget-object v5, v0, v4

    invoke-static {v5, v2}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 265
    new-instance v5, Landroidx/core/view/DisplayCompat$ModeCompat;

    aget-object v6, v0, v4

    invoke-direct {v5, v6, v3}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Landroid/graphics/Point;)V

    goto :goto_34

    .line 266
    :cond_2c
    new-instance v5, Landroidx/core/view/DisplayCompat$ModeCompat;

    aget-object v6, v0, v4

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    :goto_34
    aput-object v5, v1, v4

    .line 262
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 256
    .end local v4    # "i":I
    :cond_39
    :goto_39
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3a
    array-length v5, v0

    if-ge v4, v5, :cond_4f

    .line 257
    aget-object v5, v0, v4

    invoke-static {v5, v2}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result v5

    .line 258
    .local v5, "isNative":Z
    new-instance v6, Landroidx/core/view/DisplayCompat$ModeCompat;

    aget-object v7, v0, v4

    invoke-direct {v6, v7, v5}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    aput-object v6, v1, v4

    .line 256
    .end local v5    # "isNative":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 269
    .end local v4    # "i":I
    :cond_4f
    return-object v1
.end method

.method static isCurrentModeTheLargestMode(Landroid/view/Display;)Z
    .registers 9
    .param p0, "display"    # Landroid/view/Display;

    .line 273
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 274
    .local v0, "currentMode":Landroid/view/Display$Mode;
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v1

    .line 275
    .local v1, "supportedModes":[Landroid/view/Display$Mode;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_28

    aget-object v5, v1, v4

    .line 276
    .local v5, "supportedMode":Landroid/view/Display$Mode;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    if-lt v6, v7, :cond_27

    .line 277
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    if-ge v6, v7, :cond_24

    goto :goto_27

    .line 275
    .end local v5    # "supportedMode":Landroid/view/Display$Mode;
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 278
    .restart local v5    # "supportedMode":Landroid/view/Display$Mode;
    :cond_27
    :goto_27
    return v3

    .line 281
    .end local v5    # "supportedMode":Landroid/view/Display$Mode;
    :cond_28
    const/4 v2, 0x1

    return v2
.end method

.method static physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z
    .registers 4
    .param p0, "mode"    # Landroid/view/Display$Mode;
    .param p1, "size"    # Landroid/graphics/Point;

    .line 289
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_20

    .line 290
    :cond_10
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_22

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 289
    :goto_23
    return v0
.end method

.method static physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .registers 4
    .param p0, "mode"    # Landroid/view/Display$Mode;
    .param p1, "otherMode"    # Landroid/view/Display$Mode;

    .line 298
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 299
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 298
    :goto_17
    return v0
.end method
