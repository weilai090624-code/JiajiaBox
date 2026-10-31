.class public Landroidx/constraintlayout/widget/ReactiveGuide;
.super Landroid/view/View;
.source "ReactiveGuide.java"

# interfaces
.implements Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;


# instance fields
.field private mAnimateChange:Z

.field private mApplyToAllConstraintSets:Z

.field private mApplyToConstraintSetId:I

.field private mAttributeId:I


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

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    .line 34
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    .line 39
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ReactiveGuide;->init(Landroid/util/AttributeSet;)V

    .line 41
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

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    .line 34
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    .line 45
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ReactiveGuide;->init(Landroid/util/AttributeSet;)V

    .line 47
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

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    .line 34
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    .line 51
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ReactiveGuide;->init(Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    .line 34
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    .line 57
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ReactiveGuide;->init(Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method private changeValue(IILandroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .registers 6
    .param p1, "newValue"    # I
    .param p2, "id"    # I
    .param p3, "motionLayout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p4, "currentState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "newValue",
            "id",
            "motionLayout",
            "currentState"
        }
    .end annotation

    .line 208
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    .line 209
    .local v0, "constraintSet":Landroidx/constraintlayout/widget/ConstraintSet;
    invoke-virtual {v0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    .line 210
    invoke-virtual {p3, p4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 211
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 62
    if-eqz p1, :cond_50

    .line 63
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_ReactiveGuide:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 65
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_4d

    .line 66
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 67
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_ReactiveGuide_reactiveGuide_valueId:I

    if-ne v3, v4, :cond_24

    .line 68
    iget v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    goto :goto_4a

    .line 69
    :cond_24
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_ReactiveGuide_reactiveGuide_animateChange:I

    if-ne v3, v4, :cond_31

    .line 70
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    goto :goto_4a

    .line 71
    :cond_31
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_ReactiveGuide_reactiveGuide_applyToConstraintSet:I

    if-ne v3, v4, :cond_3e

    .line 72
    iget v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    goto :goto_4a

    .line 73
    :cond_3e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_ReactiveGuide_reactiveGuide_applyToAllConstraintSets:I

    if-ne v3, v4, :cond_4a

    .line 74
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    .line 65
    .end local v3    # "attr":I
    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 77
    .end local v2    # "i":I
    :cond_4d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    :cond_50
    iget v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5e

    .line 80
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Landroidx/constraintlayout/widget/SharedValues;

    move-result-object v0

    .line 81
    .local v0, "sharedValues":Landroidx/constraintlayout/widget/SharedValues;
    iget v1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/widget/SharedValues;->addListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V

    .line 83
    .end local v0    # "sharedValues":Landroidx/constraintlayout/widget/SharedValues;
    :cond_5e
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 125
    return-void
.end method

.method public getApplyToConstraintSetId()I
    .registers 2

    .line 99
    iget v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    return v0
.end method

.method public getAttributeId()I
    .registers 2

    .line 85
    iget v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    return v0
.end method

.method public isAnimatingChange()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    return v0
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/constraintlayout/widget/ReactiveGuide;->setMeasuredDimension(II)V

    .line 133
    return-void
.end method

.method public onNewValue(III)V
    .registers 10
    .param p1, "key"    # I
    .param p2, "newValue"    # I
    .param p3, "oldValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "newValue",
            "oldValue"
        }
    .end annotation

    .line 169
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ReactiveGuide;->setGuidelineBegin(I)V

    .line 170
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getId()I

    move-result v0

    .line 171
    .local v0, "id":I
    if-gtz v0, :cond_a

    .line 172
    return-void

    .line 174
    :cond_a
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v1, :cond_61

    .line 175
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 176
    .local v1, "motionLayout":Landroidx/constraintlayout/motion/widget/MotionLayout;
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v2

    .line 177
    .local v2, "currentState":I
    iget v3, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    if-eqz v3, :cond_22

    .line 178
    iget v2, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    .line 180
    :cond_22
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    if-eqz v3, :cond_49

    .line 181
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    if-eqz v3, :cond_3c

    .line 182
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v3

    .line 183
    .local v3, "ids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f
    array-length v5, v3

    if-ge v4, v5, :cond_3c

    .line 184
    aget v5, v3, v4

    .line 185
    .local v5, "cs":I
    if-eq v5, v2, :cond_39

    .line 186
    invoke-direct {p0, p2, v0, v1, v5}, Landroidx/constraintlayout/widget/ReactiveGuide;->changeValue(IILandroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 183
    .end local v5    # "cs":I
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 190
    .end local v3    # "ids":[I
    .end local v4    # "i":I
    :cond_3c
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->cloneConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    .line 191
    .local v3, "constraintSet":Landroidx/constraintlayout/widget/ConstraintSet;
    invoke-virtual {v3, v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    .line 192
    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateStateAnimate(ILandroidx/constraintlayout/widget/ConstraintSet;I)V

    .line 193
    .end local v3    # "constraintSet":Landroidx/constraintlayout/widget/ConstraintSet;
    goto :goto_61

    .line 194
    :cond_49
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    if-eqz v3, :cond_5e

    .line 195
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v3

    .line 196
    .local v3, "ids":[I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_52
    array-length v5, v3

    if-ge v4, v5, :cond_5d

    .line 197
    aget v5, v3, v4

    .line 198
    .restart local v5    # "cs":I
    invoke-direct {p0, p2, v0, v1, v5}, Landroidx/constraintlayout/widget/ReactiveGuide;->changeValue(IILandroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 196
    .end local v5    # "cs":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 200
    .end local v3    # "ids":[I
    .end local v4    # "i":I
    :cond_5d
    goto :goto_61

    .line 201
    :cond_5e
    invoke-direct {p0, p2, v0, v1, v2}, Landroidx/constraintlayout/widget/ReactiveGuide;->changeValue(IILandroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 205
    .end local v1    # "motionLayout":Landroidx/constraintlayout/motion/widget/MotionLayout;
    .end local v2    # "currentState":I
    :cond_61
    :goto_61
    return-void
.end method

.method public setAnimateChange(Z)V
    .registers 2
    .param p1, "animate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animate"
        }
    .end annotation

    .line 109
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    .line 110
    return-void
.end method

.method public setApplyToConstraintSetId(I)V
    .registers 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 103
    iput p1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    .line 104
    return-void
.end method

.method public setAttributeId(I)V
    .registers 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 88
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Landroidx/constraintlayout/widget/SharedValues;

    move-result-object v0

    .line 89
    .local v0, "sharedValues":Landroidx/constraintlayout/widget/SharedValues;
    iget v1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 90
    iget v1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/widget/SharedValues;->removeListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V

    .line 92
    :cond_e
    iput p1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    .line 93
    iget v1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    if-eq v1, v2, :cond_19

    .line 94
    iget v1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/widget/SharedValues;->addListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V

    .line 96
    :cond_19
    return-void
.end method

.method public setGuidelineBegin(I)V
    .registers 3
    .param p1, "margin"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "margin"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 142
    .local v0, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 143
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ReactiveGuide;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    return-void
.end method

.method public setGuidelineEnd(I)V
    .registers 3
    .param p1, "margin"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "margin"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 153
    .local v0, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 154
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ReactiveGuide;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-void
.end method

.method public setGuidelinePercent(F)V
    .registers 3
    .param p1, "ratio"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 163
    .local v0, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 164
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ReactiveGuide;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-void
.end method

.method public setVisibility(I)V
    .registers 2
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 117
    return-void
.end method
