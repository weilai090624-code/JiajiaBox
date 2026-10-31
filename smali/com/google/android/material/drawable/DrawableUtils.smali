.class public final Lcom/google/android/material/drawable/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 13
    .param p0, "bottomLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "topLayerDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 202
    if-nez p0, :cond_3

    .line 203
    return-object p1

    .line 205
    :cond_3
    if-nez p1, :cond_6

    .line 206
    return-object p0

    .line 208
    :cond_6
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 212
    .local v0, "drawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_71

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, v4, :cond_22

    goto :goto_71

    .line 216
    :cond_22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-gt v2, v4, :cond_40

    .line 217
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-gt v2, v4, :cond_40

    .line 220
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 221
    .local v2, "topLayerNewWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    move v10, v4

    .local v4, "topLayerNewHeight":I
    goto :goto_7a

    .line 223
    .end local v2    # "topLayerNewWidth":I
    .end local v4    # "topLayerNewHeight":I
    :cond_40
    nop

    .line 224
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 225
    .local v2, "topLayerRatio":F
    nop

    .line 226
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    .line 227
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 228
    .local v4, "bottomLayerRatio":F
    cmpl-float v5, v2, v4

    if-ltz v5, :cond_66

    .line 231
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 232
    .local v5, "topLayerNewWidth":I
    int-to-float v6, v5

    div-float/2addr v6, v2

    float-to-int v6, v6

    move v2, v5

    move v10, v6

    .local v6, "topLayerNewHeight":I
    goto :goto_7a

    .line 236
    .end local v5    # "topLayerNewWidth":I
    .end local v6    # "topLayerNewHeight":I
    :cond_66
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 237
    .local v5, "topLayerNewHeight":I
    int-to-float v6, v5

    mul-float v6, v6, v2

    float-to-int v6, v6

    move v10, v5

    move v2, v6

    .local v6, "topLayerNewWidth":I
    goto :goto_7a

    .line 214
    .end local v2    # "topLayerRatio":F
    .end local v4    # "bottomLayerRatio":F
    .end local v5    # "topLayerNewHeight":I
    .end local v6    # "topLayerNewWidth":I
    :cond_71
    :goto_71
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 215
    .local v2, "topLayerNewWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    move v10, v4

    .line 242
    .local v10, "topLayerNewHeight":I
    :goto_7a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_89

    .line 243
    invoke-virtual {v0, v3, v2, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    .line 244
    const/16 v1, 0x11

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    goto :goto_9f

    .line 246
    :cond_89
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/2addr v3, v1

    .line 247
    .local v3, "horizontalInset":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v4, v10

    div-int/lit8 v1, v4, 0x2

    .line 248
    .local v1, "verticalInset":I
    const/4 v5, 0x1

    move-object v4, v0

    move v6, v3

    move v7, v1

    move v8, v3

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 250
    .end local v1    # "verticalInset":I
    .end local v3    # "horizontalInset":I
    :goto_9f
    return-object v0
.end method

.method public static createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 152
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "forceMutate"    # Z

    .line 178
    if-nez p0, :cond_4

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_4
    if-eqz p1, :cond_14

    .line 182
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 183
    if-eqz p2, :cond_19

    .line 184
    invoke-static {p0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_19

    .line 186
    :cond_14
    if-eqz p3, :cond_19

    .line 187
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 189
    :cond_19
    :goto_19
    return-object p0
.end method

.method public static getCheckedState([I)[I
    .registers 4
    .param p0, "state"    # [I

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    const v2, 0x10100a0

    if-ge v0, v1, :cond_1c

    .line 257
    aget v1, p0, v0

    if-ne v1, v2, :cond_c

    .line 258
    return-object p0

    .line 259
    :cond_c
    aget v1, p0, v0

    if-nez v1, :cond_19

    .line 260
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 261
    .local v1, "newState":[I
    aput v2, v1, v0

    .line 262
    return-object v1

    .line 256
    .end local v1    # "newState":[I
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    .end local v0    # "i":I
    :cond_1c
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 266
    .local v0, "newState":[I
    array-length v1, p0

    aput v2, v0, v1

    .line 267
    return-object v0
.end method

.method public static getUncheckedState([I)[I
    .registers 7
    .param p0, "state"    # [I

    .line 273
    array-length v0, p0

    new-array v0, v0, [I

    .line 274
    .local v0, "newState":[I
    const/4 v1, 0x0

    .line 275
    .local v1, "i":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_17

    aget v4, p0, v3

    .line 276
    .local v4, "subState":I
    const v5, 0x10100a0

    if-eq v4, v5, :cond_14

    .line 277
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput v4, v0, v1

    move v1, v5

    .line 275
    .end local v4    # "subState":I
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 280
    :cond_17
    return-object v0
.end method

.method public static parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "startTag"    # Ljava/lang/CharSequence;

    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 108
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 109
    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_12

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 110
    :cond_12
    if-ne v1, v2, :cond_42

    .line 114
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 118
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 120
    .local v2, "attrs":Landroid/util/AttributeSet;
    return-object v2

    .line 115
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    :cond_23
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must have a <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> start tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    .end local p2    # "startTag":Ljava/lang/CharSequence;
    throw v2

    .line 111
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    .restart local p2    # "startTag":Ljava/lang/CharSequence;
    :cond_42
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    .end local p2    # "startTag":Ljava/lang/CharSequence;
    throw v2
    :try_end_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4a} :catch_4c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4a} :catch_4a

    .line 121
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "type":I
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    .restart local p2    # "startTag":Ljava/lang/CharSequence;
    :catch_4a
    move-exception v0

    goto :goto_4d

    :catch_4c
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    :goto_4d
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load badge resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 125
    throw v1
.end method

.method public static setOutlineToPath(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    .registers 4
    .param p0, "outline"    # Landroid/graphics/Outline;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    .line 286
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    goto :goto_1f

    .line 287
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_16

    .line 291
    :try_start_10
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_14

    .line 295
    :goto_13
    goto :goto_1f

    .line 292
    :catch_14
    move-exception v0

    goto :goto_13

    .line 296
    :cond_16
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 297
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 299
    :cond_1f
    :goto_1f
    return-void
.end method

.method public static setRippleDrawableRadius(Landroid/graphics/drawable/RippleDrawable;I)V
    .registers 8
    .param p0, "drawable"    # Landroid/graphics/drawable/RippleDrawable;
    .param p1, "radius"    # I

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 132
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    goto :goto_27

    .line 136
    :cond_a
    :try_start_a
    const-class v0, Landroid/graphics/drawable/RippleDrawable;

    const-string/jumbo v1, "setMaxRadius"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 137
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 138
    .local v0, "setMaxRadiusMethod":Ljava/lang/reflect/Method;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_26} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_26} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_26} :catch_28

    .line 141
    nop

    .line 143
    .end local v0    # "setMaxRadiusMethod":Ljava/lang/reflect/Method;
    :goto_27
    return-void

    .line 139
    :catch_28
    move-exception v0

    goto :goto_2d

    :catch_2a
    move-exception v0

    goto :goto_2d

    :catch_2c
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t set RippleDrawable radius"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I

    .line 68
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 69
    .local v0, "hasTint":Z
    :goto_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-ne v1, v2, :cond_18

    .line 72
    if-eqz v0, :cond_14

    .line 73
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_21

    .line 75
    :cond_14
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_21

    .line 78
    :cond_18
    if-eqz v0, :cond_1e

    .line 79
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_21

    .line 81
    :cond_1e
    invoke-static {p0, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 84
    :goto_21
    return-void
.end method

.method public static updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 92
    if-eqz p1, :cond_14

    if-nez p2, :cond_5

    goto :goto_14

    .line 96
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 97
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    .line 93
    .end local v0    # "color":I
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method
