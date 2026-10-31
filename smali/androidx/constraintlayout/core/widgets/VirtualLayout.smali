.class public Landroidx/constraintlayout/core/widgets/VirtualLayout;
.super Landroidx/constraintlayout/core/widgets/HelperWidget;
.source "VirtualLayout.java"


# instance fields
.field protected mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

.field private mNeedsCallFromSolver:Z

.field private mPaddingBottom:I

.field private mPaddingEnd:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingStart:I

.field private mPaddingTop:I

.field private mResolvedPaddingLeft:I

.field private mResolvedPaddingRight:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 31
    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingLeft:I

    .line 33
    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingRight:I

    .line 34
    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingStart:I

    .line 35
    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingEnd:I

    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 39
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredWidth:I

    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredHeight:I

    .line 43
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    return-void
.end method


# virtual methods
.method public applyRtl(Z)V
    .registers 3
    .param p1, "isRtl"    # Z

    .line 74
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingStart:I

    if-gtz v0, :cond_8

    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingEnd:I

    if-lez v0, :cond_1b

    .line 75
    :cond_8
    if-eqz p1, :cond_13

    .line 76
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingEnd:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 77
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingStart:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    goto :goto_1b

    .line 79
    :cond_13
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingStart:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 80
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingEnd:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 83
    :cond_1b
    :goto_1b
    return-void
.end method

.method public captureWidgets()V
    .registers 4

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mWidgetsCount:I

    if-ge v0, v1, :cond_12

    .line 133
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 134
    .local v1, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v1, :cond_f

    .line 135
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInVirtualLayout(Z)V

    .line 132
    .end local v1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public contains(Ljava/util/HashSet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)Z"
        }
    .end annotation

    .line 225
    .local p1, "widgets":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mWidgetsCount:I

    if-ge v0, v1, :cond_14

    .line 226
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 227
    .local v1, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 228
    const/4 v2, 0x1

    return v2

    .line 225
    .end local v1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredHeight()I
    .registers 2

    .line 145
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .registers 2

    .line 141
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .line 100
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .registers 2

    .line 102
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .line 104
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    .line 98
    iget v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    return v0
.end method

.method public measure(IIII)V
    .registers 5
    .param p1, "widthMode"    # I
    .param p2, "widthSize"    # I
    .param p3, "heightMode"    # I
    .param p4, "heightSize"    # I

    .line 124
    return-void
.end method

.method protected measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .registers 8
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "horizontalBehavior"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .param p3, "horizontalDimension"    # I
    .param p4, "verticalBehavior"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .param p5, "verticalDimension"    # I

    .line 209
    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 210
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 211
    .local v0, "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 212
    .end local v0    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    goto :goto_1

    .line 213
    :cond_18
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput-object p2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 214
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput-object p4, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 215
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 216
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput p5, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 218
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 219
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 220
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 221
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 222
    return-void
.end method

.method protected measureChildren()Z
    .registers 10

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "measurer":Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_d

    .line 156
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    .line 158
    :cond_d
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 159
    return v1

    .line 162
    :cond_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    iget v3, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mWidgetsCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_81

    .line 163
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    .line 164
    .local v3, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-nez v3, :cond_1e

    .line 165
    goto :goto_7e

    .line 168
    :cond_1e
    instance-of v5, v3, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v5, :cond_23

    .line 169
    goto :goto_7e

    .line 172
    :cond_23
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    .line 173
    .local v5, "widthBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    .line 175
    .local v6, "heightBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_3c

    iget v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v7, v4, :cond_3c

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_3c

    iget v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v7, v4, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v4, 0x0

    .line 180
    .local v4, "skip":Z
    :goto_3d
    if-eqz v4, :cond_40

    .line 183
    goto :goto_7e

    .line 186
    :cond_40
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_46

    .line 187
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 189
    :cond_46
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_4c

    .line 190
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 192
    :cond_4c
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput-object v5, v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 193
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput-object v6, v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 194
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 195
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 196
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {v0, v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 197
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 198
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 199
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 162
    .end local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v4    # "skip":Z
    .end local v5    # "widthBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v6    # "heightBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 201
    .end local v2    # "i":I
    :cond_81
    return v4
.end method

.method public needSolverPass()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    return v0
.end method

.method protected needsCallbackFromSolver(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 111
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 112
    return-void
.end method

.method public setMeasure(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 149
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredWidth:I

    .line 150
    iput p2, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mMeasuredHeight:I

    .line 151
    return-void
.end method

.method public setPadding(I)V
    .registers 2
    .param p1, "value"    # I

    .line 50
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingLeft:I

    .line 51
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 52
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingRight:I

    .line 53
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 54
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingStart:I

    .line 55
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingEnd:I

    .line 56
    return-void
.end method

.method public setPaddingBottom(I)V
    .registers 2
    .param p1, "value"    # I

    .line 95
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingBottom:I

    .line 96
    return-void
.end method

.method public setPaddingEnd(I)V
    .registers 2
    .param p1, "value"    # I

    .line 65
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingEnd:I

    .line 66
    return-void
.end method

.method public setPaddingLeft(I)V
    .registers 2
    .param p1, "value"    # I

    .line 69
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingLeft:I

    .line 70
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 71
    return-void
.end method

.method public setPaddingRight(I)V
    .registers 2
    .param p1, "value"    # I

    .line 90
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingRight:I

    .line 91
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 92
    return-void
.end method

.method public setPaddingStart(I)V
    .registers 2
    .param p1, "value"    # I

    .line 59
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingStart:I

    .line 60
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 61
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 62
    return-void
.end method

.method public setPaddingTop(I)V
    .registers 2
    .param p1, "value"    # I

    .line 86
    iput p1, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->mPaddingTop:I

    .line 87
    return-void
.end method

.method public updateConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .registers 2
    .param p1, "container"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 128
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->captureWidgets()V

    .line 129
    return-void
.end method
