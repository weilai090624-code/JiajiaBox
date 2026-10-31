.class public Landroidx/constraintlayout/utils/widget/MotionButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "MotionButton.java"


# instance fields
.field private mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 60
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 60
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 72
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 60
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 77
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/utils/widget/MotionButton;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/utils/widget/MotionButton;

    .line 58
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/utils/widget/MotionButton;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/utils/widget/MotionButton;

    .line 58
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroidx/constraintlayout/utils/widget/MotionButton;->setPadding(IIII)V

    .line 82
    if-eqz p2, :cond_3b

    .line 83
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    .line 84
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 86
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_38

    .line 87
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 88
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_round:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_29

    .line 89
    nop

    .line 90
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRound(F)V

    goto :goto_35

    .line 92
    :cond_29
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_roundPercent:I

    if-ne v3, v4, :cond_35

    .line 93
    nop

    .line 94
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRoundPercent(F)V

    .line 86
    .end local v3    # "attr":I
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 98
    .end local v2    # "i":I
    :cond_38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    :cond_3b
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "clip":Z
    nop

    .line 238
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->draw(Landroid/graphics/Canvas;)V

    .line 239
    if-eqz v0, :cond_a

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 242
    :cond_a
    return-void
.end method

.method public getRound()F
    .registers 2

    .line 225
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    return v0
.end method

.method public getRoundPercent()F
    .registers 2

    .line 216
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    return v0
.end method

.method public setRound(F)V
    .registers 10
    .param p1, "round"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    .line 160
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 161
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 162
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 163
    .local v0, "tmp":F
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 164
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRoundPercent(F)V

    .line 165
    return-void

    .line 167
    .end local v0    # "tmp":F
    :cond_12
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 168
    .local v0, "change":Z
    :goto_1d
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 170
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_72

    .line 171
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    if-nez v2, :cond_31

    .line 172
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    .line 174
    :cond_31
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    if-nez v2, :cond_3c

    .line 175
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    .line 177
    :cond_3c
    nop

    .line 178
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v2, :cond_4d

    .line 179
    new-instance v2, Landroidx/constraintlayout/utils/widget/MotionButton$2;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/MotionButton$2;-><init>(Landroidx/constraintlayout/utils/widget/MotionButton;)V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 187
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 189
    :cond_4d
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    .line 192
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getWidth()I

    move-result v1

    .line 193
    .local v1, "w":I
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getHeight()I

    move-result v2

    .line 194
    .local v2, "h":I
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v3, v4, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 195
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 196
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 197
    .end local v1    # "w":I
    .end local v2    # "h":I
    goto :goto_76

    .line 198
    :cond_72
    nop

    .line 199
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    .line 202
    :goto_76
    if-eqz v0, :cond_7c

    .line 203
    nop

    .line 204
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->invalidateOutline()V

    .line 208
    :cond_7c
    return-void
.end method

.method public setRoundPercent(F)V
    .registers 10
    .param p1, "round"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    .line 110
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 111
    .local v0, "change":Z
    :goto_b
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 112
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_68

    .line 113
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    if-nez v2, :cond_1f

    .line 114
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    .line 116
    :cond_1f
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    if-nez v2, :cond_2a

    .line 117
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    .line 119
    :cond_2a
    nop

    .line 120
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v2, :cond_3b

    .line 121
    new-instance v2, Landroidx/constraintlayout/utils/widget/MotionButton$1;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/utils/widget/MotionButton$1;-><init>(Landroidx/constraintlayout/utils/widget/MotionButton;)V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 130
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 132
    :cond_3b
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    .line 134
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getWidth()I

    move-result v1

    .line 135
    .local v1, "w":I
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->getHeight()I

    move-result v2

    .line 136
    .local v2, "h":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    mul-float v3, v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 137
    .local v3, "r":F
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 138
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 139
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v3, v3, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 140
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "r":F
    goto :goto_6c

    .line 141
    :cond_68
    nop

    .line 142
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton;->setClipToOutline(Z)V

    .line 145
    :goto_6c
    if-eqz v0, :cond_72

    .line 146
    nop

    .line 147
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionButton;->invalidateOutline()V

    .line 151
    :cond_72
    return-void
.end method
