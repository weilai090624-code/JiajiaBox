.class public Landroidx/constraintlayout/core/state/ConstraintReference;
.super Ljava/lang/Object;
.source "ConstraintReference.java"

# interfaces
.implements Landroidx/constraintlayout/core/state/Reference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/ConstraintReference$IncorrectConstraintException;,
        Landroidx/constraintlayout/core/state/ConstraintReference$ConstraintReferenceFactory;
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;

.field mAlpha:F

.field mBaselineToBaseline:Ljava/lang/Object;

.field mBaselineToBottom:Ljava/lang/Object;

.field mBaselineToTop:Ljava/lang/Object;

.field protected mBottomToBottom:Ljava/lang/Object;

.field protected mBottomToTop:Ljava/lang/Object;

.field private mCircularAngle:F

.field mCircularConstraint:Ljava/lang/Object;

.field private mCircularDistance:F

.field private mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mCustomColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomFloats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mEndToEnd:Ljava/lang/Object;

.field protected mEndToStart:Ljava/lang/Object;

.field mFacade:Landroidx/constraintlayout/core/state/helpers/Facade;

.field mHorizontalBias:F

.field mHorizontalChainStyle:I

.field mHorizontalChainWeight:F

.field mHorizontalDimension:Landroidx/constraintlayout/core/state/Dimension;

.field mLast:Landroidx/constraintlayout/core/state/State$Constraint;

.field protected mLeftToLeft:Ljava/lang/Object;

.field protected mLeftToRight:Ljava/lang/Object;

.field mMarginBaseline:I

.field mMarginBaselineGone:I

.field protected mMarginBottom:I

.field protected mMarginBottomGone:I

.field protected mMarginEnd:I

.field protected mMarginEndGone:I

.field protected mMarginLeft:I

.field protected mMarginLeftGone:I

.field protected mMarginRight:I

.field protected mMarginRightGone:I

.field protected mMarginStart:I

.field protected mMarginStartGone:I

.field protected mMarginTop:I

.field protected mMarginTopGone:I

.field mPivotX:F

.field mPivotY:F

.field protected mRightToLeft:Ljava/lang/Object;

.field protected mRightToRight:Ljava/lang/Object;

.field mRotationX:F

.field mRotationY:F

.field mRotationZ:F

.field mScaleX:F

.field mScaleY:F

.field protected mStartToEnd:Ljava/lang/Object;

.field protected mStartToStart:Ljava/lang/Object;

.field final mState:Landroidx/constraintlayout/core/state/State;

.field mTag:Ljava/lang/String;

.field protected mTopToBottom:Ljava/lang/Object;

.field protected mTopToTop:Ljava/lang/Object;

.field mTranslationX:F

.field mTranslationY:F

.field mTranslationZ:F

.field mVerticalBias:F

.field mVerticalChainStyle:I

.field mVerticalChainWeight:F

.field mVerticalDimension:Landroidx/constraintlayout/core/state/Dimension;

.field private mView:Ljava/lang/Object;

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .registers 5
    .param p1, "state"    # Landroidx/constraintlayout/core/state/State;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTag:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mFacade:Landroidx/constraintlayout/core/state/helpers/Facade;

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainStyle:I

    .line 62
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainStyle:I

    .line 64
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainWeight:F

    .line 65
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainWeight:F

    .line 67
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    .line 68
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    .line 70
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    .line 71
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    .line 72
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    .line 73
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    .line 74
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    .line 75
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    .line 77
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    .line 78
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    .line 79
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    .line 81
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    .line 82
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    .line 84
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaseline:I

    .line 85
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaselineGone:I

    .line 87
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotX:F

    .line 88
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotY:F

    .line 90
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationX:F

    .line 91
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationY:F

    .line 92
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationZ:F

    .line 94
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationX:F

    .line 95
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationY:F

    .line 96
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationZ:F

    .line 98
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mAlpha:F

    .line 100
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleX:F

    .line 101
    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleY:F

    .line 103
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVisibility:I

    .line 105
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 106
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 107
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 108
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 109
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 110
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 111
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 112
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 113
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 114
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 115
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 116
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 117
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    .line 118
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToTop:Ljava/lang/Object;

    .line 119
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBottom:Ljava/lang/Object;

    .line 120
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularConstraint:Ljava/lang/Object;

    .line 124
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 126
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/constraintlayout/core/state/Dimension;->Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/core/state/Dimension;

    .line 127
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/constraintlayout/core/state/Dimension;->Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/core/state/Dimension;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomColors:Ljava/util/HashMap;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    .line 230
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    return-void
.end method

