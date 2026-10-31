.class public final Lcom/google/android/material/internal/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final FADE_MODE_THRESHOLD_FRACTION_RELATIVE:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "CollapsingTextHelper"

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private boundsChanged:Z

.field private final collapsedBounds:Landroid/graphics/Rect;

.field private collapsedDrawX:F

.field private collapsedDrawY:F

.field private collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

.field private collapsedLetterSpacing:F

.field private collapsedShadowColor:Landroid/content/res/ColorStateList;

.field private collapsedShadowDx:F

.field private collapsedShadowDy:F

.field private collapsedShadowRadius:F

.field private collapsedTextBlend:F

.field private collapsedTextColor:Landroid/content/res/ColorStateList;

.field private collapsedTextGravity:I

.field private collapsedTextSize:F

.field private collapsedTextWidth:F

.field private collapsedTypeface:Landroid/graphics/Typeface;

.field private collapsedTypefaceBold:Landroid/graphics/Typeface;

.field private collapsedTypefaceDefault:Landroid/graphics/Typeface;

.field private final currentBounds:Landroid/graphics/RectF;

.field private currentDrawX:F

.field private currentDrawY:F

.field private currentLetterSpacing:F

.field private currentOffsetY:I

.field private currentShadowColor:I

.field private currentShadowDx:F

.field private currentShadowDy:F

.field private currentShadowRadius:F

.field private currentTextSize:F

.field private currentTypeface:Landroid/graphics/Typeface;

.field private final expandedBounds:Landroid/graphics/Rect;

.field private expandedDrawX:F

.field private expandedDrawY:F

.field private expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

.field private expandedFraction:F

.field private expandedLetterSpacing:F

.field private expandedLineCount:I

.field private expandedShadowColor:Landroid/content/res/ColorStateList;

.field private expandedShadowDx:F

.field private expandedShadowDy:F

.field private expandedShadowRadius:F

.field private expandedTextBlend:F

.field private expandedTextColor:Landroid/content/res/ColorStateList;

.field private expandedTextGravity:I

.field private expandedTextSize:F

.field private expandedTitleTexture:Landroid/graphics/Bitmap;

.field private expandedTypeface:Landroid/graphics/Typeface;

.field private expandedTypefaceBold:Landroid/graphics/Typeface;

.field private expandedTypefaceDefault:Landroid/graphics/Typeface;

.field private fadeModeEnabled:Z

.field private fadeModeStartFraction:F

.field private fadeModeThresholdFraction:F

.field private hyphenationFrequency:I

.field private isRtl:Z

.field private isRtlTextDirectionHeuristicsEnabled:Z

.field private lineSpacingAdd:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private positionInterpolator:Landroid/animation/TimeInterpolator;

.field private scale:F

