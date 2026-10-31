.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mStacked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 54
    sget-object v0, Landroidx/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget-object v3, Landroidx/appcompat/R$styleable;->ButtonBarLayout:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 57
    sget v1, Landroidx/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v2, :cond_2e

    .line 63
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 65
    :cond_2e
    return-void
.end method

.method private getNextVisibleChildIndex(I)I
    .registers 5
    .param p1, "index"    # I

    .line 156
    move v0, p1

    .local v0, "i":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 157
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    .line 158
    return v0

    .line 156
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 161
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private isStacked()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    return v0
.end method

.method private setStacked(Z)V
    .registers 6
    .param p1, "stacked"    # Z

    .line 165
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    if-eq v0, p1, :cond_3d

    if-eqz p1, :cond_a

    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v0, :cond_3d

    .line 166
    :cond_a
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mStacked:Z

    .line 168
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setOrientation(I)V

    .line 169
    if-eqz p1, :cond_15

    const v0, 0x800005

    goto :goto_17

    :cond_15
    const/16 v0, 0x50

    :goto_17
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->setGravity(I)V

    .line 171
    sget v0, Landroidx/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_2b

    .line 173
    if-eqz p1, :cond_27

    const/16 v1, 0x8

    goto :goto_28

    :cond_27
    const/4 v1, 0x4

    :goto_28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_2b
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .line 179
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x2

    .local v2, "i":I
    :goto_31
    if-ltz v2, :cond_3d

    .line 180
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 179
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    .line 183
    .end local v0    # "spacer":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_3d
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 81
    .local v0, "widthSize":I
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 82
    iget v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v0, v1, :cond_16

    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 84
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 87
    :cond_16
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 90
    :cond_18
    const/4 v1, 0x0

    .line 96
    .local v1, "needsRemeasure":Z
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_2f

    .line 97
    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 100
    .local v3, "initialWidthMeasureSpec":I
    const/4 v1, 0x1

    goto :goto_30

    .line 102
    .end local v3    # "initialWidthMeasureSpec":I
    :cond_2f
    move v3, p1

    .line 105
    .restart local v3    # "initialWidthMeasureSpec":I
    :goto_30
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 107
    iget-boolean v4, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v4, :cond_52

    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v4

    if-nez v4, :cond_52

    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v4

    .line 111
    .local v4, "measuredWidth":I
    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    .line 112
    .local v5, "measuredWidthState":I
    const/high16 v6, 0x1000000

    const/4 v7, 0x1

    if-ne v5, v6, :cond_4b

    const/4 v6, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v6, 0x0

    .line 114
    .local v6, "stack":Z
    :goto_4c
    if-eqz v6, :cond_52

    .line 115
    invoke-direct {p0, v7}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 117
    const/4 v1, 0x1

    .line 121
    .end local v4    # "measuredWidth":I
    .end local v5    # "measuredWidthState":I
    .end local v6    # "stack":Z
    :cond_52
    if-eqz v1, :cond_57

    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 127
    :cond_57
    const/4 v4, 0x0

    .line 128
    .local v4, "minHeight":I
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v2

    .line 129
    .local v2, "firstVisible":I
    if-ltz v2, :cond_a5

    .line 130
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 131
    .local v5, "firstButton":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    .local v6, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 134
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 135
    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v7}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v7

    .line 136
    .local v7, "secondVisible":I
    if-ltz v7, :cond_9f

    .line 137
    invoke-virtual {p0, v7}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 138
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x41800000    # 16.0f

    mul-float v9, v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 140
    .end local v7    # "secondVisible":I
    :cond_9f
    goto :goto_a5

    .line 141
    :cond_a0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    .line 145
    .end local v5    # "firstButton":Landroid/view/View;
    .end local v6    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a5
    :goto_a5
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    if-eq v5, v4, :cond_b3

    .line 146
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 149
    if-nez p2, :cond_b3

    .line 150
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 153
    :cond_b3
    return-void
.end method

.method public setAllowStacking(Z)V
    .registers 3
    .param p1, "allowStacking"    # Z

    .line 68
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_17

    .line 69
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 70
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_14

    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 73
    :cond_14
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->requestLayout()V

    .line 75
    :cond_17
    return-void
.end method
