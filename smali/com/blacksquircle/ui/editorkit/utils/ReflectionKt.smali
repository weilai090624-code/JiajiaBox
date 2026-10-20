.class public final Lcom/blacksquircle/ui/editorkit/utils/ReflectionKt;
.super Ljava/lang/Object;
.source "Reflection.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReflection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reflection.kt\ncom/blacksquircle/ui/editorkit/utils/ReflectionKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n13579#2,2:94\n1#3:96\n*S KotlinDebug\n*F\n+ 1 Reflection.kt\ncom/blacksquircle/ui/editorkit/utils/ReflectionKt\n*L\n75#1:94,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\u0008\u00030\u00022\u0012\u0010\u0003\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005H\u0000\u00a2\u0006\u0002\u0010\u0006\u001a\u0016\u0010\u0007\u001a\u00020\u0008*\u00020\t2\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\u0000\u001a\u0016\u0010\u000c\u001a\u00020\r*\u00020\r2\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "findField",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/Class;",
        "name",
        "",
        "",
        "(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Field;",
        "setCursorDrawableColor",
        "",
        "Landroid/widget/TextView;",
        "color",
        "",
        "tinted",
        "Landroid/graphics/drawable/Drawable;",
        "editorkit_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final varargs findField(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 9
    .param p0, "$this$findField"    # Ljava/lang/Class;
    .param p1, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object v0, p1

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 94
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 76
    .local v6, "$i$a$-forEach-ReflectionKt$findField$1":I
    nop

    .line 77
    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 78
    .local v7, "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    return-object v7

    .line 80
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v7

    .line 81
    .local v7, "e":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .end local v7    # "e":Ljava/lang/Throwable;
    nop

    .line 94
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-forEach-ReflectionKt$findField$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_0
    nop

    .line 84
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final setCursorDrawableColor(Landroid/widget/TextView;I)V
    .locals 10
    .param p0, "$this$setCursorDrawableColor"    # Landroid/widget/TextView;
    .param p1, "color"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x2

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 38
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 39
    filled-new-array {p1, p1}, [I

    move-result-object v3

    .line 37
    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 42
    .local v0, "gradient":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 41
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 44
    .local v1, "width":F
    float-to-int v2, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 45
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void

    .line 48
    .end local v0    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    .end local v1    # "width":F
    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    .line 49
    const-string v1, "mEditor"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blacksquircle/ui/editorkit/utils/ReflectionKt;->findField(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 50
    .local v0, "editorField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_2

    move-object v3, p0

    .line 52
    .local v3, "editor":Ljava/lang/Object;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    :cond_3
    const-class v4, Landroid/widget/TextView;

    .line 51
    :goto_1
    nop

    .line 53
    .local v4, "editorClass":Ljava/lang/Class;
    nop

    .line 54
    const-class v5, Landroid/widget/TextView;

    const-string v6, "mCursorDrawableRes"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/blacksquircle/ui/editorkit/utils/ReflectionKt;->findField(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v1

    .line 53
    :goto_2
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_3

    :cond_5
    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 55
    .local v5, "cursorRes":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 56
    if-eqz v6, :cond_8

    .line 55
    nop

    .line 56
    invoke-static {v6, p1}, Lcom/blacksquircle/ui/editorkit/utils/ReflectionKt;->tinted(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 55
    if-eqz v6, :cond_8

    .line 58
    .local v6, "tintedCursorDrawable":Landroid/graphics/drawable/Drawable;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x1c

    const-string v9, "mDrawableForCursor"

    if-lt v7, v8, :cond_6

    .line 59
    :try_start_1
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/blacksquircle/ui/editorkit/utils/ReflectionKt;->findField(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_4

    .line 61
    :cond_6
    nop

    .line 58
    :goto_4
    nop

    .line 63
    .local v1, "cursorField":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_7

    .line 64
    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 67
    :cond_7
    nop

    .line 66
    const-string v7, "mCursorDrawable"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/blacksquircle/ui/editorkit/utils/ReflectionKt;->findField(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 67
    if-eqz v7, :cond_a

    .line 66
    nop

    .line 67
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    aput-object v6, v2, v8

    const/4 v8, 0x1

    aput-object v6, v2, v8

    invoke-virtual {v7, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "editorField":Ljava/lang/reflect/Field;
    .end local v1    # "cursorField":Ljava/lang/reflect/Field;
    .end local v3    # "editor":Ljava/lang/Object;
    .end local v4    # "editorClass":Ljava/lang/Class;
    .end local v5    # "cursorRes":I
    .end local v6    # "tintedCursorDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_5

    .line 56
    .restart local v0    # "editorField":Ljava/lang/reflect/Field;
    .restart local v3    # "editor":Ljava/lang/Object;
    .restart local v4    # "editorClass":Ljava/lang/Class;
    .restart local v5    # "cursorRes":I
    :cond_8
    return-void

    .line 54
    .end local v5    # "cursorRes":I
    :cond_9
    return-void

    .line 69
    .end local v0    # "editorField":Ljava/lang/reflect/Field;
    .end local v3    # "editor":Ljava/lang/Object;
    .end local v4    # "editorClass":Ljava/lang/Class;
    :catchall_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_a
    :goto_5
    return-void
.end method

.method public static final tinted(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "$this$tinted"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    nop

    .line 88
    instance-of v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 96
    .local v0, "$this$tinted_u24lambda_u241":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    const/4 v1, 0x0

    .line 88
    .local v1, "$i$a$-apply-ReflectionKt$tinted$1":I
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    .end local v0    # "$this$tinted_u24lambda_u241":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    .end local v1    # "$i$a$-apply-ReflectionKt$tinted$1":I
    goto :goto_0

    .line 89
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    .line 96
    .local v0, "$this$tinted_u24lambda_u242":Landroid/graphics/drawable/VectorDrawable;
    const/4 v1, 0x0

    .line 89
    .local v1, "$i$a$-apply-ReflectionKt$tinted$2":I
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 93
    .end local v0    # "$this$tinted_u24lambda_u242":Landroid/graphics/drawable/VectorDrawable;
    .end local v1    # "$i$a$-apply-ReflectionKt$tinted$2":I
    :goto_0
    move-object v0, p0

    goto :goto_1

    .line 90
    :cond_1
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    move-object v1, v0

    .line 96
    .local v1, "it":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 91
    .local v2, "$i$a$-also-ReflectionKt$tinted$3":I
    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 92
    .end local v1    # "it":Landroid/graphics/drawable/Drawable;
    .end local v2    # "$i$a$-also-ReflectionKt$tinted$3":I
    nop

    .line 96
    .local v0, "it":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 92
    .local v1, "$i$a$-let-ReflectionKt$tinted$4":I
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "it":Landroid/graphics/drawable/Drawable;
    .end local v1    # "$i$a$-let-ReflectionKt$tinted$4":I
    const-string/jumbo v1, "wrap(this)\n        .also\u2026awableCompat.unwrap(it) }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    :goto_1
    return-object v0
.end method
