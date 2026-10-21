.class public Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;
.super Ljava/lang/Object;
.source "FastScrollPopup.java"


# instance fields
.field private mAlpha:F

.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundPath:Landroid/graphics/Path;

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mBackgroundSize:I

.field private mBgBounds:Landroid/graphics/Rect;

.field private mCornerRadius:I

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mPosition:I

.field private mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

.field private mRes:Landroid/content/res/Resources;

.field private mSectionName:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextVerticalAlignmentMode:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "recyclerView"    # Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundPath:Landroid/graphics/Path;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundRect:Landroid/graphics/RectF;

    .line 46
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundColor:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mAlpha:F

    .line 69
    iput-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRes:Landroid/content/res/Resources;

    .line 71
    iput-object p2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRes:Landroid/content/res/Resources;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/utils/Utils;->toScreenPixels(Landroid/content/res/Resources;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setTextSize(I)V

    .line 79
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRes:Landroid/content/res/Resources;

    const/high16 v1, 0x42780000    # 62.0f

    invoke-static {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/utils/Utils;->toPixels(Landroid/content/res/Resources;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->setBackgroundSize(I)V

    .line 80
    return-void
.end method

.method private createRadii()[F
    .locals 16

    .line 155
    move-object/from16 v0, p0

    iget v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mPosition:I

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    .line 156
    iget v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v1, v1

    iget v11, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v11, v11

    iget v12, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v12, v12

    iget v13, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v13, v13

    iget v14, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v14, v14

    iget v15, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v15, v15

    iget v2, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v2, v2

    iget v3, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v3, v3

    new-array v9, v9, [F

    aput v1, v9, v8

    aput v11, v9, v10

    aput v12, v9, v7

    aput v13, v9, v6

    aput v14, v9, v5

    aput v15, v9, v4

    const/4 v1, 0x6

    aput v2, v9, v1

    const/4 v1, 0x7

    aput v3, v9, v1

    return-object v9

    .line 159
    :cond_0
    iget-object v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRes:Landroid/content/res/Resources;

    invoke-static {v1}, Lcom/simplecityapps/recyclerview_fastscroll/utils/Utils;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 160
    iget v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v1, v1

    iget v3, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v3, v3

    iget v11, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v11, v11

    iget v12, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v12, v12

    iget v13, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v13, v13

    iget v14, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v14, v14

    new-array v9, v9, [F

    aput v1, v9, v8

    aput v3, v9, v10

    aput v11, v9, v7

    aput v12, v9, v6

    aput v13, v9, v5

    aput v14, v9, v4

    const/4 v1, 0x6

    aput v2, v9, v1

    const/4 v1, 0x7

    aput v2, v9, v1

    return-object v9

    .line 162
    :cond_1
    iget v1, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v1, v1

    iget v3, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v3, v3

    iget v11, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v11, v11

    iget v12, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v12, v12

    iget v13, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v13, v13

    iget v14, v0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    int-to-float v14, v14

    new-array v9, v9, [F

    aput v1, v9, v8

    aput v3, v9, v10

    aput v11, v9, v7

    aput v12, v9, v6

    aput v2, v9, v5

    aput v2, v9, v4

    const/4 v1, 0x6

    aput v13, v9, v1

    const/4 v1, 0x7

    aput v14, v9, v1

    return-object v9
.end method


# virtual methods
.method public animateVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 113
    iget-boolean v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mVisible:Z

    if-eq v0, p1, :cond_3

    .line 114
    iput-boolean p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mVisible:Z

    .line 115
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 118
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const-string v0, "alpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 119
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    const-wide/16 v1, 0xc8

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x96

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->prepare(Landroid/animation/Animator;)V
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 122
    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 167
    invoke-virtual {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 170
    .local v0, "restoreCount":I
    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 172
    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 174
    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 175
    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 177
    invoke-direct {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->createRadii()[F

    move-result-object v1

    .line 179
    .local v1, "radii":[F
    iget v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextVerticalAlignmentMode:I

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_0

    .line 180
    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 181
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget-object v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v5

    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    .line 182
    .end local v2    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .local v3, "baselinePosition":F
    goto :goto_0

    .line 183
    .end local v3    # "baselinePosition":F
    :cond_0
    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float v3, v2, v4

    .line 186
    .restart local v3    # "baselinePosition":F
    :goto_0
    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v1, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 188
    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mAlpha:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mAlpha:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mSectionName:Ljava/lang/String;

    iget-object v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    .line 193
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    .line 191
    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 197
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 199
    .end local v0    # "restoreCount":I
    .end local v1    # "radii":[F
    .end local v3    # "baselinePosition":F
    :cond_1
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mAlpha:F

    return v0
.end method

.method public getPopupPosition()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mPosition:I

    return v0
.end method

.method public getPopupTextVerticalAlignmentMode()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextVerticalAlignmentMode:I

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .line 250
    iget v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mSectionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 127
    iput p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mAlpha:F

    .line 128
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 129
    return-void
.end method

.method public setBackgroundSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 99
    iput p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundSize:I

    .line 100
    iget v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mCornerRadius:I

    .line 101
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 102
    return-void
.end method

.method public setBgColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 83
    iput p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundColor:I

    .line 84
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 86
    return-void
.end method

.method public setPopupPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 146
    iput p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mPosition:I

    .line 147
    return-void
.end method

.method public setPopupTextVerticalAlignmentMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 137
    iput p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextVerticalAlignmentMode:I

    .line 138
    return-void
.end method

.method public setSectionName(Ljava/lang/String;)V
    .locals 4
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mSectionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iput-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mSectionName:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 206
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 208
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 89
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 91
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 94
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 96
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 105
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 106
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 107
    return-void
.end method

.method public updateFastScrollerBounds(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;I)Landroid/graphics/Rect;
    .locals 9
    .param p1, "recyclerView"    # Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    .param p2, "thumbOffsetY"    # I

    .line 216
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 218
    invoke-virtual {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getScrollBarWidth()I

    move-result v0

    .line 221
    .local v0, "edgePadding":I
    iget v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundSize:I

    iget-object v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    .line 222
    .local v1, "bgPadding":I
    iget v2, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundSize:I

    .line 223
    .local v2, "bgHeight":I
    iget v3, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBackgroundSize:I

    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 224
    .local v3, "bgWidth":I
    iget v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 225
    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 226
    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 227
    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 229
    :cond_0
    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mRes:Landroid/content/res/Resources;

    invoke-static {v4}, Lcom/simplecityapps/recyclerview_fastscroll/utils/Utils;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getScrollBarWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 231
    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 233
    :cond_1
    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getScrollBarWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 234
    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 236
    :goto_0
    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, p2

    sub-int/2addr v5, v2

    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getScrollBarThumbHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 237
    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v0

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 239
    :goto_1
    iget-object v4, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 240
    .end local v0    # "edgePadding":I
    .end local v1    # "bgPadding":I
    .end local v2    # "bgHeight":I
    .end local v3    # "bgWidth":I
    goto :goto_2

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 245
    :goto_2
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 246
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    return-object v0
.end method
