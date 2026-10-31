.class public Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;
.super Landroidx/constraintlayout/core/state/helpers/ChainReference;
.source "HorizontalChainReference.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .registers 3
    .param p1, "state"    # Landroidx/constraintlayout/core/state/State;

    .line 26
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/helpers/ChainReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    .line 27
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 8

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "first":Landroidx/constraintlayout/core/state/ConstraintReference;
    const/4 v1, 0x0

    .line 32
    .local v1, "previous":Landroidx/constraintlayout/core/state/ConstraintReference;
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 33
    .local v3, "key":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    .line 34
    .local v4, "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    invoke-virtual {v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->clearHorizontal()Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 35
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    goto :goto_8

    .line 37
    :cond_1c
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 38
    .restart local v3    # "key":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    .line 39
    .restart local v4    # "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    if-nez v0, :cond_92

    .line 40
    move-object v0, v4

    .line 41
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v5, :cond_4b

    .line 42
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToStart:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginStart:I

    .line 43
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginStartGone:I

    .line 44
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_92

    .line 45
    :cond_4b
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToEnd:Ljava/lang/Object;

    if-eqz v5, :cond_61

    .line 46
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToEnd:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginStart:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginStartGone:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_92

    .line 47
    :cond_61
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToLeft:Ljava/lang/Object;

    if-eqz v5, :cond_77

    .line 49
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToLeft:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginLeft:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginLeftGone:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_92

    .line 50
    :cond_77
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToRight:Ljava/lang/Object;

    if-eqz v5, :cond_8d

    .line 52
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToRight:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginLeft:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginLeftGone:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_92

    .line 55
    :cond_8d
    sget-object v5, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 58
    :cond_92
    :goto_92
    if-eqz v1, :cond_a2

    .line 59
    invoke-virtual {v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 60
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 62
    :cond_a2
    move-object v1, v4

    .line 63
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    goto/16 :goto_22

    .line 65
    :cond_a5
    if-eqz v1, :cond_104

    .line 66
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v2, :cond_bd

    .line 67
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToStart:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginEnd:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginEndGone:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_104

    .line 68
    :cond_bd
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v2, :cond_d3

    .line 69
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToEnd:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginEnd:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginEndGone:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_104

    .line 70
    :cond_d3
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToLeft:Ljava/lang/Object;

    if-eqz v2, :cond_e9

    .line 72
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToLeft:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginRight:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginRightGone:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_104

    .line 73
    :cond_e9
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToRight:Ljava/lang/Object;

    if-eqz v2, :cond_ff

    .line 75
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToRight:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginRight:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginRightGone:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_104

    .line 78
    :cond_ff
    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 82
    :cond_104
    :goto_104
    if-nez v0, :cond_107

    .line 83
    return-void

    .line 86
    :cond_107
    iget v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mBias:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_114

    .line 87
    iget v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mBias:F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 90
    :cond_114
    sget-object v2, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Chain:[I

    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStyle:Landroidx/constraintlayout/core/state/State$Chain;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/State$Chain;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_132

    goto :goto_131

    .line 100
    :pswitch_122
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHorizontalChainStyle(I)V

    goto :goto_131

    .line 96
    :pswitch_127
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHorizontalChainStyle(I)V

    .line 98
    goto :goto_131

    .line 92
    :pswitch_12c
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHorizontalChainStyle(I)V

    .line 94
    nop

    .line 103
    :goto_131
    return-void

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_12c
        :pswitch_127
        :pswitch_122
    .end packed-switch
.end method
