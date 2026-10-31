.class public final Landroidx/core/widget/CompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/CompoundButtonCompat$Api21Impl;,
        Landroidx/core/widget/CompoundButtonCompat$Api23Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompat"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 128
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat$Api23Impl;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 131
    :cond_b
    sget-boolean v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    const-string v1, "CompoundButtonCompat"

    if-nez v0, :cond_2a

    .line 133
    const/4 v0, 0x1

    :try_start_12
    const-class v2, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 134
    sget-object v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_21} :catch_22

    .line 137
    goto :goto_28

    .line 135
    :catch_22
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_28
    sput-boolean v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    .line 141
    :cond_2a
    sget-object v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 143
    :try_start_2f
    sget-object v0, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_37} :catch_38

    return-object v0

    .line 144
    :catch_38
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Failed to get button drawable via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    sput-object v2, Landroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 149
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_40
    return-object v2
.end method

.method public static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .line 74
    nop

    .line 75
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .line 111
    nop

    .line 112
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 60
    nop

    .line 61
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 65
    return-void
.end method

.method public static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 97
    nop

    .line 98
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    .line 102
    return-void
.end method
