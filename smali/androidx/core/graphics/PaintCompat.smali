.class public final Landroidx/core/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "PaintCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/PaintCompat$Api23Impl;,
        Landroidx/core/graphics/PaintCompat$Api29Impl;
    }
.end annotation


# static fields
.field private static final EM_STRING:Ljava/lang/String; = "m"

.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/core/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .registers 13
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "string"    # Ljava/lang/String;

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 54
    invoke-static {p0, p1}, Landroidx/core/graphics/PaintCompat$Api23Impl;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 56
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 58
    .local v0, "length":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1e

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 60
    return v1

    .line 63
    :cond_1e
    const-string/jumbo v3, "\udb3f\udffd"

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 64
    .local v4, "missingGlyphWidth":F
    const-string v5, "m"

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 66
    .local v5, "emGlyphWidth":F
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 68
    .local v6, "width":F
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-nez v7, :cond_35

    .line 70
    return v2

    .line 73
    :cond_35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->codePointCount(II)I

    move-result v7

    if-le v7, v1, :cond_62

    .line 76
    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v5

    cmpl-float v7, v6, v7

    if-lez v7, :cond_48

    .line 77
    return v2

    .line 90
    :cond_48
    const/4 v7, 0x0

    .line 91
    .local v7, "sumWidth":F
    const/4 v8, 0x0

    .line 92
    .local v8, "i":I
    :goto_4a
    if-ge v8, v0, :cond_5d

    .line 93
    invoke-virtual {p1, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    .line 94
    .local v9, "charCount":I
    add-int v10, v8, v9

    invoke-virtual {p0, p1, v8, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    add-float/2addr v7, v10

    .line 95
    add-int/2addr v8, v9

    .line 96
    .end local v9    # "charCount":I
    goto :goto_4a

    .line 97
    :cond_5d
    cmpl-float v9, v6, v7

    if-ltz v9, :cond_62

    .line 98
    return v2

    .line 102
    .end local v7    # "sumWidth":F
    .end local v8    # "i":I
    :cond_62
    cmpl-float v7, v6, v4

    if-eqz v7, :cond_67

    .line 104
    return v1

    .line 109
    :cond_67
    invoke-static {}, Landroidx/core/graphics/PaintCompat;->obtainEmptyRects()Landroidx/core/util/Pair;

    move-result-object v7

    .line 110
    .local v7, "rects":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v7, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v2, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 111
    iget-object v3, v7, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2, v0, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 112
    iget-object v2, v7, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, v7, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method private static obtainEmptyRects()Landroidx/core/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 149
    sget-object v0, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 150
    .local v0, "rects":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    if-nez v0, :cond_20

    .line 151
    new-instance v1, Landroidx/core/util/Pair;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 152
    sget-object v1, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2e

    .line 154
    :cond_20
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 155
    iget-object v1, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 157
    :goto_2e
    return-object v0
.end method

.method public static setBlendMode(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z
    .registers 6
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "blendMode"    # Landroidx/core/graphics/BlendModeCompat;

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_15

    .line 129
    if-eqz p1, :cond_f

    .line 130
    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils$Api29Impl;->obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_10

    :cond_f
    nop

    :goto_10
    move-object v0, v3

    .line 131
    .local v0, "blendModePlatform":Ljava/lang/Object;
    invoke-static {p0, v0}, Landroidx/core/graphics/PaintCompat$Api29Impl;->setBlendMode(Landroid/graphics/Paint;Ljava/lang/Object;)V

    .line 133
    return v2

    .line 134
    .end local v0    # "blendModePlatform":Ljava/lang/Object;
    :cond_15
    if-eqz p1, :cond_2a

    .line 135
    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils;->obtainPorterDuffFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 136
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_22

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    :cond_22
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 139
    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    return v2

    .line 143
    .end local v0    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_2a
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 144
    return v2
.end method
