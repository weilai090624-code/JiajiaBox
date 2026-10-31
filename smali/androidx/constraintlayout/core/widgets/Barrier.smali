.class public Landroidx/constraintlayout/core/widgets/Barrier;
.super Landroidx/constraintlayout/core/widgets/HelperWidget;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2

.field private static final USE_RELAX_GONE:Z = false

.field private static final USE_RESOLUTION:Z = true


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mMargin:I

.field resolved:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "debugName"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    .line 44
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/Barrier;->setDebugName(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 19
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "optimize"    # Z

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 140
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 141
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v6, 0x1

    aput-object v3, v2, v6

    .line 142
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    array-length v3, v3

    if-ge v2, v3, :cond_37

    .line 144
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v3, v2

    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v8, v8, v2

    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    iput-object v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 146
    .end local v2    # "i":I
    :cond_37
    iget v2, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ltz v2, :cond_243

    iget v2, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_243

    .line 147
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v2, v2, v3

    .line 153
    .local v2, "position":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-boolean v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    if-nez v3, :cond_4d

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    .line 156
    :cond_4d
    iget-boolean v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    if-eqz v3, :cond_8a

    .line 157
    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    .line 158
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v3, :cond_77

    iget v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v3, v6, :cond_5c

    goto :goto_77

    .line 161
    :cond_5c
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eq v3, v5, :cond_64

    iget v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v3, v7, :cond_89

    .line 162
    :cond_64
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v4, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mY:I

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 163
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v4, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mY:I

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    goto :goto_89

    .line 159
    :cond_77
    :goto_77
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v4, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mX:I

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 160
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v4, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mX:I

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 165
    :cond_89
    :goto_89
    return-void

    .line 171
    :cond_8a
    const/4 v3, 0x0

    .line 172
    .local v3, "hasMatchConstraintWidgets":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8c
    iget v9, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-ge v8, v9, :cond_de

    .line 173
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v9, v9, v8

    .line 174
    .local v9, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-boolean v10, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v10, :cond_9f

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v10

    if-nez v10, :cond_9f

    .line 175
    goto :goto_db

    .line 177
    :cond_9f
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v10, :cond_a7

    iget v10, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v10, v6, :cond_bd

    .line 178
    :cond_a7
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_bd

    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v10, :cond_bd

    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v10, :cond_bd

    .line 180
    const/4 v3, 0x1

    .line 181
    goto :goto_de

    .line 182
    :cond_bd
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eq v10, v5, :cond_c5

    iget v10, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v10, v7, :cond_db

    .line 183
    :cond_c5
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_db

    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v10, :cond_db

    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v10, :cond_db

    .line 185
    const/4 v3, 0x1

    .line 186
    goto :goto_de

    .line 172
    .end local v9    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_db
    :goto_db
    add-int/lit8 v8, v8, 0x1

    goto :goto_8c

    .line 190
    .end local v8    # "i":I
    :cond_de
    :goto_de
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v8

    if-nez v8, :cond_f1

    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v8

    if-eqz v8, :cond_ef

    goto :goto_f1

    :cond_ef
    const/4 v8, 0x0

    goto :goto_f2

    :cond_f1
    :goto_f1
    const/4 v8, 0x1

    .line 191
    .local v8, "mHasHorizontalCenteredDependents":Z
    :goto_f2
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v9

    if-nez v9, :cond_105

    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v9

    if-eqz v9, :cond_103

    goto :goto_105

    :cond_103
    const/4 v9, 0x0

    goto :goto_106

    :cond_105
    :goto_105
    const/4 v9, 0x1

    .line 192
    .local v9, "mHasVerticalCenteredDependents":Z
    :goto_106
    if-nez v3, :cond_122

    iget v10, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-nez v10, :cond_10e

    if-nez v8, :cond_120

    :cond_10e
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v10, v5, :cond_114

    if-nez v9, :cond_120

    :cond_114
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v10, v6, :cond_11a

    if-nez v8, :cond_120

    :cond_11a
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v10, v7, :cond_122

    if-eqz v9, :cond_122

    :cond_120
    const/4 v10, 0x1

    goto :goto_123

    :cond_122
    const/4 v10, 0x0

    .line 197
    .local v10, "applyEqualityOnReferences":Z
    :goto_123
    const/4 v11, 0x5

    .line 198
    .local v11, "equalityOnReferencesStrength":I
    if-nez v10, :cond_127

    .line 199
    const/4 v11, 0x4

    .line 201
    :cond_127
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_128
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-ge v12, v13, :cond_194

    .line 202
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v13, v13, v12

    .line 203
    .local v13, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-boolean v14, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v14, :cond_13b

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v14

    if-nez v14, :cond_13b

    .line 204
    goto :goto_18f

    .line 206
    :cond_13b
    iget-object v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v14, v14, v15

    invoke-virtual {v1, v14}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v14

    .line 207
    .local v14, "target":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v15, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v7, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v7, v15, v7

    iput-object v14, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 208
    const/4 v7, 0x0

    .line 209
    .local v7, "margin":I
    iget-object v15, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v6, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v6, v15, v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_16d

    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v6, v6, v15

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v6, v0, :cond_16d

    .line 211
    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v6, v6, v15

    iget v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v7, v6

    .line 213
    :cond_16d
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_17f

    iget v6, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v6, v5, :cond_176

    goto :goto_17f

    .line 216
    :cond_176
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v15, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    add-int/2addr v15, v7

    invoke-virtual {v1, v6, v14, v15, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V

    goto :goto_187

    .line 214
    :cond_17f
    :goto_17f
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v15, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    sub-int/2addr v15, v7

    invoke-virtual {v1, v6, v14, v15, v3}, Landroidx/constraintlayout/core/LinearSystem;->addLowerBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V

    .line 223
    :goto_187
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget v15, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    add-int/2addr v15, v7

    invoke-virtual {v1, v6, v14, v15, v11}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 201
    .end local v7    # "margin":I
    .end local v13    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v14    # "target":Landroidx/constraintlayout/core/SolverVariable;
    :goto_18f
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x3

    goto :goto_128

    .line 227
    .end local v12    # "i":I
    :cond_194
    const/4 v6, 0x4

    .line 228
    .local v6, "barrierParentStrength":I
    const/4 v7, 0x0

    .line 230
    .local v7, "barrierParentStrengthOpposite":I
    iget v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/16 v13, 0x8

    if-nez v12, :cond_1c3

    .line 231
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 232
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 233
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto/16 :goto_242

    .line 234
    :cond_1c3
    iget v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_1ee

    .line 235
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 236
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 237
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_242

    .line 238
    :cond_1ee
    iget v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v12, v5, :cond_218

    .line 239
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 240
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 241
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_242

    .line 242
    :cond_218
    iget v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v12, 0x3

    if-ne v5, v12, :cond_242

    .line 243
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 244
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 245
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 247
    :cond_242
    :goto_242
    return-void

    .line 149
    .end local v2    # "position":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "hasMatchConstraintWidgets":Z
    .end local v6    # "barrierParentStrength":I
    .end local v7    # "barrierParentStrengthOpposite":I
    .end local v8    # "mHasHorizontalCenteredDependents":Z
    .end local v9    # "mHasVerticalCenteredDependents":Z
    .end local v10    # "applyEqualityOnReferences":Z
    .end local v11    # "equalityOnReferencesStrength":I
    :cond_243
    return-void
.end method

.method public allSolved()Z
    .registers 10

    .line 273
    const/4 v0, 0x1

    .line 274
    .local v0, "hasAllWidgetsResolved":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v1, v2, :cond_3a

    .line 275
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 276
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-boolean v6, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v6, :cond_18

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v6

    if-nez v6, :cond_18

    .line 277
    goto :goto_37

    .line 279
    :cond_18
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_20

    iget v6, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v6, v5, :cond_28

    :cond_20
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v5

    if-nez v5, :cond_28

    .line 280
    const/4 v0, 0x0

    goto :goto_37

    .line 281
    :cond_28
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eq v5, v4, :cond_30

    iget v4, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v4, v3, :cond_37

    :cond_30
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v3

    if-nez v3, :cond_37

    .line 282
    const/4 v0, 0x0

    .line 274
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 286
    .end local v1    # "i":I
    :cond_3a
    if-eqz v0, :cond_fa

    iget v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-lez v1, :cond_fa

    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, "barrierPosition":I
    const/4 v2, 0x0

    .line 290
    .local v2, "initialized":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_43
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_e4

    .line 291
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    .line 292
    .local v7, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-boolean v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v8, :cond_57

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v8

    if-nez v8, :cond_57

    .line 293
    goto/16 :goto_e0

    .line 295
    :cond_57
    if-nez v2, :cond_95

    .line 296
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-nez v8, :cond_68

    .line 297
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    goto :goto_94

    .line 298
    :cond_68
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v8, v5, :cond_77

    .line 299
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    goto :goto_94

    .line 300
    :cond_77
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v8, v4, :cond_86

    .line 301
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    goto :goto_94

    .line 302
    :cond_86
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v8, v3, :cond_94

    .line 303
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v1

    .line 305
    :cond_94
    :goto_94
    const/4 v2, 0x1

    .line 307
    :cond_95
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-nez v8, :cond_a8

    .line 308
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_e0

    .line 309
    :cond_a8
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v8, v5, :cond_bb

    .line 310
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_e0

    .line 311
    :cond_bb
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v8, v4, :cond_ce

    .line 312
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_e0

    .line 313
    :cond_ce
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v8, v3, :cond_e0

    .line 314
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 290
    .end local v7    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_e0
    :goto_e0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_43

    .line 317
    .end local v6    # "i":I
    :cond_e4
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    add-int/2addr v1, v3

    .line 318
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v3, :cond_f4

    iget v3, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v3, v5, :cond_f0

    goto :goto_f4

    .line 321
    :cond_f0
    invoke-virtual {p0, v1, v1}, Landroidx/constraintlayout/core/widgets/Barrier;->setFinalVertical(II)V

    goto :goto_f7

    .line 319
    :cond_f4
    :goto_f4
    invoke-virtual {p0, v1, v1}, Landroidx/constraintlayout/core/widgets/Barrier;->setFinalHorizontal(II)V

    .line 326
    :goto_f7
    iput-boolean v5, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    .line 327
    return v5

    .line 329
    .end local v1    # "barrierPosition":I
    .end local v2    # "initialized":Z
    :cond_fa
    const/4 v1, 0x0

    return v1
.end method

.method public allowedInBarrier()Z
    .registers 2

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public allowsGoneWidget()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    return v0
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 5
    .param p1, "src"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/HelperWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 90
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 91
    .local v0, "srcBarrier":Landroidx/constraintlayout/core/widgets/Barrier;
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 92
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 93
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 94
    return-void
.end method

.method public getAllowsGoneWidget()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    return v0
.end method

.method public getBarrierType()I
    .registers 2

    .line 52
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    return v0
.end method

.method public getMargin()I
    .registers 2

    .line 254
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 258
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    packed-switch v0, :pswitch_data_c

    .line 266
    const/4 v0, -0x1

    return v0

    .line 264
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 261
    :pswitch_9
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public isResolvedHorizontally()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    return v0
.end method

.method public isResolvedVertically()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    return v0
.end method

.method protected markWidgets()V
    .registers 6

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-ge v0, v1, :cond_33

    .line 112
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 113
    .local v1, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-boolean v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v2, :cond_14

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v2

    if-nez v2, :cond_14

    .line 114
    goto :goto_30

    .line 116
    :cond_14
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2c

    iget v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ne v2, v3, :cond_1e

    goto :goto_2c

    .line 118
    :cond_1e
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_28

    iget v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_30

    .line 119
    :cond_28
    invoke-virtual {v1, v3, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    goto :goto_30

    .line 117
    :cond_2c
    :goto_2c
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    .line 111
    .end local v1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_30
    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    .end local v0    # "i":I
    :cond_33
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 2
    .param p1, "allowsGoneWidget"    # Z

    .line 58
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .registers 2
    .param p1, "barrierType"    # I

    .line 55
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 56
    return-void
.end method

.method public setMargin(I)V
    .registers 2
    .param p1, "margin"    # I

    .line 250
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 251
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Barrier] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Barrier;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "debug":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v2, :cond_53

    .line 100
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 101
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-lez v1, :cond_3b

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 106
    .end local v1    # "i":I
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    return-object v0
.end method