.field private state:[I

.field private staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

.field private text:Ljava/lang/CharSequence;

.field private textLayout:Landroid/text/StaticLayout;

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private textToDraw:Ljava/lang/CharSequence;

.field private textToDrawCollapsed:Ljava/lang/CharSequence;

.field private texturePaint:Landroid/graphics/Paint;

.field private titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private final tmpPaint:Landroid/text/TextPaint;

.field private useTexture:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/material/internal/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/material/internal/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    .line 87
    sget-object v0, Lcom/google/android/material/internal/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_18

    .line 88
    sget-object v0, Lcom/google/android/material/internal/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    sget-object v0, Lcom/google/android/material/internal/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    :cond_18
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    .line 105
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    .line 106
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 107
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 128
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    .line 175
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingAdd:F

    .line 177
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    .line 178
    sget v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->DEFAULT_HYPHENATION_FREQUENCY:I

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    .line 182
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 184
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 185
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 189
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    .line 191
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateFadeModeThresholdFraction()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V

    .line 193
    return-void
.end method

.method private static blendARGB(IIF)I
    .registers 12
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .line 1274
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1275
    .local v0, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 1276
    .local v1, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    .line 1277
    .local v2, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 1278
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p2

    add-float/2addr v4, v5

    .line 1279
    .local v4, "b":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private calculateBaseOffsets(Z)V
    .registers 10
    .param p1, "forceRecalculate"    # Z

    .line 721
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    .line 722
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_20

    .line 723
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 724
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    .line 726
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 727
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->measureTextWidth(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    goto :goto_32

    .line 729
    :cond_30
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    .line 731
    :goto_32
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    .line 734
    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 732
    invoke-static {v0, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 736
    .local v0, "collapsedAbsGravity":I
    and-int/lit8 v2, v0, 0x70

    const/high16 v3, 0x40000000    # 2.0f

    sparse-switch v2, :sswitch_data_132

    .line 745
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    .line 746
    .local v2, "textOffset":F
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iput v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    goto :goto_71

    .line 738
    .end local v2    # "textOffset":F
    :sswitch_5a
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v2, v4

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 739
    goto :goto_71

    .line 741
    :sswitch_69
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    .line 742
    nop

    .line 750
    :goto_71
    const v2, 0x800007

    and-int v4, v0, v2

    sparse-switch v4, :sswitch_data_13c

    .line 759
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    goto :goto_9a

    .line 755
    :sswitch_81
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 756
    goto :goto_9a

    .line 752
    :sswitch_8c
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    .line 753
    nop

    .line 763
    :goto_9a
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    .line 764
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_a8

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 765
    .local v1, "expandedTextHeight":F
    :cond_a8
    const/4 v4, 0x0

    .line 766
    .local v4, "expandedTextWidth":F
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_ba

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_ba

    .line 767
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    int-to-float v4, v5

    goto :goto_c6

    .line 768
    :cond_ba
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v5, :cond_c6

    .line 769
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->measureTextWidth(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    move-result v4

    .line 771
    :cond_c6
    :goto_c6
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_d1

    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    goto :goto_d2

    :cond_d1
    const/4 v5, 0x0

    :goto_d2
    iput v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLineCount:I

    .line 773
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    .line 776
    iget-boolean v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 774
    invoke-static {v5, v6}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    .line 777
    .local v5, "expandedAbsGravity":I
    and-int/lit8 v6, v5, 0x70

    sparse-switch v6, :sswitch_data_146

    .line 786
    div-float v6, v1, v3

    .line 787
    .local v6, "textOffset":F
    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    iput v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    goto :goto_106

    .line 779
    .end local v6    # "textOffset":F
    :sswitch_ee
    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 780
    goto :goto_106

    .line 782
    :sswitch_fe
    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iput v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    .line 783
    nop

    .line 791
    :goto_106
    and-int/2addr v2, v5

    sparse-switch v2, :sswitch_data_150

    .line 800
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    goto :goto_128

    .line 796
    :sswitch_112
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 797
    goto :goto_128

    .line 793
    :sswitch_11b
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v4, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    .line 794
    nop

    .line 805
    :goto_128
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    .line 807
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    invoke-direct {p0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 808
    return-void

    nop

    :sswitch_data_132
    .sparse-switch
        0x30 -> :sswitch_69
        0x50 -> :sswitch_5a
    .end sparse-switch

    :sswitch_data_13c
    .sparse-switch
        0x1 -> :sswitch_8c
        0x5 -> :sswitch_81
    .end sparse-switch

    :sswitch_data_146
    .sparse-switch
        0x30 -> :sswitch_fe
        0x50 -> :sswitch_ee
    .end sparse-switch

    :sswitch_data_150
    .sparse-switch
        0x1 -> :sswitch_11b
        0x5 -> :sswitch_112
    .end sparse-switch
.end method

.method private calculateCurrentOffsets()V
    .registers 2

    .line 603
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateOffsets(F)V

    .line 604
    return-void
.end method

.method private calculateFadeModeTextAlpha(F)F
    .registers 6
    .param p1, "fraction"    # F

    .line 681
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_12

    .line 682
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    invoke-static {v2, v1, v0, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    return v0

    .line 689
    :cond_12
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    invoke-static {v1, v2, v0, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    return v0
.end method

.method private calculateFadeModeThresholdFraction()F
    .registers 4

    .line 336
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 947
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isDefaultIsRtl()Z

    move-result v0

    .line 948
    .local v0, "defaultIsRtl":Z
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    if-eqz v1, :cond_d

    .line 949
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isTextDirectionHeuristicsIsRtl(Ljava/lang/CharSequence;Z)Z

    move-result v1

    goto :goto_e

    .line 950
    :cond_d
    move v1, v0

    .line 948
    :goto_e
    return v1
.end method

.method private calculateOffsets(F)V
    .registers 8
    .param p1, "fraction"    # F

    .line 607
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->interpolateBounds(F)V

    .line 609
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_34

    .line 610
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1d

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "textBlendFraction":F
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 613
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 615
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    goto :goto_50

    .line 617
    .end local v0    # "textBlendFraction":F
    :cond_1d
    const/high16 v0, 0x3f800000    # 1.0f

    .line 618
    .restart local v0    # "textBlendFraction":F
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 619
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentOffsetY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 621
    invoke-direct {p0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    goto :goto_50

    .line 624
    .end local v0    # "textBlendFraction":F
    :cond_34
    move v0, p1

    .line 625
    .restart local v0    # "textBlendFraction":F
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v4, p1, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 626
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v4, p1, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 628
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 631
    :goto_50
    sub-float v3, v2, p1

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 632
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    sub-float v3, v2, v3

    .line 631
    invoke-direct {p0, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextBlend(F)V

    .line 633
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v1, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextBlend(F)V

    .line 635
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v1, v2, :cond_7e

    .line 638
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 640
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v3

    .line 639
    invoke-static {v2, v3, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendARGB(IIF)I

    move-result v2

    .line 638
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_87

    .line 642
    :cond_7e
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 645
    :goto_87
    nop

    .line 646
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_a0

    .line 647
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 648
    invoke-static {v2, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    .line 647
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_a7

    .line 654
    :cond_a0
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 659
    :goto_a7
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    .line 660
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    .line 661
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    .line 662
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:Landroid/content/res/ColorStateList;

    .line 664
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v2

    .line 663
    invoke-static {v1, v2, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendARGB(IIF)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    .line 665
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 668
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-eqz v1, :cond_fc

    .line 669
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    .line 672
    .local v1, "originalAlpha":I
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateFadeModeTextAlpha(F)F

    move-result v2

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 674
    .local v2, "textAlpha":I
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 677
    .end local v1    # "originalAlpha":I
    .end local v2    # "textAlpha":I
    :cond_fc
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 678
    return-void
.end method

.method private calculateUsingTextSize(F)V
    .registers 3
    .param p1, "fraction"    # F

    .line 979
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(FZ)V

    .line 980
    return-void
.end method

.method private calculateUsingTextSize(FZ)V
    .registers 19
    .param p1, "fraction"    # F
    .param p2, "forceRecalculate"    # Z

    .line 984
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v2, :cond_9

    .line 985
    return-void

    .line 988
    :cond_9
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 989
    .local v2, "collapsedWidth":F
    iget-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 996
    .local v3, "expandedWidth":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->isClose(FF)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2a

    .line 997
    iget v5, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 998
    .local v5, "newTextSize":F
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    .line 999
    .local v7, "newLetterSpacing":F
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    .line 1000
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 1001
    .local v8, "newTypeface":Landroid/graphics/Typeface;
    move v9, v2

    .local v9, "availableWidth":F
    goto :goto_61

    .line 1003
    .end local v5    # "newTextSize":F
    .end local v7    # "newLetterSpacing":F
    .end local v8    # "newTypeface":Landroid/graphics/Typeface;
    .end local v9    # "availableWidth":F
    :cond_2a
    iget v5, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 1004
    .restart local v5    # "newTextSize":F
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    .line 1005
    .restart local v7    # "newLetterSpacing":F
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 1006
    .restart local v8    # "newTypeface":Landroid/graphics/Typeface;
    invoke-static {v1, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->isClose(FF)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 1008
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    goto :goto_48

    .line 1011
    :cond_39
    iget v9, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    iget v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    iget-object v11, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 1012
    invoke-static {v9, v10, v1, v11}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v9

    iget v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    div-float/2addr v9, v10

    iput v9, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    .line 1016
    :goto_48
    iget v9, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    iget v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    div-float/2addr v9, v10

    .line 1019
    .local v9, "textSizeRatio":F
    mul-float v10, v3, v9

    .line 1021
    .local v10, "scaledDownWidth":F
    if-eqz p2, :cond_54

    .line 1024
    move v11, v3

    move v9, v11

    .local v11, "availableWidth":F
    goto :goto_61

    .line 1032
    .end local v11    # "availableWidth":F
    :cond_54
    cmpl-float v11, v10, v2

    if-lez v11, :cond_5f

    .line 1033
    div-float v11, v2, v9

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    goto :goto_60

    .line 1034
    :cond_5f
    move v11, v3

    :goto_60
    move v9, v11

    .line 1039
    .end local v10    # "scaledDownWidth":F
    .local v9, "availableWidth":F
    :goto_61
    cmpl-float v6, v9, v6

    if-lez v6, :cond_b8

    .line 1040
    iget v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    const/4 v11, 0x0

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_6e

    const/4 v6, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v6, 0x0

    .line 1041
    .local v6, "textSizeChanged":Z
    :goto_6f
    iget v12, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    cmpl-float v12, v12, v7

    if-eqz v12, :cond_77

    const/4 v12, 0x1

    goto :goto_78

    :cond_77
    const/4 v12, 0x0

    .line 1042
    .local v12, "letterSpacingChanged":Z
    :goto_78
    iget-object v13, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    if-eq v13, v8, :cond_7e

    const/4 v13, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v13, 0x0

    .line 1043
    .local v13, "typefaceChanged":Z
    :goto_7f
    iget-object v14, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v14, :cond_90

    iget-object v14, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getWidth()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v14, v9, v14

    if-eqz v14, :cond_90

    const/4 v14, 0x1

    goto :goto_91

    :cond_90
    const/4 v14, 0x0

    .line 1044
    .local v14, "availableWidthChanged":Z
    :goto_91
    if-nez v6, :cond_a0

    if-nez v12, :cond_a0

    if-nez v14, :cond_a0

    if-nez v13, :cond_a0

    iget-boolean v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    if-eqz v15, :cond_9e

    goto :goto_a0

    :cond_9e
    const/4 v15, 0x0

    goto :goto_a1

    :cond_a0
    :goto_a0
    const/4 v15, 0x1

    .line 1050
    .local v15, "updateDrawText":Z
    :goto_a1
    iput v5, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    .line 1051
    iput v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    .line 1052
    iput-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 1053
    iput-boolean v11, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    .line 1055
    iget-object v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v11, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    cmpl-float v4, v11, v4

    if-eqz v4, :cond_b3

    const/4 v11, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v11, 0x0

    :goto_b4
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 1056
    .end local v6    # "textSizeChanged":Z
    .end local v12    # "letterSpacingChanged":Z
    .end local v13    # "typefaceChanged":Z
    .end local v14    # "availableWidthChanged":Z
    goto :goto_b9

    .line 1057
    .end local v15    # "updateDrawText":Z
    :cond_b8
    const/4 v15, 0x0

    .line 1060
    .restart local v15    # "updateDrawText":Z
    :goto_b9
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v4, :cond_bf

    if-eqz v15, :cond_f7

    .line 1061
    :cond_bf
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1062
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1063
    nop

    .line 1064
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentLetterSpacing:F

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 1067
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 1068
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->shouldDrawMultiline()Z

    move-result v4

    if-eqz v4, :cond_e6

    iget v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    goto :goto_e7

    :cond_e6
    const/4 v10, 0x1

    :goto_e7
    iget-boolean v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    invoke-direct {v0, v10, v9, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->createStaticLayout(IFZ)Landroid/text/StaticLayout;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 1069
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 1071
    :cond_f7
    return-void
.end method

.method private clearTexture()V
    .registers 2

    .line 1167
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1168
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 1171
    :cond_c
    return-void
.end method

.method private createStaticLayout(IFZ)Landroid/text/StaticLayout;
    .registers 9
    .param p1, "maxLines"    # I
    .param p2, "availableWidth"    # F
    .param p3, "isRtl"    # Z

    .line 1074
    const/4 v0, 0x0

    .line 1077
    .local v0, "textLayout":Landroid/text/StaticLayout;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    :try_start_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getMultilineTextLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1078
    .local v1, "textAlignment":Landroid/text/Layout$Alignment;
    :goto_b
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    float-to-int v4, p2

    .line 1079
    invoke-static {v2, v3, v4}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 1080
    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object v2

    .line 1081
    invoke-virtual {v2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setIsRtl(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object v2

    .line 1082
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object v2

    .line 1083
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setIncludePad(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object v2

    .line 1084
    invoke-virtual {v2, p1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setMaxLines(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingAdd:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    .line 1085
    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setLineSpacing(FF)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    .line 1086
    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setHyphenationFrequency(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    .line 1087
    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setStaticLayoutBuilderConfigurer(Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object v2

    .line 1088
    invoke-virtual {v2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->build()Landroid/text/StaticLayout;

    move-result-object v2
    :try_end_43
    .catch Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException; {:try_start_4 .. :try_end_43} :catch_45

    move-object v0, v2

    .line 1091
    .end local v1    # "textAlignment":Landroid/text/Layout$Alignment;
    goto :goto_53

    .line 1089
    :catch_45
    move-exception v1

    .line 1090
    .local v1, "e":Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
    invoke-virtual {v1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CollapsingTextHelper"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    .end local v1    # "e":Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
    :goto_53
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/StaticLayout;

    return-object v1
.end method

.method private drawMultilineTransition(Landroid/graphics/Canvas;FF)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentExpandedX"    # F
    .param p3, "y"    # F

    .line 885
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 887
    .local v0, "originalAlpha":I
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 889
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextBlend:F

    int-to-float v3, v0

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 894
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_31

    .line 895
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 899
    invoke-virtual {v7}, Landroid/text/TextPaint;->getAlpha()I

    move-result v7

    invoke-static {v6, v7}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v6

    .line 895
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 901
    :cond_31
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 904
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextBlend:F

    int-to-float v4, v0

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 906
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_5c

    .line 907
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 911
    invoke-virtual {v7}, Landroid/text/TextPaint;->getAlpha()I

    move-result v7

    invoke-static {v6, v7}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v6

    .line 907
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 913
    :cond_5c
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v1

    .line 914
    .local v1, "lineBaseline":I
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    .line 917
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    int-to-float v9, v1

    iget-object v10, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 914
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 923
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_85

    .line 924
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowRadius:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDx:F

    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowDy:F

    iget v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentShadowColor:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 928
    :cond_85
    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-nez v2, :cond_c3

    .line 930
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, "tmp":Ljava/lang/String;
    const-string/jumbo v4, "\u2026"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 932
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 935
    :cond_a6
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 936
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    .line 939
    invoke-virtual {v4, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v9, v1

    iget-object v10, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 936
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 944
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_c3
    return-void
.end method

.method private ensureExpandedTexture()V
    .registers 6

    .line 1112
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4c

    .line 1116
    :cond_15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateOffsets(F)V

    .line 1117
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    .line 1118
    .local v0, "width":I
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    .line 1120
    .local v1, "height":I
    if-lez v0, :cond_4b

    if-gtz v1, :cond_2a

    goto :goto_4b

    .line 1124
    :cond_2a
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 1125
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1126
    .local v2, "c":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1128
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    if-nez v3, :cond_4a

    .line 1130
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    .line 1132
    :cond_4a
    return-void

    .line 1121
    .end local v2    # "c":Landroid/graphics/Canvas;
    :cond_4b
    :goto_4b
    return-void

    .line 1113
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_4c
    :goto_4c
    return-void
.end method

.method private getCollapsedTextLeftBound(II)F
    .registers 6
    .param p1, "width"    # I
    .param p2, "gravity"    # I

    .line 285
    const/16 v0, 0x11

    if-eq p2, v0, :cond_3d

    and-int/lit8 v0, p2, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_3d

    .line 288
    :cond_a
    const v0, 0x800005

    and-int v1, p2, v0

    if-eq v1, v0, :cond_2a

    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    goto :goto_2a

    .line 292
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    sub-float/2addr v0, v1

    goto :goto_29

    :cond_24
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    :goto_29
    return v0

    .line 290
    :cond_2a
    :goto_2a
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    goto :goto_3c

    :cond_34
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    sub-float/2addr v0, v1

    :goto_3c
    return v0

    .line 287
    :cond_3d
    :goto_3d
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    return v0
.end method

.method private getCollapsedTextRightBound(Landroid/graphics/RectF;II)F
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "width"    # I
    .param p3, "gravity"    # I

    .line 297
    const/16 v0, 0x11

    if-eq p3, v0, :cond_37

    and-int/lit8 v0, p3, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_37

    .line 300
    :cond_a
    const v0, 0x800005

    and-int v1, p3, v0

    if-eq v1, v0, :cond_27

    and-int/lit8 v0, p3, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    goto :goto_27

    .line 304
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    goto :goto_26

    :cond_21
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    add-float/2addr v0, v1

    :goto_26
    return v0

    .line 302
    :cond_27
    :goto_27
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz v0, :cond_31

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    add-float/2addr v0, v1

    goto :goto_36

    :cond_31
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    :goto_36
    return v0

    .line 299
    :cond_37
    :goto_37
    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextWidth:F

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private getCurrentColor(Landroid/content/res/ColorStateList;)I
    .registers 4
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 710
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 711
    return v0

    .line 713
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    if-eqz v1, :cond_f

    .line 714
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 716
    :cond_f
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private getCurrentExpandedTextColor()I
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method private getMultilineTextLayoutAlignment()Landroid/text/Layout$Alignment;
    .registers 3

    .line 1097
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    .line 1100
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 1098
    invoke-static {v0, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1101
    .local v0, "absoluteGravity":I
    and-int/lit8 v1, v0, 0x7

    sparse-switch v1, :sswitch_data_24

    .line 1107
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz v1, :cond_21

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_23

    .line 1105
    :sswitch_14
    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz v1, :cond_1b

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1d

    :cond_1b
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_1d
    return-object v1

    .line 1103
    :sswitch_1e
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v1

    .line 1107
    :cond_21
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_23
    return-object v1

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_1e
        0x5 -> :sswitch_14
    .end sparse-switch
.end method

.method private getTextPaintCollapsed(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 353
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 354
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 355
    nop

    .line 356
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 358
    return-void
.end method

.method private getTextPaintExpanded(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 345
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 346
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 347
    nop

    .line 348
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 350
    return-void
.end method

.method private interpolateBounds(F)V
    .registers 6
    .param p1, "fraction"    # F

    .line 815
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-eqz v0, :cond_15

    .line 816
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_f

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    :goto_11
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_5f

    .line 818
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 819
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 820
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 821
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 822
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 823
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 824
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 826
    :goto_5f
    return-void
.end method

.method private static isClose(FF)Z
    .registers 4
    .param p0, "value"    # F
    .param p1, "targetValue"    # F

    .line 1247
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isDefaultIsRtl()Z
    .registers 3

    .line 954
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private isTextDirectionHeuristicsIsRtl(Ljava/lang/CharSequence;Z)Z
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultIsRtl"    # Z

    .line 958
    if-eqz p2, :cond_5

    .line 959
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_7

    .line 960
    :cond_5
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_7
    nop

    .line 961
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 958
    return v0
.end method

.method private static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .registers 5
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 1284
    if-eqz p3, :cond_6

    .line 1285
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 1287
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private measureTextWidth(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F
    .registers 5
    .param p1, "textPaint"    # Landroid/text/TextPaint;
    .param p2, "textToDraw"    # Ljava/lang/CharSequence;

    .line 811
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .registers 6
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1291
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private setCollapsedTextBlend(F)V
    .registers 3
    .param p1, "blend"    # F

    .line 829
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextBlend:F

    .line 830
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 831
    return-void
.end method

.method private setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 485
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v0, :cond_9

    .line 486
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    .line 488
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_31

    .line 489
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 490
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 491
    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    .line 493
    nop

    .line 494
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    goto :goto_2d

    :cond_2b
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    :goto_2d
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 495
    const/4 v0, 0x1

    return v0

    .line 497
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private setExpandedTextBlend(F)V
    .registers 3
    .param p1, "blend"    # F

    .line 834
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextBlend:F

    .line 835
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 836
    return-void
.end method

.method private setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 504
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v0, :cond_9

    .line 505
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    .line 507
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_31

    .line 508
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 509
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    .line 511
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 510
    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    .line 512
    nop

    .line 513
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    goto :goto_2d

    :cond_2b
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    :goto_2d
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 514
    const/4 v0, 0x1

    return v0

    .line 516
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private setInterpolatedTextSize(F)V
    .registers 4
    .param p1, "fraction"    # F

    .line 965
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 968
    sget-boolean v0, Lcom/google/android/material/internal/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    .line 970
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    if-eqz v0, :cond_1b

    .line 972
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->ensureExpandedTexture()V

    .line 975
    :cond_1b
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 976
    return-void
.end method

.method private shouldDrawMultiline()Z
    .registers 3

    .line 881
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-eqz v0, :cond_12

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    if-nez v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 839
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 841
    .local v0, "saveCount":I
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7f

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7f

    .line 842
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 843
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    .line 844
    .local v1, "x":F
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    .line 845
    .local v2, "y":F
    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_33

    const/4 v3, 0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    .line 857
    .local v3, "drawTexture":Z
    :goto_34
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_47

    iget-boolean v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-nez v5, :cond_47

    .line 858
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    invoke-virtual {p1, v5, v6, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 861
    :cond_47
    if-eqz v3, :cond_54

    .line 863
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 864
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 865
    return-void

    .line 868
    :cond_54
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->shouldDrawMultiline()Z

    move-result v5

    if-eqz v5, :cond_74

    iget-boolean v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    if-eqz v5, :cond_66

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_74

    .line 870
    :cond_66
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v5, v4

    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->drawMultilineTransition(Landroid/graphics/Canvas;FF)V

    goto :goto_7c

    .line 872
    :cond_74
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 873
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 876
    :goto_7c
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 878
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "drawTexture":Z
    :cond_7f
    return-void
.end method

.method public getCollapsedTextActualBounds(Landroid/graphics/RectF;II)V
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "labelWidth"    # I
    .param p3, "textGravity"    # I

    .line 276
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    .line 277
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextLeftBound(II)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 278
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 279
    nop

    .line 280
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextRightBound(Landroid/graphics/RectF;II)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 281
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 282
    return-void
.end method

.method public getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1255
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCollapsedTextGravity()I
    .registers 2

    .line 379
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    return v0
.end method

.method public getCollapsedTextHeight()F
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 323
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public getCollapsedTextSize()F
    .registers 2

    .line 587
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    return v0
.end method

.method public getCollapsedTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_7
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_9
    return-object v0
.end method

.method public getCurrentCollapsedTextColor()I
    .registers 2

    .line 705
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public getExpandedLineCount()I
    .registers 2

    .line 1200
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLineCount:I

    return v0
.end method

.method public getExpandedTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1251
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getExpandedTextFullHeight()F
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintExpanded(Landroid/text/TextPaint;)V

    .line 317
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getExpandedTextGravity()I
    .registers 2

    .line 368
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    return v0
.end method

.method public getExpandedTextHeight()F
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintExpanded(Landroid/text/TextPaint;)V

    .line 311
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public getExpandedTextSize()F
    .registers 2

    .line 591
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    return v0
.end method

.method public getExpandedTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 524
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_7
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_9
    return-object v0
.end method

.method public getExpansionFraction()F
    .registers 2

    .line 583
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    return v0
.end method

.method public getFadeModeThresholdFraction()F
    .registers 2

    .line 579
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    return v0
.end method

.method public getHyphenationFrequency()I
    .registers 2

    .line 1230
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    return v0
.end method

.method public getLineCount()I
    .registers 2

    .line 1191
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getLineSpacingAdd()F
    .registers 2

    .line 1210
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getSpacingAdd()F

    move-result v0

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .registers 2

    .line 1220
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getSpacingMultiplier()F

    move-result v0

    return v0
.end method

.method public getMaxLines()I
    .registers 2

    .line 1182
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    return v0
.end method

.method public getPositionInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1163
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleTextEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    .line 458
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public isRtlTextDirectionHeuristicsEnabled()Z
    .registers 2

    .line 599
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    return v0
.end method

.method public final isStateful()Z
    .registers 2

    .line 574
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 575
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 574
    :goto_1b
    return v0
.end method

.method public maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 528
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3a

    .line 529
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    if-eqz v0, :cond_12

    .line 530
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    .line 531
    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    .line 534
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1e

    .line 535
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    .line 536
    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    .line 538
    :cond_1e
    nop

    .line 539
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceBold:Landroid/graphics/Typeface;

    goto :goto_28

    :cond_26
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypefaceDefault:Landroid/graphics/Typeface;

    :goto_28
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 540
    nop

    .line 541
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceBold:Landroid/graphics/Typeface;

    goto :goto_34

    :cond_32
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypefaceDefault:Landroid/graphics/Typeface;

    :goto_34
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 542
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    .line 544
    :cond_3a
    return-void
.end method

.method public recalculate()V
    .registers 2

    .line 1135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    .line 1136
    return-void
.end method

.method public recalculate(Z)V
    .registers 3
    .param p1, "forceRecalculate"    # Z

    .line 1139
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_12

    :cond_10
    if-eqz p1, :cond_18

    .line 1142
    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateBaseOffsets(Z)V

    .line 1143
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 1145
    :cond_18
    return-void
.end method

.method public setCollapsedAndExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 239
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_8

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_f

    .line 240
    :cond_8
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 241
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 244
    :cond_f
    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 265
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_10

    .line 266
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    .line 269
    :cond_10
    return-void
.end method

.method public setCollapsedBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 272
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 273
    return-void
.end method

.method public setCollapsedTextAppearance(I)V
    .registers 6
    .param p1, "resId"    # I

    .line 383
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 385
    .local v0, "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 386
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 388
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_26

    .line 389
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 391
    :cond_26
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2e

    .line 392
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    .line 394
    :cond_2e
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    .line 395
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    .line 396
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 397
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedLetterSpacing:F

    .line 400
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v1, :cond_47

    .line 401
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v1}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    .line 403
    :cond_47
    new-instance v1, Lcom/google/android/material/resources/CancelableFontCallback;

    new-instance v2, Lcom/google/android/material/internal/CollapsingTextHelper$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/internal/CollapsingTextHelper$1;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;)V

    .line 411
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 412
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 414
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 415
    return-void
.end method

.method public setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 225
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 226
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 227
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 229
    :cond_9
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 372
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    if-eq v0, p1, :cond_9

    .line 373
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    .line 374
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 376
    :cond_9
    return-void
.end method

.method public setCollapsedTextSize(F)V
    .registers 3
    .param p1, "textSize"    # F

    .line 218
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 219
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    .line 220
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 222
    :cond_b
    return-void
.end method

.method public setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 462
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 463
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 465
    :cond_9
    return-void
.end method

.method public setCurrentOffsetY(I)V
    .registers 2
    .param p1, "currentOffsetY"    # I

    .line 327
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentOffsetY:I

    .line 328
    return-void
.end method

.method public setExpandedBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 254
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_10

    .line 255
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    .line 258
    :cond_10
    return-void
.end method

.method public setExpandedBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 261
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 262
    return-void
.end method

.method public setExpandedLetterSpacing(F)V
    .registers 3
    .param p1, "letterSpacing"    # F

    .line 247
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 248
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    .line 249
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 251
    :cond_b
    return-void
.end method

.method public setExpandedTextAppearance(I)V
    .registers 6
    .param p1, "resId"    # I

    .line 418
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 419
    .local v0, "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 420
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 422
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_26

    .line 423
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 425
    :cond_26
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2e

    .line 426
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:Landroid/content/res/ColorStateList;

    .line 428
    :cond_2e
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    .line 429
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    .line 430
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    .line 431
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedLetterSpacing:F

    .line 434
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v1, :cond_47

    .line 435
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v1}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    .line 437
    :cond_47
    new-instance v1, Lcom/google/android/material/resources/CancelableFontCallback;

    new-instance v2, Lcom/google/android/material/internal/CollapsingTextHelper$2;

    invoke-direct {v2, p0}, Lcom/google/android/material/internal/CollapsingTextHelper$2;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;)V

    .line 445
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 446
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 448
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 449
    return-void
.end method

.method public setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 232
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 233
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 236
    :cond_9
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 361
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    if-eq v0, p1, :cond_9

    .line 362
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 365
    :cond_9
    return-void
.end method

.method public setExpandedTextSize(F)V
    .registers 3
    .param p1, "textSize"    # F

    .line 211
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 212
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 215
    :cond_b
    return-void
.end method

.method public setExpandedTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 468
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 469
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 471
    :cond_9
    return-void
.end method

.method public setExpansionFraction(F)V
    .registers 4
    .param p1, "fraction"    # F

    .line 554
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 556
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    .line 557
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    .line 558
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 560
    :cond_12
    return-void
.end method

.method public setFadeModeEnabled(Z)V
    .registers 2
    .param p1, "fadeModeEnabled"    # Z

    .line 341
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeEnabled:Z

    .line 342
    return-void
.end method

.method public setFadeModeStartFraction(F)V
    .registers 3
    .param p1, "fadeModeStartFraction"    # F

    .line 331
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    .line 332
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateFadeModeThresholdFraction()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 333
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .registers 2
    .param p1, "hyphenationFrequency"    # I

    .line 1225
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    .line 1226
    return-void
.end method

.method public setLineSpacingAdd(F)V
    .registers 2
    .param p1, "spacingAdd"    # F

    .line 1205
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingAdd:F

    .line 1206
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .registers 2
    .param p1, "spacingMultiplier"    # F

    .line 1215
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    .line 1216
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3
    .param p1, "maxLines"    # I

    .line 1174
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    if-eq p1, v0, :cond_c

    .line 1175
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    .line 1176
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    .line 1177
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 1179
    :cond_c
    return-void
.end method

.method public setPositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 201
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 202
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 203
    return-void
.end method

.method public setRtlTextDirectionHeuristicsEnabled(Z)V
    .registers 2
    .param p1, "rtlTextDirectionHeuristicsEnabled"    # Z

    .line 595
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled:Z

    .line 596
    return-void
.end method

.method public final setState([I)Z
    .registers 3
    .param p1, "state"    # [I

    .line 563
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    .line 565
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 566
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 567
    const/4 v0, 0x1

    return v0

    .line 570
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public setStaticLayoutBuilderConfigurer(Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;)V
    .registers 3
    .param p1, "staticLayoutBuilderConfigurer"    # Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    .line 1236
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    if-eq v0, p1, :cond_a

    .line 1237
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    .line 1238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    .line 1240
    :cond_a
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1153
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1154
    :cond_a
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 1156
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    .line 1157
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 1159
    :cond_15
    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 196
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 197
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 198
    return-void
.end method

.method public setTitleTextEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 2
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .line 452
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->titleTextEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 453
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 454
    return-void
.end method

.method public setTypefaces(Landroid/graphics/Typeface;)V
    .registers 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 474
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result v0

    .line 475
    .local v0, "collapsedFontChanged":Z
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result v1

    .line 476
    .local v1, "expandedFontChanged":Z
    if-nez v0, :cond_c

    if-eqz v1, :cond_f

    .line 477
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 479
    :cond_f
    return-void
.end method