.method private applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V
    .registers 11
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "opaqueTarget"    # Ljava/lang/Object;
    .param p3, "type"    # Landroidx/constraintlayout/core/state/State$Constraint;

    .line 820
    invoke-direct {p0, p2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getTarget(Ljava/lang/Object;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    .line 821
    .local v6, "target":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-nez v6, :cond_7

    .line 822
    return-void

    .line 824
    :cond_7
    sget-object v0, Landroidx/constraintlayout/core/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Constraint:[I

    invoke-virtual {p3}, Landroidx/constraintlayout/core/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 828
    sget-object v0, Landroidx/constraintlayout/core/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Constraint:[I

    invoke-virtual {p3}, Landroidx/constraintlayout/core/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_14c

    goto/16 :goto_14a

    .line 887
    :pswitch_1d
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularAngle:F

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularDistance:F

    float-to-int v1, v1

    invoke-virtual {p1, v6, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connectCircularConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V

    .line 888
    goto/16 :goto_14a

    .line 878
    :pswitch_27
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaseline:I

    iget v5, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaselineGone:I

    move-object v0, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 879
    goto/16 :goto_14a

    .line 881
    :pswitch_36
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaseline:I

    iget v5, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaselineGone:I

    move-object v0, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 882
    goto/16 :goto_14a

    .line 884
    :pswitch_45
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaseline:I

    iget v5, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaselineGone:I

    move-object v0, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 885
    goto/16 :goto_14a

    .line 874
    :pswitch_54
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 876
    goto/16 :goto_14a

    .line 870
    :pswitch_69
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 872
    goto/16 :goto_14a

    .line 866
    :pswitch_7e
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 868
    goto/16 :goto_14a

    .line 862
    :pswitch_93
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 864
    goto/16 :goto_14a

    .line 842
    :pswitch_a8
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 844
    goto/16 :goto_14a

    .line 838
    :pswitch_bd
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 840
    goto/16 :goto_14a

    .line 834
    :pswitch_d2
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 836
    goto :goto_14a

    .line 830
    :pswitch_e6
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 832
    goto :goto_14a

    .line 858
    :pswitch_fa
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 860
    goto :goto_14a

    .line 854
    :pswitch_10e
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 856
    goto :goto_14a

    .line 850
    :pswitch_122
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 852
    goto :goto_14a

    .line 846
    :pswitch_136
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 848
    nop

    .line 891
    :goto_14a
    return-void

    nop

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_136
        :pswitch_122
        :pswitch_10e
        :pswitch_fa
        :pswitch_e6
        :pswitch_d2
        :pswitch_bd
        :pswitch_a8
        :pswitch_93
        :pswitch_7e
        :pswitch_69
        :pswitch_54
        :pswitch_45
        :pswitch_36
        :pswitch_27
        :pswitch_1d
    .end packed-switch
.end method

.method private dereference()V
    .registers 2

    .line 422
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToTop:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToTop:Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBottom:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBottom:Ljava/lang/Object;

    .line 437
    return-void
.end method

.method private get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 221
    if-nez p1, :cond_4

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_4
    instance-of v0, p1, Landroidx/constraintlayout/core/state/ConstraintReference;

    if-nez v0, :cond_f

    .line 225
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->reference(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Reference;

    move-result-object v0

    return-object v0

    .line 227
    :cond_f
    return-object p1
.end method

.method private getTarget(Ljava/lang/Object;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 812
    instance-of v0, p1, Landroidx/constraintlayout/core/state/Reference;

    if-eqz v0, :cond_c

    .line 813
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/state/Reference;

    .line 814
    .local v0, "referenceTarget":Landroidx/constraintlayout/core/state/Reference;
    invoke-interface {v0}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    return-object v1

    .line 816
    .end local v0    # "referenceTarget":Landroidx/constraintlayout/core/state/Reference;
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addCustomColor(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 411
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomColors:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    return-void
.end method

.method public addCustomFloat(Ljava/lang/String;F)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 415
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    .line 418
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public alpha(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "alpha"    # F

    .line 342
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mAlpha:F

    .line 343
    return-object p0
.end method

.method public apply()V
    .registers 7

    .line 894
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v0, :cond_5

    .line 895
    return-void

    .line 897
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mFacade:Landroidx/constraintlayout/core/state/helpers/Facade;

    if-eqz v0, :cond_e

    .line 898
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mFacade:Landroidx/constraintlayout/core/state/helpers/Facade;

    invoke-interface {v0}, Landroidx/constraintlayout/core/state/helpers/Facade;->apply()V

    .line 900
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/core/state/Dimension;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/state/Dimension;->apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 901
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/core/state/Dimension;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/state/Dimension;->apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 902
    invoke-direct {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->dereference()V

    .line 904
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 905
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 906
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 907
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 908
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 909
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 910
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 911
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 912
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 913
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 914
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 915
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 916
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 917
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToTop:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 918
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBottom:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 919
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularConstraint:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->CIRCULAR_CONSTRAINT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    .line 921
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainStyle:I

    if-eqz v0, :cond_c0

    .line 922
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainStyle:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 924
    :cond_c0
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainStyle:I

    if-eqz v0, :cond_cb

    .line 925
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainStyle:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 927
    :cond_cb
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainWeight:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_da

    .line 928
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainWeight:F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 930
    :cond_da
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainWeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e7

    .line 931
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainWeight:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 934
    :cond_e7
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 935
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 937
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotX:F

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    .line 938
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotY:F

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    .line 939
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationX:F

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    .line 940
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationY:F

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    .line 941
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationZ:F

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    .line 942
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationX:F

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    .line 943
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationY:F

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    .line 944
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationZ:F

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    .line 945
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleX:F

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    .line 946
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleY:F

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    .line 947
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mAlpha:F

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    .line 948
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVisibility:I

    iput v1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    .line 949
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVisibility:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    .line 950
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomColors:Ljava/util/HashMap;

    if-eqz v0, :cond_18c

    .line 951
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomColors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 952
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomColors:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 953
    .local v2, "color":Ljava/lang/Integer;
    iget-object v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    const/16 v4, 0x386

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;II)V

    .line 954
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "color":Ljava/lang/Integer;
    goto :goto_16a

    .line 956
    :cond_18c
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    if-eqz v0, :cond_1bc

    .line 957
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1bc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 958
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 959
    .local v2, "value":F
    iget-object v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    const/16 v4, 0x385

    invoke-virtual {v3, v1, v4, v2}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    .line 960
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":F
    goto :goto_19a

    .line 962
    :cond_1bc
    return-void
.end method

.method public baseline()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    .line 406
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 407
    return-object p0
.end method

.method public baselineToBaseline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 512
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 513
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    .line 514
    return-object p0
.end method

.method public baselineToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 524
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 525
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBottom:Ljava/lang/Object;

    .line 526
    return-object p0
.end method

.method public baselineToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 518
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 519
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToTop:Ljava/lang/Object;

    .line 520
    return-object p0
.end method

.method public bias(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 4
    .param p1, "value"    # F

    .line 690
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    if-nez v0, :cond_5

    .line 691
    return-object p0

    .line 693
    :cond_5
    sget-object v0, Landroidx/constraintlayout/core/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Constraint:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    :pswitch_12
    goto :goto_19

    .line 710
    :pswitch_13
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    .line 711
    goto :goto_19

    .line 703
    :pswitch_16
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    .line 704
    nop

    .line 714
    :goto_19
    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public bottom()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    .line 397
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 398
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    .line 400
    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 402
    :goto_d
    return-object p0
.end method

.method public bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 506
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 507
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 508
    return-object p0
.end method

.method public bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 500
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 501
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 502
    return-object p0
.end method

.method public centerHorizontally(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 4
    .param p1, "reference"    # Ljava/lang/Object;

    .line 530
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 531
    .local v0, "ref":Ljava/lang/Object;
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 532
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 533
    sget-object v1, Landroidx/constraintlayout/core/state/State$Constraint;->CENTER_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 534
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    .line 535
    return-object p0
.end method

.method public centerVertically(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 4
    .param p1, "reference"    # Ljava/lang/Object;

    .line 539
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 540
    .local v0, "ref":Ljava/lang/Object;
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 541
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 542
    sget-object v1, Landroidx/constraintlayout/core/state/State$Constraint;->CENTER_VERTICALLY:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 543
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    .line 544
    return-object p0
.end method

.method public circularConstraint(Ljava/lang/Object;FF)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 6
    .param p1, "reference"    # Ljava/lang/Object;
    .param p2, "angle"    # F
    .param p3, "distance"    # F

    .line 548
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 549
    .local v0, "ref":Ljava/lang/Object;
    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularConstraint:Ljava/lang/Object;

    .line 550
    iput p2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularAngle:F

    .line 551
    iput p3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularDistance:F

    .line 552
    sget-object v1, Landroidx/constraintlayout/core/state/State$Constraint;->CIRCULAR_CONSTRAINT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 553
    return-object p0
.end method

.method public clear()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 5

    .line 718
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_52

    .line 719
    sget-object v0, Landroidx/constraintlayout/core/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Constraint:[I

    iget-object v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/State$Constraint;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_8e

    .line 776
    :pswitch_13
    goto/16 :goto_8c

    .line 773
    :pswitch_15
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularConstraint:Ljava/lang/Object;

    .line 775
    goto/16 :goto_8c

    .line 769
    :pswitch_19
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    .line 771
    goto :goto_8c

    .line 762
    :pswitch_1c
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 763
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 764
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    .line 765
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    .line 767
    goto :goto_8c

    .line 754
    :pswitch_25
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 755
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 756
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    .line 757
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    .line 759
    goto :goto_8c

    .line 746
    :pswitch_2e
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 747
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 748
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    .line 749
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    .line 751
    goto :goto_8c

    .line 738
    :pswitch_37
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 739
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 740
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    .line 741
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    .line 743
    goto :goto_8c

    .line 730
    :pswitch_40
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 731
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 732
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    .line 733
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    .line 735
    goto :goto_8c

    .line 722
    :pswitch_49
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 723
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 724
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    .line 725
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    .line 727
    goto :goto_8c

    .line 779
    :cond_52
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 780
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 781
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    .line 782
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 783
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 784
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    .line 785
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 786
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 787
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    .line 788
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 789
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 790
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    .line 791
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 792
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 793
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    .line 794
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    .line 795
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    .line 796
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    .line 797
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    .line 798
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularConstraint:Ljava/lang/Object;

    .line 799
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    .line 800
    iput v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    .line 801
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    .line 802
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    .line 803
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    .line 804
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    .line 805
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    .line 806
    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    .line 808
    :goto_8c
    return-object p0

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_49
        :pswitch_49
        :pswitch_40
        :pswitch_40
        :pswitch_37
        :pswitch_37
        :pswitch_2e
        :pswitch_2e
        :pswitch_25
        :pswitch_25
        :pswitch_1c
        :pswitch_1c
        :pswitch_13
        :pswitch_13
        :pswitch_19
        :pswitch_15
    .end packed-switch
.end method

.method public clearHorizontal()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    .line 272
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->start()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 273
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->end()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 274
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->left()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 275
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->right()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 276
    return-object p0
.end method

.method public clearVertical()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    .line 265
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->top()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 266
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->baseline()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 267
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottom()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 268
    return-object p0
.end method

.method public createConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 4

    .line 173
    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 174
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/Dimension;->getValue()I

    move-result v1

    .line 175
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/Dimension;->getValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(II)V

    .line 173
    return-object v0
.end method

.method public end()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    .line 379
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 380
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    .line 382
    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 384
    :goto_d
    return-object p0
.end method

.method public endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 482
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 483
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    .line 484
    return-object p0
.end method

.method public endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 476
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 477
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    .line 478
    return-object p0
.end method

.method public getAlpha()F
    .registers 2

    .line 284
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mAlpha:F

    return v0
.end method

.method public getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 3

    .line 165
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v0, :cond_11

    .line 166
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->createConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 167
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mView:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 169
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;
    .registers 2

    .line 153
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mFacade:Landroidx/constraintlayout/core/state/helpers/Facade;

    return-object v0
.end method

.method public getHeight()Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    .line 571
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/core/state/Dimension;

    return-object v0
.end method

.method public getHorizontalChainStyle()I
    .registers 2

    .line 237
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainStyle:I

    return v0
.end method

.method public getHorizontalChainWeight()F
    .registers 2

    .line 249
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainWeight:F

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    .line 285
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    .line 286
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotY:F

    return v0
.end method

.method public getRotationX()F
    .registers 2

    .line 287
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationX:F

    return v0
.end method

.method public getRotationY()F
    .registers 2

    .line 288
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationY:F

    return v0
.end method

.method public getRotationZ()F
    .registers 2

    .line 289
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationZ:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 282
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 283
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleY:F

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslationX()F
    .registers 2

    .line 279
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationX:F

    return v0
.end method

.method public getTranslationY()F
    .registers 2

    .line 280
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationY:F

    return v0
.end method

.method public getTranslationZ()F
    .registers 2

    .line 281
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationZ:F

    return v0
.end method

.method public getVerticalChainStyle(I)I
    .registers 3
    .param p1, "chainStyle"    # I

    .line 245
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainStyle:I

    return v0
.end method

.method public getVerticalChainWeight()F
    .registers 2

    .line 257
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainWeight:F

    return v0
.end method

.method public getView()Ljava/lang/Object;
    .registers 2

    .line 143
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mView:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    .line 564
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/core/state/Dimension;

    return-object v0
.end method

.method public height(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "dimension"    # Landroidx/constraintlayout/core/state/Dimension;

    .line 561
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    return-object v0
.end method

.method public horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "value"    # F

    .line 680
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    .line 681
    return-object p0
.end method

.method public left()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    .line 352
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 353
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    .line 355
    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 357
    :goto_d
    return-object p0
.end method

.method public leftToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 440
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 441
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    .line 442
    return-object p0
.end method

.method public leftToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 446
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 447
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    .line 448
    return-object p0
.end method

.method public margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 4
    .param p1, "value"    # I

    .line 586
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    if-eqz v0, :cond_2b

    .line 587
    sget-object v0, Landroidx/constraintlayout/core/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Constraint:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 621
    goto :goto_37

    .line 619
    :pswitch_12
    int-to-float v0, p1

    iput v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularDistance:F

    .line 620
    goto :goto_37

    .line 615
    :pswitch_16
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaseline:I

    .line 617
    goto :goto_37

    .line 610
    :pswitch_19
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    .line 611
    goto :goto_37

    .line 606
    :pswitch_1c
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    .line 607
    goto :goto_37

    .line 602
    :pswitch_1f
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    .line 603
    goto :goto_37

    .line 598
    :pswitch_22
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    .line 599
    goto :goto_37

    .line 594
    :pswitch_25
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    .line 595
    goto :goto_37

    .line 590
    :pswitch_28
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    .line 591
    goto :goto_37

    .line 624
    :cond_2b
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    .line 625
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    .line 626
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    .line 627
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    .line 628
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    .line 629
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    .line 631
    :goto_37
    return-object p0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_25
        :pswitch_25
        :pswitch_22
        :pswitch_22
        :pswitch_1f
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_19
        :pswitch_19
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_12
    .end packed-switch
.end method

.method public margin(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "marginValue"    # Ljava/lang/Object;

    .line 578
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    return-object v0
.end method

.method public marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 4
    .param p1, "value"    # I

    .line 635
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    if-eqz v0, :cond_27

    .line 636
    sget-object v0, Landroidx/constraintlayout/core/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Constraint:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Constraint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 666
    goto :goto_33

    .line 664
    :pswitch_12
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaselineGone:I

    .line 665
    goto :goto_33

    .line 659
    :pswitch_15
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    .line 660
    goto :goto_33

    .line 655
    :pswitch_18
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    .line 656
    goto :goto_33

    .line 651
    :pswitch_1b
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    .line 652
    goto :goto_33

    .line 647
    :pswitch_1e
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    .line 648
    goto :goto_33

    .line 643
    :pswitch_21
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    .line 644
    goto :goto_33

    .line 639
    :pswitch_24
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    .line 640
    goto :goto_33

    .line 669
    :cond_27
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    .line 670
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    .line 671
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    .line 672
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    .line 673
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    .line 674
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    .line 676
    :goto_33
    return-object p0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_21
        :pswitch_21
        :pswitch_1e
        :pswitch_1e
        :pswitch_1b
        :pswitch_1b
        :pswitch_18
        :pswitch_18
        :pswitch_15
        :pswitch_15
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public marginGone(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "marginGoneValue"    # Ljava/lang/Object;

    .line 582
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    return-object v0
.end method

.method public pivotX(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "x"    # F

    .line 292
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotX:F

    .line 293
    return-object p0
.end method

.method public pivotY(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "y"    # F

    .line 297
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotY:F

    .line 298
    return-object p0
.end method

.method public right()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    .line 361
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 362
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    .line 364
    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 366
    :goto_d
    return-object p0
.end method

.method public rightToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 452
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 453
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    .line 454
    return-object p0
.end method

.method public rightToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 458
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 459
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    .line 460
    return-object p0
.end method

.method public rotationX(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "x"    # F

    .line 302
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationX:F

    .line 303
    return-object p0
.end method

.method public rotationY(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "y"    # F

    .line 307
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationY:F

    .line 308
    return-object p0
.end method

.method public rotationZ(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "z"    # F

    .line 312
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationZ:F

    .line 313
    return-object p0
.end method

.method public scaleX(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "x"    # F

    .line 332
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleX:F

    .line 333
    return-object p0
.end method

.method public scaleY(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "y"    # F

    .line 337
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleY:F

    .line 338
    return-object p0
.end method

.method public setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 4
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 156
    if-nez p1, :cond_3

    .line 157
    return-void

    .line 159
    :cond_3
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 160
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mView:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public setFacade(Landroidx/constraintlayout/core/state/helpers/Facade;)V
    .registers 3
    .param p1, "facade"    # Landroidx/constraintlayout/core/state/helpers/Facade;

    .line 147
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mFacade:Landroidx/constraintlayout/core/state/helpers/Facade;

    .line 148
    if-eqz p1, :cond_b

    .line 149
    invoke-interface {p1}, Landroidx/constraintlayout/core/state/helpers/Facade;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 151
    :cond_b
    return-void
.end method

.method public setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "dimension"    # Landroidx/constraintlayout/core/state/Dimension;

    .line 573
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/core/state/Dimension;

    .line 574
    return-object p0
.end method

.method public setHorizontalChainStyle(I)V
    .registers 2
    .param p1, "chainStyle"    # I

    .line 233
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainStyle:I

    .line 234
    return-void
.end method

.method public setHorizontalChainWeight(F)V
    .registers 2
    .param p1, "weight"    # F

    .line 253
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainWeight:F

    .line 254
    return-void
.end method

.method public setKey(Ljava/lang/Object;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->key:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTag:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .registers 2
    .param p1, "chainStyle"    # I

    .line 241
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainStyle:I

    .line 242
    return-void
.end method

.method public setVerticalChainWeight(F)V
    .registers 2
    .param p1, "weight"    # F

    .line 261
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainWeight:F

    .line 262
    return-void
.end method

.method public setView(Ljava/lang/Object;)V
    .registers 4
    .param p1, "view"    # Ljava/lang/Object;

    .line 136
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mView:Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_d

    .line 138
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mView:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 140
    :cond_d
    return-void
.end method

.method public setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "dimension"    # Landroidx/constraintlayout/core/state/Dimension;

    .line 567
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/core/state/Dimension;

    .line 568
    return-object p0
.end method

.method public start()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    .line 370
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 371
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    .line 373
    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 375
    :goto_d
    return-object p0
.end method

.method public startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 470
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 471
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    .line 472
    return-object p0
.end method

.method public startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 464
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 465
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    .line 466
    return-object p0
.end method

.method public top()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    .line 388
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 389
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    .line 391
    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 393
    :goto_d
    return-object p0
.end method

.method public topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 494
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 495
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    .line 496
    return-object p0
.end method

.method public topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "reference"    # Ljava/lang/Object;

    .line 488
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 489
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    .line 490
    return-object p0
.end method

.method public translationX(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "x"    # F

    .line 317
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationX:F

    .line 318
    return-object p0
.end method

.method public translationY(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "y"    # F

    .line 322
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationY:F

    .line 323
    return-object p0
.end method

.method public translationZ(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "z"    # F

    .line 327
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationZ:F

    .line 328
    return-object p0
.end method

.method public validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/state/ConstraintReference$IncorrectConstraintException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    if-eqz v1, :cond_12

    .line 200
    const-string v1, "LeftToLeft and LeftToRight both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_12
    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    .line 203
    const-string v1, "RightToLeft and RightToRight both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_1f
    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    if-eqz v1, :cond_2c

    .line 206
    const-string v1, "StartToStart and StartToEnd both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_2c
    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v1, :cond_39

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v1, :cond_39

    .line 209
    const-string v1, "EndToStart and EndToEnd both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_39
    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-nez v1, :cond_49

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    if-nez v1, :cond_49

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-nez v1, :cond_49

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    if-eqz v1, :cond_5e

    :cond_49
    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-nez v1, :cond_59

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    if-nez v1, :cond_59

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-nez v1, :cond_59

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v1, :cond_5e

    .line 213
    :cond_59
    const-string v1, "Both left/right and start/end constraints defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_5e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_65

    .line 218
    return-void

    .line 216
    :cond_65
    new-instance v1, Landroidx/constraintlayout/core/state/ConstraintReference$IncorrectConstraintException;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference$IncorrectConstraintException;-><init>(Ljava/util/ArrayList;)V

    throw v1
.end method

.method public verticalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "value"    # F

    .line 685
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    .line 686
    return-object p0
.end method

.method public visibility(I)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "visibility"    # I

    .line 347
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVisibility:I

    .line 348
    return-object p0
.end method

.method public width(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "dimension"    # Landroidx/constraintlayout/core/state/Dimension;

    .line 557
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    return-object v0
.end method
