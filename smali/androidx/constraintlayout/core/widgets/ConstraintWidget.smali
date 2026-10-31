.class public Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# static fields
.field public static final ANCHOR_BASELINE:I = 0x4

.field public static final ANCHOR_BOTTOM:I = 0x3

.field public static final ANCHOR_LEFT:I = 0x0

.field public static final ANCHOR_RIGHT:I = 0x1

.field public static final ANCHOR_TOP:I = 0x2

.field private static final AUTOTAG_CENTER:Z = false

.field public static final BOTH:I = 0x2

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.0f

.field static final DIMENSION_HORIZONTAL:I = 0x0

.field static final DIMENSION_VERTICAL:I = 0x1

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_RATIO:I = 0x3

.field public static final MATCH_CONSTRAINT_RATIO_RESOLVED:I = 0x4

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field private static final USE_WRAP_DIMENSION_FOR_SPREAD:Z = false

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I = 0x0

.field private static final WRAP:I = -0x2

.field public static final WRAP_BEHAVIOR_HORIZONTAL_ONLY:I = 0x1

.field public static final WRAP_BEHAVIOR_INCLUDED:I = 0x0

.field public static final WRAP_BEHAVIOR_SKIPPED:I = 0x3

.field public static final WRAP_BEHAVIOR_VERTICAL_ONLY:I = 0x2


# instance fields
.field private OPTIMIZE_WRAP:Z

.field private OPTIMIZE_WRAP_ON_RESOLVED:Z

.field public frame:Landroidx/constraintlayout/core/state/WidgetFrame;

.field private hasBaseline:Z

.field public horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

.field public horizontalGroup:I

.field public horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

.field private horizontalSolvingPass:Z

.field private inPlaceholder:Z

.field public isTerminalWidget:[Z

.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimated:Z

.field public mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field public mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field public mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field public mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field mGroupsToSolver:Z

.field mHeight:I

.field private mHeightOverride:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field private mInVirtualLayout:Z

.field public mIsHeightWrapContent:Z

.field private mIsInBarrier:[Z

.field public mIsWidthWrapContent:Z

.field private mLastHorizontalMeasureSpec:I

.field private mLastVerticalMeasureSpec:I

.field public mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field public mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mMatchConstraintDefaultHeight:I

.field public mMatchConstraintDefaultWidth:I

.field public mMatchConstraintMaxHeight:I

.field public mMatchConstraintMaxWidth:I

.field public mMatchConstraintMinHeight:I

.field public mMatchConstraintMinWidth:I

.field public mMatchConstraintPercentHeight:F

.field public mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field private mMeasureRequested:Z

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field public mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field mRelX:I

.field mRelY:I

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedHasRatio:Z

.field public mResolvedMatchConstraintDefault:[I

.field public mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field public mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field public mWeight:[F

.field mWidth:I

.field private mWidthOverride:I

.field private mWrapBehaviorInParent:I

.field protected mX:I

.field protected mY:I

.field public measured:Z

.field private resolvedHorizontal:Z

.field private resolvedVertical:Z

.field public run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public stringId:Ljava/lang/String;

.field public verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

.field public verticalGroup:I

.field public verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

.field private verticalSolvingPass:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 470
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 63
    const/4 v1, 0x2

    new-array v2, v1, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 68
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 70
    new-array v3, v1, [Z

    fill-array-data v3, :array_13a

    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 72
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 74
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 76
    const/4 v4, -0x1

    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 77
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 79
    new-instance v5, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v5, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 92
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 93
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 95
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    .line 96
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    .line 282
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 283
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 287
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    .line 289
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 290
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 291
    new-array v5, v1, [I

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 293
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 294
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 295
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 296
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 297
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 298
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 302
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 303
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 305
    const v5, 0x7fffffff

    filled-new-array {v5, v5}, [I

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 306
    const/4 v5, 0x0

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 307
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 310
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 398
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 399
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 417
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 418
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 419
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 420
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 421
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 422
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 423
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 424
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 432
    const/4 v6, 0x6

    new-array v6, v6, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v7, v6, v0

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v7, v6, v3

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v7, v6, v1

    const/4 v7, 0x3

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v8, v6, v7

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 433
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 435
    new-array v6, v1, [Z

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 440
    new-array v6, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v6, v0

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v6, v3

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 443
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 446
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 447
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 448
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 449
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 452
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 453
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 454
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    .line 455
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    .line 458
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 459
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 462
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 471
    sget v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 472
    sget v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 480
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 483
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 485
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    .line 486
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 487
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 499
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 502
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 503
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 507
    new-array v5, v1, [F

    fill-array-data v5, :array_140

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 509
    new-array v5, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v2, v5, v0

    aput-object v2, v5, v3

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 510
    new-array v1, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v2, v1, v0

    aput-object v2, v1, v3

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 512
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 513
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 703
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 704
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 733
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addAnchors()V

    .line 734
    return-void

    :array_13a
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_140
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 769
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(IIII)V

    .line 770
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 63
    const/4 v1, 0x2

    new-array v2, v1, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 68
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 70
    new-array v3, v1, [Z

    fill-array-data v3, :array_142

    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 72
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 74
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 76
    const/4 v4, -0x1

    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 77
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 79
    new-instance v5, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v5, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 92
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 93
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 95
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    .line 96
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    .line 282
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 283
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 287
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    .line 289
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 290
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 291
    new-array v5, v1, [I

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 293
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 294
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 295
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 296
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 297
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 298
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 302
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 303
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 305
    const v5, 0x7fffffff

    filled-new-array {v5, v5}, [I

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 306
    const/4 v5, 0x0

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 307
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 310
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 398
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 399
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 417
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 418
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 419
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 420
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 421
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 422
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 423
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 424
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 432
    const/4 v6, 0x6

    new-array v6, v6, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v7, v6, v0

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v7, v6, v3

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v7, v6, v1

    const/4 v7, 0x3

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v8, v6, v7

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 433
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 435
    new-array v6, v1, [Z

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 440
    new-array v6, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v6, v0

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v6, v3

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 443
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 446
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 447
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 448
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 449
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 452
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 453
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 454
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    .line 455
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    .line 458
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 459
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 462
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 471
    sget v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 472
    sget v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 480
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 483
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 485
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    .line 486
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 487
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 499
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 502
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 503
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 507
    new-array v5, v1, [F

    fill-array-data v5, :array_148

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 509
    new-array v5, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v2, v5, v0

    aput-object v2, v5, v3

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 510
    new-array v1, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v2, v1, v0

    aput-object v2, v1, v3

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 512
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 513
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 703
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 704
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 750
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 751
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 752
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 753
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 754
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addAnchors()V

    .line 755
    return-void

    :array_142
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_148
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 11
    .param p1, "debugName"    # Ljava/lang/String;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 63
    const/4 v1, 0x2

    new-array v2, v1, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 68
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 70
    new-array v3, v1, [Z

    fill-array-data v3, :array_13e

    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 72
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 74
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 76
    const/4 v4, -0x1

    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 77
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 79
    new-instance v5, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v5, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 92
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 93
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 95
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    .line 96
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    .line 282
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 283
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 287
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    .line 289
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 290
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 291
    new-array v5, v1, [I

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 293
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 294
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 295
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 296
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 297
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 298
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 302
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 303
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 305
    const v5, 0x7fffffff

    filled-new-array {v5, v5}, [I

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 306
    const/4 v5, 0x0

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 307
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 310
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 398
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 399
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 417
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 418
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 419
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 420
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 421
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 422
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 423
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 424
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 432
    const/4 v6, 0x6

    new-array v6, v6, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v7, v6, v0

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v7, v6, v3

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v7, v6, v1

    const/4 v7, 0x3

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v8, v6, v7

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 433
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 435
    new-array v6, v1, [Z

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 440
    new-array v6, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v6, v0

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v6, v3

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 443
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 446
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 447
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 448
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 449
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 452
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 453
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 454
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    .line 455
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    .line 458
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 459
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 462
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 471
    sget v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 472
    sget v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 480
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 483
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 485
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    .line 486
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 487
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 499
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 502
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 503
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 507
    new-array v5, v1, [F

    fill-array-data v5, :array_144

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 509
    new-array v5, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v2, v5, v0

    aput-object v2, v5, v3

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 510
    new-array v1, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v2, v1, v0

    aput-object v2, v1, v3

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 512
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 513
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 703
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 704
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 737
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addAnchors()V

    .line 738
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 739
    return-void

    nop

    :array_13e
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_144
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "debugName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 782
    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(II)V

    .line 783
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 6
    .param p1, "debugName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 758
    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(IIII)V

    .line 759
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 760
    return-void
.end method

.method private addAnchors()V
    .registers 3

    .line 804
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    return-void
.end method

.method private applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V
    .registers 65
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "isHorizontal"    # Z
    .param p3, "parentWrapContent"    # Z
    .param p4, "oppositeParentWrapContent"    # Z
    .param p5, "isTerminal"    # Z
    .param p6, "parentMin"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p7, "parentMax"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p8, "dimensionBehaviour"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .param p9, "wrapContent"    # Z
    .param p10, "beginAnchor"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .param p11, "endAnchor"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .param p12, "beginPosition"    # I
    .param p13, "dimension"    # I
    .param p14, "minDimension"    # I
    .param p15, "maxDimension"    # I
    .param p16, "bias"    # F
    .param p17, "useRatio"    # Z
    .param p18, "oppositeVariable"    # Z
    .param p19, "inChain"    # Z
    .param p20, "oppositeInChain"    # Z
    .param p21, "inBarrier"    # Z
    .param p22, "matchConstraintDefault"    # I
    .param p23, "oppositeMatchConstraintDefault"    # I
    .param p24, "matchMinDimension"    # I
    .param p25, "matchMaxDimension"    # I
    .param p26, "matchPercentDimension"    # F
    .param p27, "applyPosition"    # Z

    .line 2873
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v9, p15

    move/from16 v8, p23

    move/from16 v1, p24

    move/from16 v2, p25

    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    .line 2874
    .local v7, "begin":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    .line 2875
    .local v6, "end":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5

    .line 2876
    .local v5, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    .line 2878
    .local v4, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    invoke-static {}, Landroidx/constraintlayout/core/LinearSystem;->getMetrics()Landroidx/constraintlayout/core/Metrics;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 2879
    invoke-static {}, Landroidx/constraintlayout/core/LinearSystem;->getMetrics()Landroidx/constraintlayout/core/Metrics;

    move-result-object v3

    iget-wide v11, v3, Landroidx/constraintlayout/core/Metrics;->nonresolvedWidgets:J

    const-wide/16 v16, 0x1

    add-long v11, v11, v16

    iput-wide v11, v3, Landroidx/constraintlayout/core/Metrics;->nonresolvedWidgets:J

    .line 2882
    :cond_40
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v11

    .line 2883
    .local v11, "isBeginConnected":Z
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    .line 2884
    .local v12, "isEndConnected":Z
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v16

    .line 2886
    .local v16, "isCenterConnected":Z
    const/4 v3, 0x0

    .line 2888
    .local v3, "variableSize":Z
    const/16 v17, 0x0

    .line 2889
    .local v17, "numConnections":I
    if-eqz v11, :cond_55

    .line 2890
    add-int/lit8 v17, v17, 0x1

    .line 2892
    :cond_55
    if-eqz v12, :cond_59

    .line 2893
    add-int/lit8 v17, v17, 0x1

    .line 2895
    :cond_59
    if-eqz v16, :cond_60

    .line 2896
    add-int/lit8 v17, v17, 0x1

    move/from16 v8, v17

    goto :goto_62

    .line 2895
    :cond_60
    move/from16 v8, v17

    .line 2899
    .end local v17    # "numConnections":I
    .local v8, "numConnections":I
    :goto_62
    if-eqz p17, :cond_69

    .line 2900
    const/16 v17, 0x3

    move/from16 v14, v17

    .end local p22    # "matchConstraintDefault":I
    .local v17, "matchConstraintDefault":I
    goto :goto_6b

    .line 2899
    .end local v17    # "matchConstraintDefault":I
    .restart local p22    # "matchConstraintDefault":I
    :cond_69
    move/from16 v14, p22

    .line 2902
    .end local p22    # "matchConstraintDefault":I
    .local v14, "matchConstraintDefault":I
    :goto_6b
    sget-object v17, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_774

    goto :goto_85

    .line 2916
    :pswitch_77
    const/4 v13, 0x4

    if-eq v14, v13, :cond_7c

    const/4 v13, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v13, 0x0

    :goto_7d
    move v3, v13

    goto :goto_85

    .line 2912
    :pswitch_7f
    const/4 v3, 0x0

    .line 2914
    goto :goto_85

    .line 2908
    :pswitch_81
    const/4 v3, 0x0

    .line 2910
    goto :goto_85

    .line 2904
    :pswitch_83
    const/4 v3, 0x0

    .line 2906
    nop

    .line 2922
    :goto_85
    iget v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    move-object/from16 v18, v4

    .end local v4    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v18, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    const/4 v4, -0x1

    if-eq v13, v4, :cond_94

    if-eqz p2, :cond_94

    .line 2926
    const/4 v3, 0x0

    .line 2927
    iget v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 2928
    .end local p13    # "dimension":I
    .local v13, "dimension":I
    iput v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    goto :goto_96

    .line 2930
    .end local v13    # "dimension":I
    .restart local p13    # "dimension":I
    :cond_94
    move/from16 v13, p13

    .end local p13    # "dimension":I
    .restart local v13    # "dimension":I
    :goto_96
    move/from16 p13, v3

    .end local v3    # "variableSize":Z
    .local p13, "variableSize":Z
    iget v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    if-eq v3, v4, :cond_a4

    if-nez p2, :cond_a4

    .line 2934
    const/4 v3, 0x0

    .line 2935
    .end local p13    # "variableSize":Z
    .restart local v3    # "variableSize":Z
    iget v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 2936
    iput v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    goto :goto_a6

    .line 2939
    .end local v3    # "variableSize":Z
    .restart local p13    # "variableSize":Z
    :cond_a4
    move/from16 v3, p13

    .end local p13    # "variableSize":Z
    .restart local v3    # "variableSize":Z
    :goto_a6
    iget v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    move/from16 p13, v13

    .end local v13    # "dimension":I
    .local p13, "dimension":I
    const/16 v13, 0x8

    if-ne v4, v13, :cond_b3

    .line 2940
    const/4 v4, 0x0

    .line 2941
    .end local p13    # "dimension":I
    .local v4, "dimension":I
    const/4 v3, 0x0

    move/from16 v20, v3

    goto :goto_b7

    .line 2939
    .end local v4    # "dimension":I
    .restart local p13    # "dimension":I
    :cond_b3
    move/from16 v4, p13

    move/from16 v20, v3

    .line 2945
    .end local v3    # "variableSize":Z
    .end local p13    # "dimension":I
    .restart local v4    # "dimension":I
    .local v20, "variableSize":Z
    :goto_b7
    if-eqz p27, :cond_d2

    .line 2946
    if-nez v11, :cond_c5

    if-nez v12, :cond_c5

    if-nez v16, :cond_c5

    .line 2947
    move/from16 v3, p12

    invoke-virtual {v10, v7, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    goto :goto_d2

    .line 2946
    :cond_c5
    move/from16 v3, p12

    .line 2948
    if-eqz v11, :cond_d2

    if-nez v12, :cond_d2

    .line 2949
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v10, v7, v5, v3, v13}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 2954
    :cond_d2
    :goto_d2
    const/4 v3, 0x3

    if-nez v20, :cond_104

    .line 2955
    if-eqz p9, :cond_ee

    .line 2956
    const/4 v13, 0x0

    invoke-virtual {v10, v6, v7, v13, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 2957
    if-lez v15, :cond_e3

    .line 2958
    const/16 v3, 0x8

    invoke-virtual {v10, v6, v7, v15, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_e5

    .line 2957
    :cond_e3
    const/16 v3, 0x8

    .line 2960
    :goto_e5
    const v13, 0x7fffffff

    if-ge v9, v13, :cond_f3

    .line 2961
    invoke-virtual {v10, v6, v7, v9, v3}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_f3

    .line 2964
    :cond_ee
    const/16 v3, 0x8

    invoke-virtual {v10, v6, v7, v4, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3037
    :cond_f3
    :goto_f3
    move/from16 v13, p5

    move/from16 v26, v2

    move/from16 v19, v4

    move-object/from16 v30, v5

    move/from16 v27, v8

    move-object/from16 v9, v18

    move/from16 v18, v1

    move-object v8, v6

    goto/16 :goto_228

    .line 2967
    :cond_104
    const/4 v3, 0x2

    if-eq v8, v3, :cond_130

    if-nez p17, :cond_130

    const/4 v3, 0x1

    if-eq v14, v3, :cond_10e

    if-nez v14, :cond_130

    .line 2971
    :cond_10e
    const/16 v20, 0x0

    .line 2972
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2973
    .local v3, "d":I
    if-lez v2, :cond_11a

    .line 2974
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2976
    :cond_11a
    const/16 v13, 0x8

    invoke-virtual {v10, v6, v7, v3, v13}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 2977
    .end local v3    # "d":I
    move/from16 v13, p5

    move/from16 v26, v2

    move/from16 v19, v4

    move-object/from16 v30, v5

    move/from16 v27, v8

    move-object/from16 v9, v18

    move/from16 v18, v1

    move-object v8, v6

    goto/16 :goto_228

    .line 2978
    :cond_130
    const/4 v3, -0x2

    if-ne v1, v3, :cond_136

    .line 2979
    move v1, v4

    move v13, v1

    .end local p24    # "matchMinDimension":I
    .local v1, "matchMinDimension":I
    goto :goto_137

    .line 2978
    .end local v1    # "matchMinDimension":I
    .restart local p24    # "matchMinDimension":I
    :cond_136
    move v13, v1

    .line 2981
    .end local p24    # "matchMinDimension":I
    .local v13, "matchMinDimension":I
    :goto_137
    if-ne v2, v3, :cond_13c

    .line 2982
    move v1, v4

    move v3, v1

    .end local p25    # "matchMaxDimension":I
    .local v1, "matchMaxDimension":I
    goto :goto_13d

    .line 2981
    .end local v1    # "matchMaxDimension":I
    .restart local p25    # "matchMaxDimension":I
    :cond_13c
    move v3, v2

    .line 2984
    .end local p25    # "matchMaxDimension":I
    .local v3, "matchMaxDimension":I
    :goto_13d
    if-lez v4, :cond_143

    const/4 v1, 0x1

    if-eq v14, v1, :cond_143

    .line 2989
    const/4 v4, 0x0

    .line 2992
    :cond_143
    if-lez v13, :cond_14e

    .line 2993
    const/16 v1, 0x8

    invoke-virtual {v10, v6, v7, v13, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2994
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2996
    :cond_14e
    if-lez v3, :cond_163

    .line 2997
    const/4 v1, 0x1

    .line 2998
    .local v1, "applyLimit":Z
    if-eqz p3, :cond_157

    const/4 v2, 0x1

    if-ne v14, v2, :cond_157

    .line 2999
    const/4 v1, 0x0

    .line 3001
    :cond_157
    if-eqz v1, :cond_15e

    .line 3002
    const/16 v2, 0x8

    invoke-virtual {v10, v6, v7, v3, v2}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3004
    :cond_15e
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v4, v2

    .line 3006
    .end local v1    # "applyLimit":Z
    :cond_163
    const/4 v1, 0x1

    if-ne v14, v1, :cond_193

    .line 3007
    if-eqz p3, :cond_16f

    .line 3008
    const/16 v1, 0x8

    invoke-virtual {v10, v6, v7, v4, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    const/4 v2, 0x5

    goto :goto_182

    .line 3009
    :cond_16f
    const/16 v1, 0x8

    if-eqz p19, :cond_17b

    .line 3010
    const/4 v2, 0x5

    invoke-virtual {v10, v6, v7, v4, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3011
    invoke-virtual {v10, v6, v7, v4, v1}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_182

    .line 3013
    :cond_17b
    const/4 v2, 0x5

    invoke-virtual {v10, v6, v7, v4, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3014
    invoke-virtual {v10, v6, v7, v4, v1}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3037
    :goto_182
    move/from16 v26, v3

    move/from16 v19, v4

    move-object/from16 v30, v5

    move/from16 v27, v8

    move-object/from16 v9, v18

    move-object v8, v6

    move/from16 v18, v13

    move/from16 v13, p5

    goto/16 :goto_228

    .line 3016
    :cond_193
    const/4 v2, 0x5

    const/4 v1, 0x2

    if-ne v14, v1, :cond_217

    .line 3017
    const/4 v1, 0x0

    .line 3018
    .local v1, "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    const/16 v24, 0x0

    .line 3019
    .local v24, "percentEnd":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v2

    move-object/from16 p24, v1

    .end local v1    # "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    .local p24, "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v2, v1, :cond_1cc

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_1ad

    goto :goto_1cc

    .line 3024
    :cond_1ad
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    .line 3025
    .end local p24    # "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v1    # "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 p24, v1

    .end local v1    # "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    .restart local p24    # "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    move-object/from16 v25, p24

    move-object/from16 v24, v1

    .end local v24    # "percentEnd":Landroidx/constraintlayout/core/SolverVariable;
    .local v1, "percentEnd":Landroidx/constraintlayout/core/SolverVariable;
    goto :goto_1ea

    .line 3021
    .end local v1    # "percentEnd":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v24    # "percentEnd":Landroidx/constraintlayout/core/SolverVariable;
    :cond_1cc
    :goto_1cc
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    .line 3022
    .end local p24    # "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    .local v1, "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 p24, v1

    .end local v1    # "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    .restart local p24    # "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    move-object/from16 v25, p24

    move-object/from16 v24, v1

    .line 3027
    .end local p24    # "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    .local v25, "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    :goto_1ea
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v1

    const/16 v26, 0x5

    move-object v2, v6

    move/from16 v26, v3

    move/from16 v27, v8

    const/4 v8, 0x5

    .end local v3    # "matchMaxDimension":I
    .end local v8    # "numConnections":I
    .local v26, "matchMaxDimension":I
    .local v27, "numConnections":I
    move-object v3, v7

    move-object/from16 v9, v18

    move/from16 v18, v4

    .end local v4    # "dimension":I
    .local v9, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v18, "dimension":I
    move-object/from16 v4, v24

    move-object/from16 v30, v5

    .end local v5    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v30, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    move-object/from16 v5, v25

    move-object v8, v6

    .end local v6    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "end":Landroidx/constraintlayout/core/SolverVariable;
    move/from16 v6, p26

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 3028
    if-eqz p3, :cond_210

    .line 3029
    const/4 v1, 0x0

    move/from16 v20, v1

    .line 3031
    .end local v24    # "percentEnd":Landroidx/constraintlayout/core/SolverVariable;
    .end local v25    # "percentBegin":Landroidx/constraintlayout/core/SolverVariable;
    :cond_210
    move/from16 v19, v18

    move/from16 v18, v13

    move/from16 v13, p5

    goto :goto_228

    .line 3032
    .end local v9    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v26    # "matchMaxDimension":I
    .end local v27    # "numConnections":I
    .end local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v3    # "matchMaxDimension":I
    .restart local v4    # "dimension":I
    .restart local v5    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v6    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "numConnections":I
    .local v18, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    :cond_217
    move/from16 v26, v3

    move-object/from16 v30, v5

    move/from16 v27, v8

    move-object/from16 v9, v18

    move/from16 v18, v4

    move-object v8, v6

    .end local v3    # "matchMaxDimension":I
    .end local v4    # "dimension":I
    .end local v5    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v6    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "end":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v9    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v18, "dimension":I
    .restart local v26    # "matchMaxDimension":I
    .restart local v27    # "numConnections":I
    .restart local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    const/4 v1, 0x1

    move/from16 v19, v18

    move/from16 v18, v13

    move v13, v1

    .line 3037
    .end local p5    # "isTerminal":Z
    .local v13, "isTerminal":Z
    .local v18, "matchMinDimension":I
    .local v19, "dimension":I
    :goto_228
    if-eqz p27, :cond_711

    if-eqz p19, :cond_244

    move-object/from16 v4, p7

    move-object/from16 v3, p11

    move-object v1, v0

    move-object v6, v7

    move-object v0, v8

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 p13, v13

    move v8, v14

    move/from16 v35, v27

    move-object/from16 v7, v30

    const/4 v2, 0x0

    move-object/from16 v11, p6

    move-object v12, v9

    goto/16 :goto_727

    .line 3070
    :cond_244
    const/4 v6, 0x5

    .line 3072
    .local v6, "wrapStrength":I
    if-nez v11, :cond_25f

    if-nez v12, :cond_25f

    if-nez v16, :cond_25f

    move-object v1, v0

    move-object v0, v8

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 p13, v13

    move v8, v14

    move/from16 v35, v27

    move-object/from16 v11, p6

    move v14, v6

    move-object v6, v7

    move-object v12, v9

    move-object/from16 v7, v30

    goto/16 :goto_6d9

    .line 3074
    :cond_25f
    if-eqz v11, :cond_287

    if-nez v12, :cond_287

    .line 3078
    move-object/from16 v5, p10

    iget-object v1, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3079
    .local v1, "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz p3, :cond_271

    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v2, :cond_271

    .line 3080
    const/16 v6, 0x8

    .line 3082
    .end local v1    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_271
    move/from16 v23, p3

    move-object v1, v0

    move-object v0, v8

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 p13, v13

    move v8, v14

    move/from16 v35, v27

    move-object/from16 v11, p6

    move v14, v6

    move-object v6, v7

    move-object v12, v9

    move-object/from16 v7, v30

    goto/16 :goto_6db

    .line 3074
    :cond_287
    move-object/from16 v5, p10

    const/4 v4, 0x0

    .line 3082
    if-nez v11, :cond_2f5

    if-eqz v12, :cond_2f5

    .line 3083
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0x8

    invoke-virtual {v10, v8, v9, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3084
    if-eqz p3, :cond_2e0

    .line 3085
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    if-eqz v1, :cond_2c7

    iget-boolean v1, v7, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v1, :cond_2c7

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_2c7

    .line 3086
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 3087
    .local v1, "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    if-eqz p2, :cond_2b0

    .line 3088
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto :goto_2b3

    .line 3090
    :cond_2b0
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3092
    .end local v1    # "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    :goto_2b3
    move-object v1, v0

    move-object v0, v8

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 p13, v13

    move v8, v14

    move/from16 v35, v27

    move-object/from16 v11, p6

    move v14, v6

    move-object v6, v7

    move-object v12, v9

    move-object/from16 v7, v30

    goto/16 :goto_6d9

    .line 3096
    :cond_2c7
    move-object/from16 v3, p6

    const/4 v1, 0x5

    invoke-virtual {v10, v7, v3, v4, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move-object v1, v0

    move-object v0, v8

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 p13, v13

    move v8, v14

    move/from16 v35, v27

    move-object v11, v3

    move v14, v6

    move-object v6, v7

    move-object v12, v9

    move-object/from16 v7, v30

    goto/16 :goto_6d9

    .line 3084
    :cond_2e0
    move-object/from16 v3, p6

    move-object v1, v0

    move-object v0, v8

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 p13, v13

    move v8, v14

    move/from16 v35, v27

    move-object v11, v3

    move v14, v6

    move-object v6, v7

    move-object v12, v9

    move-object/from16 v7, v30

    goto/16 :goto_6d9

    .line 3082
    :cond_2f5
    move-object/from16 v3, p6

    .line 3099
    if-eqz v11, :cond_6c8

    if-eqz v12, :cond_6c8

    .line 3100
    const/16 v23, 0x1

    .line 3101
    .local v23, "applyBoundsCheck":Z
    const/4 v1, 0x0

    .line 3102
    .local v1, "applyCentering":Z
    const/16 v24, 0x0

    .line 3103
    .local v24, "applyStrongChecks":Z
    const/4 v2, 0x0

    .line 3104
    .local v2, "applyRangeCheck":Z
    const/16 v25, 0x5

    .line 3105
    .local v25, "rangeCheckStrength":I
    const/16 v31, 0x4

    .line 3106
    .local v31, "boundsCheckStrength":I
    const/16 v32, 0x6

    .line 3108
    .local v32, "centeringStrength":I
    if-eqz p3, :cond_30b

    .line 3109
    const/16 v25, 0x5

    .line 3111
    :cond_30b
    iget-object v4, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3112
    .local v4, "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 p5, v1

    move/from16 v33, v11

    move v11, v14

    move-object/from16 v14, p11

    .end local v1    # "applyCentering":Z
    .end local v14    # "matchConstraintDefault":I
    .local v11, "matchConstraintDefault":I
    .local v33, "isBeginConnected":Z
    .local p5, "applyCentering":Z
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3113
    .local v1, "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v34, v12

    .end local v12    # "isEndConnected":Z
    .local v34, "isEndConnected":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v12

    .line 3115
    .local v12, "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v20, :cond_519

    .line 3116
    if-nez v11, :cond_39e

    .line 3117
    if-nez v26, :cond_355

    if-nez v18, :cond_355

    .line 3118
    const/16 v24, 0x1

    .line 3119
    const/16 v17, 0x8

    .line 3120
    .end local v25    # "rangeCheckStrength":I
    .local v17, "rangeCheckStrength":I
    const/16 v22, 0x8

    .line 3122
    .end local v31    # "boundsCheckStrength":I
    .local v22, "boundsCheckStrength":I
    move/from16 p13, v2

    move-object/from16 v15, v30

    .end local v2    # "applyRangeCheck":Z
    .end local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v15, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local p13, "applyRangeCheck":Z
    iget-boolean v2, v15, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v2, :cond_34c

    iget-boolean v2, v9, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v2, :cond_34c

    .line 3123
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v10, v7, v15, v2, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3124
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v8, v9, v2, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3125
    return-void

    .line 3134
    :cond_34c
    move/from16 v2, p5

    move/from16 v25, v17

    move/from16 v31, v22

    move/from16 v22, p13

    goto :goto_365

    .line 3117
    .end local v15    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v17    # "rangeCheckStrength":I
    .end local v22    # "boundsCheckStrength":I
    .end local p13    # "applyRangeCheck":Z
    .restart local v2    # "applyRangeCheck":Z
    .restart local v25    # "rangeCheckStrength":I
    .restart local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v31    # "boundsCheckStrength":I
    :cond_355
    move/from16 p13, v2

    move-object/from16 v15, v30

    .line 3128
    .end local v2    # "applyRangeCheck":Z
    .end local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v15    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local p13    # "applyRangeCheck":Z
    const/4 v2, 0x1

    .line 3129
    .end local p5    # "applyCentering":Z
    .local v2, "applyCentering":Z
    const/4 v3, 0x5

    .line 3130
    .end local v25    # "rangeCheckStrength":I
    .local v3, "rangeCheckStrength":I
    const/16 v17, 0x5

    .line 3131
    .end local v31    # "boundsCheckStrength":I
    .local v17, "boundsCheckStrength":I
    const/16 v23, 0x1

    .line 3132
    const/16 v22, 0x1

    move/from16 v25, v3

    move/from16 v31, v17

    .line 3134
    .end local v3    # "rangeCheckStrength":I
    .end local v17    # "boundsCheckStrength":I
    .end local p13    # "applyRangeCheck":Z
    .local v22, "applyRangeCheck":Z
    .restart local v25    # "rangeCheckStrength":I
    .restart local v31    # "boundsCheckStrength":I
    :goto_365
    instance-of v3, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v3, :cond_385

    instance-of v3, v1, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v3, :cond_36e

    goto :goto_385

    :cond_36e
    move-object/from16 v36, v1

    move/from16 v17, v2

    move-object/from16 v29, v4

    move-object/from16 p5, v7

    move-object v0, v8

    move/from16 p24, v11

    move-object/from16 p13, v12

    move/from16 v2, v22

    move/from16 v35, v27

    move v11, v6

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3135
    :cond_385
    :goto_385
    const/16 v31, 0x4

    move-object/from16 v36, v1

    move/from16 v17, v2

    move-object/from16 v29, v4

    move-object/from16 p5, v7

    move-object v0, v8

    move/from16 p24, v11

    move-object/from16 p13, v12

    move/from16 v2, v22

    move/from16 v35, v27

    move v11, v6

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3137
    .end local v15    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v22    # "applyRangeCheck":Z
    .local v2, "applyRangeCheck":Z
    .restart local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local p5    # "applyCentering":Z
    :cond_39e
    move/from16 p13, v2

    move-object/from16 v15, v30

    .end local v2    # "applyRangeCheck":Z
    .end local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v15    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local p13    # "applyRangeCheck":Z
    const/4 v2, 0x2

    if-ne v11, v2, :cond_3e6

    .line 3138
    const/4 v2, 0x1

    .line 3139
    .end local p5    # "applyCentering":Z
    .local v2, "applyCentering":Z
    const/16 v25, 0x5

    .line 3140
    const/16 v31, 0x5

    .line 3141
    const/16 v23, 0x1

    .line 3142
    const/4 v3, 0x1

    .line 3143
    .end local p13    # "applyRangeCheck":Z
    .local v3, "applyRangeCheck":Z
    move/from16 p5, v2

    .end local v2    # "applyCentering":Z
    .restart local p5    # "applyCentering":Z
    instance-of v2, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v2, :cond_3ce

    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v2, :cond_3b8

    goto :goto_3ce

    :cond_3b8
    move/from16 v17, p5

    move-object/from16 v36, v1

    move v2, v3

    move-object/from16 v29, v4

    move-object/from16 p5, v7

    move-object v0, v8

    move/from16 p24, v11

    move-object/from16 p13, v12

    move/from16 v35, v27

    move v11, v6

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3144
    :cond_3ce
    :goto_3ce
    const/16 v31, 0x4

    move/from16 v17, p5

    move-object/from16 v36, v1

    move v2, v3

    move-object/from16 v29, v4

    move-object/from16 p5, v7

    move-object v0, v8

    move/from16 p24, v11

    move-object/from16 p13, v12

    move/from16 v35, v27

    move v11, v6

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3146
    .end local v3    # "applyRangeCheck":Z
    .restart local p13    # "applyRangeCheck":Z
    :cond_3e6
    const/4 v2, 0x1

    if-ne v11, v2, :cond_403

    .line 3147
    const/4 v2, 0x1

    .line 3148
    .end local p5    # "applyCentering":Z
    .restart local v2    # "applyCentering":Z
    const/4 v3, 0x1

    .line 3149
    .end local p13    # "applyRangeCheck":Z
    .restart local v3    # "applyRangeCheck":Z
    const/16 v25, 0x8

    move-object/from16 v36, v1

    move/from16 v17, v2

    move v2, v3

    move-object/from16 v29, v4

    move-object/from16 p5, v7

    move-object v0, v8

    move/from16 p24, v11

    move-object/from16 p13, v12

    move/from16 v35, v27

    move v11, v6

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3150
    .end local v2    # "applyCentering":Z
    .end local v3    # "applyRangeCheck":Z
    .restart local p5    # "applyCentering":Z
    .restart local p13    # "applyRangeCheck":Z
    :cond_403
    const/4 v3, 0x3

    if-ne v11, v3, :cond_500

    .line 3151
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_461

    .line 3152
    const/4 v2, 0x1

    .line 3153
    .end local p5    # "applyCentering":Z
    .restart local v2    # "applyCentering":Z
    const/4 v3, 0x1

    .line 3154
    .end local p13    # "applyRangeCheck":Z
    .restart local v3    # "applyRangeCheck":Z
    const/16 v24, 0x1

    .line 3155
    const/16 v25, 0x8

    .line 3156
    const/16 v31, 0x5

    .line 3157
    if-eqz p20, :cond_449

    .line 3158
    const/16 v31, 0x5

    .line 3159
    const/16 v32, 0x4

    .line 3160
    if-eqz p3, :cond_433

    .line 3161
    const/16 v32, 0x5

    move-object/from16 v36, v1

    move/from16 v17, v2

    move v2, v3

    move-object/from16 v29, v4

    move-object/from16 p5, v7

    move-object v0, v8

    move/from16 p24, v11

    move-object/from16 p13, v12

    move/from16 v35, v27

    move v11, v6

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3160
    :cond_433
    move-object/from16 v36, v1

    move/from16 v17, v2

    move v2, v3

    move-object/from16 v29, v4

    move-object/from16 p5, v7

    move-object v0, v8

    move/from16 p24, v11

    move-object/from16 p13, v12

    move/from16 v35, v27

    move v11, v6

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3164
    :cond_449
    const/16 v32, 0x8

    move-object/from16 v36, v1

    move/from16 v17, v2

    move v2, v3

    move-object/from16 v29, v4

    move-object/from16 p5, v7

    move-object v0, v8

    move/from16 p24, v11

    move-object/from16 p13, v12

    move/from16 v35, v27

    move v11, v6

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3167
    .end local v2    # "applyCentering":Z
    .end local v3    # "applyRangeCheck":Z
    .restart local p5    # "applyCentering":Z
    .restart local p13    # "applyRangeCheck":Z
    :cond_461
    const/4 v2, 0x1

    .line 3168
    .end local p5    # "applyCentering":Z
    .restart local v2    # "applyCentering":Z
    const/4 v3, 0x1

    .line 3169
    .end local p13    # "applyRangeCheck":Z
    .restart local v3    # "applyRangeCheck":Z
    const/16 v24, 0x1

    .line 3170
    if-eqz p17, :cond_495

    .line 3173
    move/from16 p5, v2

    move/from16 p24, v11

    move/from16 v35, v27

    const/4 v2, 0x2

    move/from16 v11, p23

    .end local v2    # "applyCentering":Z
    .end local v11    # "matchConstraintDefault":I
    .end local v27    # "numConnections":I
    .local v35, "numConnections":I
    .restart local p5    # "applyCentering":Z
    .local p24, "matchConstraintDefault":I
    if-eq v11, v2, :cond_479

    const/4 v2, 0x1

    if-ne v11, v2, :cond_476

    goto :goto_479

    :cond_476
    const/16 v17, 0x0

    goto :goto_47b

    :cond_479
    :goto_479
    const/16 v17, 0x1

    :goto_47b
    move/from16 v2, v17

    .line 3175
    .local v2, "otherSideInvariable":Z
    if-nez v2, :cond_483

    .line 3176
    const/16 v25, 0x8

    .line 3177
    const/16 v31, 0x5

    .line 3179
    .end local v2    # "otherSideInvariable":Z
    :cond_483
    move/from16 v17, p5

    move-object/from16 v36, v1

    move v2, v3

    move-object/from16 v29, v4

    move v11, v6

    move-object/from16 p5, v7

    move-object v0, v8

    move-object/from16 p13, v12

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3180
    .end local v35    # "numConnections":I
    .end local p5    # "applyCentering":Z
    .end local p24    # "matchConstraintDefault":I
    .local v2, "applyCentering":Z
    .restart local v11    # "matchConstraintDefault":I
    .restart local v27    # "numConnections":I
    :cond_495
    move/from16 p5, v2

    move/from16 p24, v11

    move/from16 v35, v27

    move/from16 v11, p23

    .end local v2    # "applyCentering":Z
    .end local v11    # "matchConstraintDefault":I
    .end local v27    # "numConnections":I
    .restart local v35    # "numConnections":I
    .restart local p5    # "applyCentering":Z
    .restart local p24    # "matchConstraintDefault":I
    const/16 v25, 0x5

    .line 3181
    if-lez v26, :cond_4b5

    .line 3182
    const/16 v31, 0x5

    move/from16 v17, p5

    move-object/from16 v36, v1

    move v2, v3

    move-object/from16 v29, v4

    move v11, v6

    move-object/from16 p5, v7

    move-object v0, v8

    move-object/from16 p13, v12

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3183
    :cond_4b5
    if-nez v26, :cond_4ee

    if-nez v18, :cond_4ee

    .line 3184
    if-nez p20, :cond_4cf

    .line 3185
    const/16 v31, 0x8

    move/from16 v17, p5

    move-object/from16 v36, v1

    move v2, v3

    move-object/from16 v29, v4

    move v11, v6

    move-object/from16 p5, v7

    move-object v0, v8

    move-object/from16 p13, v12

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3187
    :cond_4cf
    if-eq v4, v12, :cond_4d7

    if-eq v1, v12, :cond_4d7

    .line 3188
    const/4 v2, 0x4

    move/from16 v25, v2

    .end local v25    # "rangeCheckStrength":I
    .local v2, "rangeCheckStrength":I
    goto :goto_4da

    .line 3190
    .end local v2    # "rangeCheckStrength":I
    .restart local v25    # "rangeCheckStrength":I
    :cond_4d7
    const/4 v2, 0x5

    move/from16 v25, v2

    .line 3192
    :goto_4da
    const/16 v31, 0x4

    move/from16 v17, p5

    move-object/from16 v36, v1

    move v2, v3

    move-object/from16 v29, v4

    move v11, v6

    move-object/from16 p5, v7

    move-object v0, v8

    move-object/from16 p13, v12

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3222
    :cond_4ee
    move/from16 v17, p5

    move-object/from16 v36, v1

    move v2, v3

    move-object/from16 v29, v4

    move v11, v6

    move-object/from16 p5, v7

    move-object v0, v8

    move-object/from16 p13, v12

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3150
    .end local v3    # "applyRangeCheck":Z
    .end local v35    # "numConnections":I
    .end local p24    # "matchConstraintDefault":I
    .restart local v11    # "matchConstraintDefault":I
    .restart local v27    # "numConnections":I
    .restart local p13    # "applyRangeCheck":Z
    :cond_500
    move/from16 p24, v11

    move/from16 v35, v27

    move/from16 v11, p23

    .end local v11    # "matchConstraintDefault":I
    .end local v27    # "numConnections":I
    .restart local v35    # "numConnections":I
    .restart local p24    # "matchConstraintDefault":I
    move/from16 v17, p5

    move/from16 v2, p13

    move-object/from16 v36, v1

    move-object/from16 v29, v4

    move v11, v6

    move-object/from16 p5, v7

    move-object v0, v8

    move-object/from16 p13, v12

    move-object v12, v9

    move-object/from16 v9, p7

    goto/16 :goto_580

    .line 3199
    .end local v15    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v35    # "numConnections":I
    .end local p13    # "applyRangeCheck":Z
    .end local p24    # "matchConstraintDefault":I
    .local v2, "applyRangeCheck":Z
    .restart local v11    # "matchConstraintDefault":I
    .restart local v27    # "numConnections":I
    .restart local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    :cond_519
    move/from16 p13, v2

    move/from16 p24, v11

    move/from16 v35, v27

    move-object/from16 v15, v30

    move/from16 v11, p23

    .end local v2    # "applyRangeCheck":Z
    .end local v11    # "matchConstraintDefault":I
    .end local v27    # "numConnections":I
    .end local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v15    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v35    # "numConnections":I
    .restart local p13    # "applyRangeCheck":Z
    .restart local p24    # "matchConstraintDefault":I
    const/16 v17, 0x1

    .line 3200
    .end local p5    # "applyCentering":Z
    .local v17, "applyCentering":Z
    const/16 v22, 0x1

    .line 3203
    .end local p13    # "applyRangeCheck":Z
    .restart local v22    # "applyRangeCheck":Z
    iget-boolean v2, v15, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v2, :cond_571

    iget-boolean v2, v9, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v2, :cond_571

    .line 3204
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    .line 3205
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    .line 3204
    const/16 v28, 0x8

    move-object v3, v1

    .end local v1    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v3, "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v11, p6

    move-object/from16 v36, v3

    .end local v3    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v36, "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object v3, v15

    move-object v0, v4

    .end local v4    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v0, "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v4, v21

    move/from16 v5, p16

    move v11, v6

    .end local v6    # "wrapStrength":I
    .local v11, "wrapStrength":I
    move-object v6, v9

    move-object/from16 p5, v7

    .end local v7    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local p5, "begin":Landroidx/constraintlayout/core/SolverVariable;
    move-object v7, v8

    move-object/from16 v29, v0

    move-object v0, v8

    .end local v8    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .local v0, "end":Landroidx/constraintlayout/core/SolverVariable;
    .local v29, "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v8, v27

    move-object/from16 p13, v12

    move-object v12, v9

    .end local v9    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v12, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local p13, "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v9, v28

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3206
    if-eqz p3, :cond_56e

    if-eqz v13, :cond_56e

    .line 3207
    const/4 v1, 0x0

    .line 3208
    .local v1, "margin":I
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_566

    .line 3209
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 3211
    :cond_566
    move-object/from16 v9, p7

    if-eq v12, v9, :cond_570

    .line 3215
    invoke-virtual {v10, v9, v0, v1, v11}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_570

    .line 3206
    .end local v1    # "margin":I
    :cond_56e
    move-object/from16 v9, p7

    .line 3218
    :cond_570
    :goto_570
    return-void

    .line 3203
    .end local v0    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .end local v11    # "wrapStrength":I
    .end local v29    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v36    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local p5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local p13    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v1, "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v4    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v6    # "wrapStrength":I
    .restart local v7    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v8    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v9    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v12, "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_571
    move-object/from16 v36, v1

    move-object/from16 v29, v4

    move v11, v6

    move-object/from16 p5, v7

    move-object v0, v8

    move-object/from16 p13, v12

    move-object v12, v9

    move-object/from16 v9, p7

    .line 3222
    .end local v1    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v4    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v6    # "wrapStrength":I
    .end local v7    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v8    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .end local v9    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v0    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v11    # "wrapStrength":I
    .local v12, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v29    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v36    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local p5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .restart local p13    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v2, v22

    .end local v22    # "applyRangeCheck":Z
    .restart local v2    # "applyRangeCheck":Z
    :goto_580
    if-eqz v2, :cond_590

    if-ne v15, v12, :cond_590

    move-object/from16 v7, p13

    move-object/from16 v8, v29

    .end local v29    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local p13    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v7, "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v8, "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eq v8, v7, :cond_594

    .line 3224
    const/4 v2, 0x0

    .line 3225
    const/16 v23, 0x0

    move/from16 v22, v2

    goto :goto_596

    .line 3222
    .end local v7    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v8    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v29    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local p13    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_590
    move-object/from16 v7, p13

    move-object/from16 v8, v29

    .line 3228
    .end local v29    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local p13    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v7    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v8    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_594
    move/from16 v22, v2

    .end local v2    # "applyRangeCheck":Z
    .restart local v22    # "applyRangeCheck":Z
    :goto_596
    if-eqz v17, :cond_5df

    .line 3229
    if-nez v20, :cond_5b4

    if-nez p18, :cond_5b4

    if-nez p20, :cond_5b4

    move v6, v11

    move-object/from16 v11, p6

    .end local v11    # "wrapStrength":I
    .restart local v6    # "wrapStrength":I
    if-ne v15, v11, :cond_5b7

    if-ne v12, v9, :cond_5b7

    .line 3232
    const/16 v1, 0x8

    .line 3233
    .end local v32    # "centeringStrength":I
    .local v1, "centeringStrength":I
    const/16 v2, 0x8

    .line 3234
    .end local v25    # "rangeCheckStrength":I
    .local v2, "rangeCheckStrength":I
    const/4 v3, 0x0

    .line 3235
    .end local v23    # "applyBoundsCheck":Z
    .local v3, "applyBoundsCheck":Z
    const/4 v4, 0x0

    move/from16 v32, v1

    move/from16 v27, v2

    move/from16 v25, v3

    move/from16 v23, v4

    .end local p3    # "parentWrapContent":Z
    .local v4, "parentWrapContent":Z
    goto :goto_5bd

    .line 3229
    .end local v1    # "centeringStrength":I
    .end local v2    # "rangeCheckStrength":I
    .end local v3    # "applyBoundsCheck":Z
    .end local v4    # "parentWrapContent":Z
    .end local v6    # "wrapStrength":I
    .restart local v11    # "wrapStrength":I
    .restart local v23    # "applyBoundsCheck":Z
    .restart local v25    # "rangeCheckStrength":I
    .restart local v32    # "centeringStrength":I
    .restart local p3    # "parentWrapContent":Z
    :cond_5b4
    move v6, v11

    move-object/from16 v11, p6

    .line 3238
    .end local v11    # "wrapStrength":I
    .restart local v6    # "wrapStrength":I
    :cond_5b7
    move/from16 v27, v25

    move/from16 v25, v23

    move/from16 v23, p3

    .end local p3    # "parentWrapContent":Z
    .local v23, "parentWrapContent":Z
    .local v25, "applyBoundsCheck":Z
    .local v27, "rangeCheckStrength":I
    :goto_5bd
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 3239
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v29

    .line 3238
    move-object/from16 v1, p1

    move-object/from16 v2, p5

    const/4 v5, 0x3

    move-object v3, v15

    const/4 v14, 0x0

    const/4 v14, 0x3

    move/from16 v5, p16

    move v14, v6

    .end local v6    # "wrapStrength":I
    .local v14, "wrapStrength":I
    move-object v6, v12

    move/from16 p13, v13

    move-object v13, v7

    .end local v7    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v13, "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local p13, "isTerminal":Z
    move-object v7, v0

    move-object/from16 v30, v8

    .end local v8    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v30, "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v8, v29

    move/from16 v9, v32

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_5ed

    .line 3228
    .end local v14    # "wrapStrength":I
    .end local v27    # "rangeCheckStrength":I
    .end local v30    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local p13    # "isTerminal":Z
    .restart local v7    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v8    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v11    # "wrapStrength":I
    .local v13, "isTerminal":Z
    .local v23, "applyBoundsCheck":Z
    .local v25, "rangeCheckStrength":I
    .restart local p3    # "parentWrapContent":Z
    :cond_5df
    move-object/from16 v30, v8

    move v14, v11

    move/from16 p13, v13

    move-object/from16 v11, p6

    move-object v13, v7

    .end local v7    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v8    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v11    # "wrapStrength":I
    .local v13, "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v14    # "wrapStrength":I
    .restart local v30    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local p13    # "isTerminal":Z
    move/from16 v27, v25

    move/from16 v25, v23

    move/from16 v23, p3

    .line 3242
    .end local p3    # "parentWrapContent":Z
    .local v23, "parentWrapContent":Z
    .local v25, "applyBoundsCheck":Z
    .restart local v27    # "rangeCheckStrength":I
    :goto_5ed
    move-object/from16 v1, p0

    move-object/from16 v2, v30

    .end local v30    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v2, "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5fe

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v3

    if-nez v3, :cond_5fe

    .line 3243
    return-void

    .line 3246
    :cond_5fe
    if-eqz v22, :cond_62d

    .line 3247
    if-eqz v23, :cond_615

    if-eq v15, v12, :cond_615

    if-nez v20, :cond_615

    .line 3249
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v3, :cond_611

    move-object/from16 v3, v36

    .end local v36    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v3, "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v4, :cond_617

    goto :goto_613

    .end local v3    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v36    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_611
    move-object/from16 v3, v36

    .line 3250
    .end local v36    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v3    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_613
    const/4 v4, 0x6

    .end local v27    # "rangeCheckStrength":I
    .local v4, "rangeCheckStrength":I
    goto :goto_619

    .line 3247
    .end local v3    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v4    # "rangeCheckStrength":I
    .restart local v27    # "rangeCheckStrength":I
    .restart local v36    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_615
    move-object/from16 v3, v36

    .line 3253
    .end local v36    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v3    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_617
    move/from16 v4, v27

    .end local v27    # "rangeCheckStrength":I
    .restart local v4    # "rangeCheckStrength":I
    :goto_619
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    move-object/from16 v6, p5

    .end local p5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v6, "begin":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v10, v6, v15, v5, v4}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3254
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v10, v0, v12, v5, v4}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move/from16 v27, v4

    goto :goto_631

    .line 3246
    .end local v3    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v4    # "rangeCheckStrength":I
    .end local v6    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v27    # "rangeCheckStrength":I
    .restart local v36    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local p5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    :cond_62d
    move-object/from16 v6, p5

    move-object/from16 v3, v36

    .line 3257
    .end local v36    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local p5    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v3    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v6    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    :goto_631
    if-eqz v23, :cond_64a

    if-eqz p21, :cond_64a

    instance-of v4, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v4, :cond_64a

    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v4, :cond_64a

    if-eq v3, v13, :cond_64a

    .line 3262
    const/16 v31, 0x6

    .line 3263
    const/16 v27, 0x6

    .line 3264
    const/16 v25, 0x1

    move/from16 v4, v27

    move/from16 v5, v31

    goto :goto_64e

    .line 3267
    :cond_64a
    move/from16 v4, v27

    move/from16 v5, v31

    .end local v27    # "rangeCheckStrength":I
    .end local v31    # "boundsCheckStrength":I
    .restart local v4    # "rangeCheckStrength":I
    .local v5, "boundsCheckStrength":I
    :goto_64e
    if-eqz v25, :cond_693

    .line 3268
    if-eqz v24, :cond_675

    if-eqz p20, :cond_656

    if-eqz p4, :cond_675

    .line 3269
    :cond_656
    move v7, v5

    .line 3270
    .local v7, "strength":I
    if-eq v2, v13, :cond_65b

    if-ne v3, v13, :cond_65c

    .line 3271
    :cond_65b
    const/4 v7, 0x6

    .line 3273
    :cond_65c
    instance-of v8, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v8, :cond_664

    instance-of v8, v3, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v8, :cond_665

    .line 3274
    :cond_664
    const/4 v7, 0x5

    .line 3276
    :cond_665
    instance-of v8, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v8, :cond_66d

    instance-of v8, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v8, :cond_66e

    .line 3277
    :cond_66d
    const/4 v7, 0x5

    .line 3279
    :cond_66e
    if-eqz p20, :cond_671

    .line 3280
    const/4 v7, 0x5

    .line 3282
    :cond_671
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3285
    .end local v7    # "strength":I
    :cond_675
    if-eqz v23, :cond_684

    .line 3286
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3287
    if-eqz p17, :cond_684

    if-nez p20, :cond_684

    if-eq v2, v13, :cond_683

    if-ne v3, v13, :cond_684

    .line 3290
    :cond_683
    const/4 v5, 0x4

    .line 3293
    :cond_684
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    invoke-virtual {v10, v6, v15, v7, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3294
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v10, v0, v12, v7, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3297
    :cond_693
    if-eqz v23, :cond_6a1

    .line 3298
    const/4 v7, 0x0

    .line 3299
    .local v7, "margin":I
    if-ne v11, v15, :cond_69c

    .line 3300
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    .line 3302
    :cond_69c
    if-eq v15, v11, :cond_6a1

    .line 3306
    invoke-virtual {v10, v6, v11, v7, v14}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3310
    .end local v7    # "margin":I
    :cond_6a1
    if-eqz v23, :cond_6c4

    if-eqz v20, :cond_6c4

    move-object v7, v15

    .end local v15    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v7, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    if-nez p14, :cond_6c1

    if-nez v18, :cond_6c1

    .line 3314
    if-eqz v20, :cond_6ba

    move/from16 v8, p24

    const/4 v9, 0x3

    .end local p24    # "matchConstraintDefault":I
    .local v8, "matchConstraintDefault":I
    if-ne v8, v9, :cond_6b8

    .line 3315
    const/4 v9, 0x0

    const/16 v15, 0x8

    invoke-virtual {v10, v0, v6, v9, v15}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_6db

    .line 3314
    :cond_6b8
    const/4 v9, 0x0

    goto :goto_6bd

    .end local v8    # "matchConstraintDefault":I
    .restart local p24    # "matchConstraintDefault":I
    :cond_6ba
    move/from16 v8, p24

    const/4 v9, 0x0

    .line 3317
    .end local p24    # "matchConstraintDefault":I
    .restart local v8    # "matchConstraintDefault":I
    :goto_6bd
    invoke-virtual {v10, v0, v6, v9, v14}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_6db

    .line 3310
    .end local v8    # "matchConstraintDefault":I
    .restart local p24    # "matchConstraintDefault":I
    :cond_6c1
    move/from16 v8, p24

    .end local p24    # "matchConstraintDefault":I
    .restart local v8    # "matchConstraintDefault":I
    goto :goto_6db

    .end local v7    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v8    # "matchConstraintDefault":I
    .restart local v15    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local p24    # "matchConstraintDefault":I
    :cond_6c4
    move/from16 v8, p24

    move-object v7, v15

    .end local v15    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local p24    # "matchConstraintDefault":I
    .restart local v7    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v8    # "matchConstraintDefault":I
    goto :goto_6db

    .line 3099
    .end local v0    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .end local v2    # "beginWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v3    # "endWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v4    # "rangeCheckStrength":I
    .end local v5    # "boundsCheckStrength":I
    .end local v17    # "applyCentering":Z
    .end local v22    # "applyRangeCheck":Z
    .end local v23    # "parentWrapContent":Z
    .end local v24    # "applyStrongChecks":Z
    .end local v25    # "applyBoundsCheck":Z
    .end local v32    # "centeringStrength":I
    .end local v33    # "isBeginConnected":Z
    .end local v34    # "isEndConnected":Z
    .end local v35    # "numConnections":I
    .end local p13    # "isTerminal":Z
    .local v6, "wrapStrength":I
    .local v7, "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "end":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v9    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v11, "isBeginConnected":Z
    .local v12, "isEndConnected":Z
    .local v13, "isTerminal":Z
    .local v14, "matchConstraintDefault":I
    .local v27, "numConnections":I
    .local v30, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local p3    # "parentWrapContent":Z
    :cond_6c8
    move-object v1, v0

    move-object v0, v8

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 p13, v13

    move v8, v14

    move/from16 v35, v27

    move-object v11, v3

    move v14, v6

    move-object v6, v7

    move-object v12, v9

    move-object/from16 v7, v30

    .line 3322
    .end local v9    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v11    # "isBeginConnected":Z
    .end local v13    # "isTerminal":Z
    .end local v27    # "numConnections":I
    .end local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v0    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .local v6, "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v7, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "matchConstraintDefault":I
    .local v12, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v14, "wrapStrength":I
    .restart local v33    # "isBeginConnected":Z
    .restart local v34    # "isEndConnected":Z
    .restart local v35    # "numConnections":I
    .restart local p13    # "isTerminal":Z
    :goto_6d9
    move/from16 v23, p3

    .end local p3    # "parentWrapContent":Z
    .restart local v23    # "parentWrapContent":Z
    :goto_6db
    if-eqz v23, :cond_70c

    if-eqz p13, :cond_70c

    .line 3323
    const/4 v2, 0x0

    .line 3324
    .local v2, "margin":I
    move-object/from16 v3, p11

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_6ea

    .line 3325
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    .line 3327
    :cond_6ea
    move-object/from16 v4, p7

    if-eq v12, v4, :cond_710

    .line 3328
    iget-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    if-eqz v5, :cond_708

    iget-boolean v5, v0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v5, :cond_708

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v5, :cond_708

    .line 3329
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 3330
    .local v5, "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    if-eqz p2, :cond_704

    .line 3331
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto :goto_707

    .line 3333
    :cond_704
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3335
    :goto_707
    return-void

    .line 3340
    .end local v5    # "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    :cond_708
    invoke-virtual {v10, v4, v0, v2, v14}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_710

    .line 3322
    .end local v2    # "margin":I
    :cond_70c
    move-object/from16 v4, p7

    move-object/from16 v3, p11

    .line 3343
    :cond_710
    :goto_710
    return-void

    .line 3037
    .end local v0    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .end local v6    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v23    # "parentWrapContent":Z
    .end local v33    # "isBeginConnected":Z
    .end local v34    # "isEndConnected":Z
    .end local v35    # "numConnections":I
    .end local p13    # "isTerminal":Z
    .local v7, "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "end":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v9    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v11    # "isBeginConnected":Z
    .local v12, "isEndConnected":Z
    .restart local v13    # "isTerminal":Z
    .local v14, "matchConstraintDefault":I
    .restart local v27    # "numConnections":I
    .restart local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local p3    # "parentWrapContent":Z
    :cond_711
    move-object/from16 v4, p7

    move-object/from16 v3, p11

    move-object v1, v0

    move-object v6, v7

    move-object v0, v8

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 p13, v13

    move v8, v14

    move/from16 v35, v27

    move-object/from16 v7, v30

    const/4 v2, 0x0

    move-object/from16 v11, p6

    move-object v12, v9

    .line 3043
    .end local v9    # "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v11    # "isBeginConnected":Z
    .end local v13    # "isTerminal":Z
    .end local v14    # "matchConstraintDefault":I
    .end local v27    # "numConnections":I
    .end local v30    # "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v0    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v6    # "begin":Landroidx/constraintlayout/core/SolverVariable;
    .local v7, "beginTarget":Landroidx/constraintlayout/core/SolverVariable;
    .local v8, "matchConstraintDefault":I
    .local v12, "endTarget":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v33    # "isBeginConnected":Z
    .restart local v34    # "isEndConnected":Z
    .restart local v35    # "numConnections":I
    .restart local p13    # "isTerminal":Z
    :goto_727
    move/from16 v5, v35

    const/4 v9, 0x2

    .end local v35    # "numConnections":I
    .local v5, "numConnections":I
    if-ge v5, v9, :cond_772

    if-eqz p3, :cond_772

    if-eqz p13, :cond_772

    .line 3044
    const/16 v9, 0x8

    invoke-virtual {v10, v6, v11, v2, v9}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3045
    if-nez p2, :cond_740

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v9, :cond_73e

    goto :goto_740

    :cond_73e
    const/4 v13, 0x0

    goto :goto_741

    :cond_740
    :goto_740
    const/4 v13, 0x1

    :goto_741
    move v9, v13

    .line 3046
    .local v9, "applyEnd":Z
    if-nez p2, :cond_76b

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v13, :cond_76b

    .line 3049
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3050
    .local v13, "target":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_76a

    iget-object v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v14, v14, v2

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_76a

    iget-object v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_76a

    .line 3053
    const/4 v9, 0x1

    goto :goto_76b

    .line 3055
    :cond_76a
    const/4 v9, 0x0

    .line 3058
    .end local v13    # "target":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_76b
    :goto_76b
    if-eqz v9, :cond_772

    .line 3062
    const/16 v13, 0x8

    invoke-virtual {v10, v4, v0, v2, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3065
    .end local v9    # "applyEnd":Z
    :cond_772
    return-void

    nop

    :pswitch_data_774
    .packed-switch 0x1
        :pswitch_83
        :pswitch_81
        :pswitch_7f
        :pswitch_77
    .end packed-switch
.end method

.method private getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V
    .registers 14
    .param p1, "ret"    # Ljava/lang/StringBuilder;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "min"    # I
    .param p5, "max"    # I
    .param p6, "override"    # I
    .param p7, "matchConstraintMin"    # I
    .param p8, "matchConstraintDefault"    # I
    .param p9, "MatchConstraintPercent"    # F
    .param p10, "weight"    # F

    .line 3639
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3640
    const-string v0, " :  {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3641
    const-string v0, "      size"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3642
    const-string v0, "      min"

    invoke-direct {p0, p1, v0, p4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3643
    const-string v0, "      max"

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, p5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3644
    const-string v0, "      matchMin"

    invoke-direct {p0, p1, v0, p7, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3645
    const-string v0, "      matchDef"

    invoke-direct {p0, p1, v0, p8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3646
    const-string v0, "      matchPercent"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, p9, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 3647
    const-string v0, "    },\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3648
    return-void
.end method

.method private getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 7
    .param p1, "ret"    # Ljava/lang/StringBuilder;
    .param p2, "side"    # Ljava/lang/String;
    .param p3, "a"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3650
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v0, :cond_5

    .line 3651
    return-void

    .line 3653
    :cond_5
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3654
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3655
    const-string v0, " : [ \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3656
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3657
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3658
    iget v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_26

    iget v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    if-eqz v0, :cond_3f

    .line 3659
    :cond_26
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3660
    iget v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3661
    iget v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    if-eq v2, v1, :cond_3f

    .line 3662
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    iget v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3664
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3667
    :cond_3f
    const-string v0, " ] ,\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3668
    return-void
.end method

.method private isChainHead(I)Z
    .registers 6
    .param p1, "orientation"    # I

    .line 2385
    mul-int/lit8 v0, p1, 0x2

    .line 2386
    .local v0, "offset":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_36

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_36

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    return v1
.end method

.method private serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 6
    .param p1, "ret"    # Ljava/lang/StringBuilder;
    .param p2, "side"    # Ljava/lang/String;
    .param p3, "a"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 585
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v0, :cond_5

    .line 586
    return-void

    .line 588
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v0, " : [ \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 591
    const-string v0, "\',"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v0, " ] ,\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    return-void
.end method

.method private serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .registers 6
    .param p1, "ret"    # Ljava/lang/StringBuilder;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # F
    .param p4, "def"    # F

    .line 614
    cmpl-float v0, p3, p4

    if-nez v0, :cond_5

    .line 615
    return-void

    .line 617
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v0, " :   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 620
    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    return-void
.end method

.method private serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .registers 6
    .param p1, "ret"    # Ljava/lang/StringBuilder;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "def"    # I

    .line 624
    if-ne p3, p4, :cond_3

    .line 625
    return-void

    .line 627
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string v0, " :   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    return-void
.end method

.method private serializeCircle(Ljava/lang/StringBuilder;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;F)V
    .registers 5
    .param p1, "ret"    # Ljava/lang/StringBuilder;
    .param p2, "a"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .param p3, "angle"    # F

    .line 599
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v0, :cond_5

    .line 600
    return-void

    .line 603
    :cond_5
    const-string v0, "circle : [ \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    const-string v0, "\',"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 607
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v0, " ] ,\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    return-void
.end method

.method private serializeDimensionRatio(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V
    .registers 6
    .param p1, "ret"    # Ljava/lang/StringBuilder;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # F
    .param p4, "whichSide"    # I

    .line 634
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_6

    .line 635
    return-void

    .line 637
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v0, " :  ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 640
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v0, "],\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    return-void
.end method

.method private serializeSize(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V
    .registers 14
    .param p1, "ret"    # Ljava/lang/StringBuilder;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "min"    # I
    .param p5, "max"    # I
    .param p6, "override"    # I
    .param p7, "matchConstraintMin"    # I
    .param p8, "matchConstraintDefault"    # I
    .param p9, "MatchConstraintPercent"    # F
    .param p10, "weight"    # F

    .line 651
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string v0, " :  {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string/jumbo v0, "size"

    const/high16 v1, -0x80000000

    invoke-direct {p0, p1, v0, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 654
    const-string v0, "min"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 655
    const-string v0, "max"

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, p5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 656
    const-string v0, "matchMin"

    invoke-direct {p0, p1, v0, p7, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 657
    const-string v0, "matchDef"

    invoke-direct {p0, p1, v0, p8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 658
    const-string v0, "matchPercent"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 659
    const-string/jumbo v0, "},\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    return-void
.end method


# virtual methods
.method public addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V
    .registers 15
    .param p1, "container"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .param p2, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p4, "orientation"    # I
    .param p5, "addSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;IZ)V"
        }
    .end annotation

    .line 3542
    .local p3, "widgets":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    if-eqz p5, :cond_18

    .line 3543
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3544
    return-void

    .line 3546
    :cond_9
    invoke-static {p1, p2, p0}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 3547
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3548
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 3550
    :cond_18
    if-nez p4, :cond_62

    .line 3551
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    .line 3552
    .local v0, "dependents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/core/widgets/ConstraintAnchor;>;"
    if-eqz v0, :cond_3d

    .line 3553
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3554
    .local v2, "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3555
    .end local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto :goto_26

    .line 3557
    :cond_3d
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    .line 3558
    if-eqz v0, :cond_60

    .line 3559
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3560
    .restart local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3561
    .end local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto :goto_49

    .line 3563
    .end local v0    # "dependents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/core/widgets/ConstraintAnchor;>;"
    :cond_60
    goto/16 :goto_cd

    .line 3564
    :cond_62
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    .line 3565
    .restart local v0    # "dependents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/core/widgets/ConstraintAnchor;>;"
    if-eqz v0, :cond_85

    .line 3566
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3567
    .restart local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3568
    .end local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto :goto_6e

    .line 3570
    :cond_85
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    .line 3571
    if-eqz v0, :cond_a8

    .line 3572
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3573
    .restart local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3574
    .end local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto :goto_91

    .line 3576
    :cond_a8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v0

    .line 3577
    if-eqz v0, :cond_cd

    .line 3578
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3579
    .restart local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    :try_start_c7
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_cb

    .line 3580
    .end local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto :goto_b4

    .line 3579
    .end local v0    # "dependents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/core/widgets/ConstraintAnchor;>;"
    .end local p0    # "this":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local p1    # "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .end local p2    # "system":Landroidx/constraintlayout/core/LinearSystem;
    .end local p3    # "widgets":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .end local p4    # "orientation":I
    .end local p5    # "addSelf":Z
    :catchall_cb
    move-exception p1

    throw p1

    .line 3584
    .restart local p1    # "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .restart local p2    # "system":Landroidx/constraintlayout/core/LinearSystem;
    .restart local p3    # "widgets":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    .restart local p4    # "orientation":I
    .restart local p5    # "addSelf":Z
    :cond_cd
    :goto_cd
    return-void
.end method

.method addFirst()Z
    .registers 2

    .line 2777
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v0, :cond_b

    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 76
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "optimize"    # Z

    .line 2413
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v13

    .line 2414
    .local v13, "left":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v12

    .line 2415
    .local v12, "right":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v11

    .line 2416
    .local v11, "top":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v10

    .line 2417
    .local v10, "bottom":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    .line 2419
    .local v9, "baseline":Landroidx/constraintlayout/core/SolverVariable;
    const/4 v0, 0x0

    .line 2420
    .local v0, "horizontalParentWrapContent":Z
    const/4 v1, 0x0

    .line 2421
    .local v1, "verticalParentWrapContent":Z
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_63

    .line 2422
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_3a

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v5

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_3a

    const/4 v2, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    move v0, v2

    .line 2423
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_4c

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v8

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_4c

    const/4 v2, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x0

    :goto_4d
    move v1, v2

    .line 2425
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    packed-switch v2, :pswitch_data_6e2

    move v4, v0

    move v3, v1

    goto :goto_65

    .line 2427
    :pswitch_56
    const/4 v0, 0x0

    .line 2428
    const/4 v1, 0x0

    .line 2429
    move v4, v0

    move v3, v1

    goto :goto_65

    .line 2434
    :pswitch_5b
    const/4 v0, 0x0

    move v4, v0

    move v3, v1

    goto :goto_65

    .line 2431
    :pswitch_5f
    const/4 v1, 0x0

    .line 2432
    move v4, v0

    move v3, v1

    goto :goto_65

    .line 2421
    :cond_63
    move v4, v0

    move v3, v1

    .line 2439
    .end local v0    # "horizontalParentWrapContent":Z
    .end local v1    # "verticalParentWrapContent":Z
    .local v3, "verticalParentWrapContent":Z
    .local v4, "horizontalParentWrapContent":Z
    :goto_65
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_82

    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    if-nez v0, :cond_82

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDependencies()Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_82

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aget-boolean v0, v0, v8

    if-nez v0, :cond_82

    .line 2441
    return-void

    .line 2444
    :cond_82
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-nez v0, :cond_8a

    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-eqz v0, :cond_113

    .line 2452
    :cond_8a
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-eqz v0, :cond_c0

    .line 2453
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2454
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v2

    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2455
    if-eqz v4, :cond_c0

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_c0

    .line 2456
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    if-eqz v0, :cond_b4

    .line 2457
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2458
    .local v0, "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 2459
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 2460
    .end local v0    # "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    goto :goto_c0

    .line 2461
    :cond_b4
    const/4 v0, 0x5

    .line 2462
    .local v0, "wrapStrength":I
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    invoke-virtual {v14, v2, v12, v5, v0}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2466
    .end local v0    # "wrapStrength":I
    :cond_c0
    :goto_c0
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-eqz v0, :cond_106

    .line 2467
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v14, v11, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2468
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v2

    invoke-virtual {v14, v10, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2469
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 2470
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v0, v2

    invoke-virtual {v14, v9, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2472
    :cond_e1
    if-eqz v3, :cond_106

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_106

    .line 2473
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    if-eqz v0, :cond_fa

    .line 2474
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2475
    .local v0, "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 2476
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 2477
    .end local v0    # "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    goto :goto_106

    .line 2478
    :cond_fa
    const/4 v0, 0x5

    .line 2479
    .local v0, "wrapStrength":I
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    invoke-virtual {v14, v2, v10, v5, v0}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2483
    .end local v0    # "wrapStrength":I
    :cond_106
    :goto_106
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-eqz v0, :cond_113

    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-eqz v0, :cond_113

    .line 2484
    iput-boolean v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2485
    iput-boolean v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2491
    return-void

    .line 2495
    :cond_113
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    const-wide/16 v6, 0x1

    if-eqz v0, :cond_120

    .line 2496
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    .line 2504
    :cond_120
    if-eqz p2, :cond_1c1

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v0, :cond_1c1

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v0, :cond_1c1

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_1c1

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_1c1

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_1c1

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_1c1

    .line 2508
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_155

    .line 2509
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    .line 2511
    :cond_155
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2512
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2513
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v11, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2514
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v10, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2515
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v9, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2516
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_1bc

    .line 2517
    if-eqz v4, :cond_1a1

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1a1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_1a1

    .line 2518
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 2519
    .local v0, "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    const/16 v1, 0x8

    invoke-virtual {v14, v0, v12, v5, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2521
    .end local v0    # "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    :cond_1a1
    if-eqz v3, :cond_1bc

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_1bc

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    if-nez v0, :cond_1bc

    .line 2522
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 2523
    .restart local v0    # "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    const/16 v1, 0x8

    invoke-virtual {v14, v0, v10, v5, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2526
    .end local v0    # "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    :cond_1bc
    iput-boolean v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2527
    iput-boolean v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2528
    return-void

    .line 2530
    :cond_1c1
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_1cc

    .line 2531
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->linearSolved:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->linearSolved:J

    .line 2534
    :cond_1cc
    const/4 v0, 0x0

    .line 2535
    .local v0, "inHorizontalChain":Z
    const/4 v1, 0x0

    .line 2537
    .local v1, "inVerticalChain":Z
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_243

    .line 2539
    invoke-direct {v15, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 2540
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v15, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 2541
    const/4 v0, 0x1

    goto :goto_1e5

    .line 2543
    :cond_1e1
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    .line 2547
    :goto_1e5
    invoke-direct {v15, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 2548
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v15, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 2549
    const/4 v1, 0x1

    goto :goto_1f8

    .line 2551
    :cond_1f4
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v1

    .line 2554
    :goto_1f8
    if-nez v0, :cond_219

    if-eqz v4, :cond_219

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v6, 0x8

    if-eq v2, v6, :cond_219

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_219

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_219

    .line 2559
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    .line 2560
    .local v2, "parentRight":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v14, v2, v12, v5, v8}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2563
    .end local v2    # "parentRight":Landroidx/constraintlayout/core/SolverVariable;
    :cond_219
    if-nez v1, :cond_23e

    if-eqz v3, :cond_23e

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v6, 0x8

    if-eq v2, v6, :cond_23e

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_23e

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_23e

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_23e

    .line 2568
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    .line 2569
    .local v2, "parentBottom":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v14, v2, v10, v5, v8}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2573
    .end local v2    # "parentBottom":Landroidx/constraintlayout/core/SolverVariable;
    :cond_23e
    move/from16 v56, v0

    move/from16 v57, v1

    goto :goto_247

    .line 2537
    :cond_243
    move/from16 v56, v0

    move/from16 v57, v1

    .line 2573
    .end local v0    # "inHorizontalChain":Z
    .end local v1    # "inVerticalChain":Z
    .local v56, "inHorizontalChain":Z
    .local v57, "inVerticalChain":Z
    :goto_247
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 2574
    .local v0, "width":I
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_24f

    .line 2575
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 2577
    :cond_24f
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 2578
    .local v1, "height":I
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v1, v2, :cond_257

    .line 2579
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 2583
    :cond_257
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v5

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v6, :cond_261

    const/4 v2, 0x1

    goto :goto_262

    :cond_261
    const/4 v2, 0x0

    .line 2585
    .local v2, "horizontalDimensionFixed":Z
    :goto_262
    iget-object v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v8

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_26c

    const/4 v6, 0x1

    goto :goto_26d

    :cond_26c
    const/4 v6, 0x0

    .line 2590
    .local v6, "verticalDimensionFixed":Z
    :goto_26d
    const/4 v7, 0x0

    .line 2591
    .local v7, "useRatio":Z
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2592
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2594
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 2595
    .local v8, "matchConstraintDefaultWidth":I
    iget v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 2597
    .local v5, "matchConstraintDefaultHeight":I
    move/from16 v17, v0

    .end local v0    # "width":I
    .local v17, "width":I
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/16 v20, 0x0

    move/from16 v21, v1

    .end local v1    # "height":I
    .local v21, "height":I
    cmpl-float v0, v0, v20

    if-lez v0, :cond_343

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_343

    .line 2598
    const/4 v7, 0x1

    .line 2599
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_299

    if-nez v8, :cond_299

    .line 2601
    const/4 v8, 0x3

    .line 2603
    :cond_299
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2a5

    if-nez v5, :cond_2a5

    .line 2605
    const/4 v5, 0x3

    .line 2608
    :cond_2a5
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v22, v7

    .end local v7    # "useRatio":Z
    .local v22, "useRatio":Z
    const/4 v7, 0x3

    if-ne v0, v1, :cond_2c3

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2c3

    if-ne v8, v7, :cond_2c3

    if-ne v5, v7, :cond_2c3

    .line 2612
    invoke-virtual {v15, v4, v3, v2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    goto/16 :goto_338

    .line 2613
    :cond_2c3
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2f6

    if-ne v8, v7, :cond_2f6

    .line 2615
    const/4 v0, 0x0

    iput v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2616
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 2617
    .end local v17    # "width":I
    .restart local v0    # "width":I
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v1, v1, v7

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v7, :cond_2ed

    .line 2618
    const/4 v8, 0x4

    .line 2619
    const/4 v7, 0x0

    move/from16 v58, v5

    move/from16 v59, v8

    move/from16 v28, v21

    move v8, v7

    .end local v22    # "useRatio":Z
    .restart local v7    # "useRatio":Z
    goto/16 :goto_34c

    .line 2617
    .end local v7    # "useRatio":Z
    .restart local v22    # "useRatio":Z
    :cond_2ed
    move/from16 v58, v5

    move/from16 v59, v8

    move/from16 v28, v21

    move/from16 v8, v22

    goto :goto_34c

    .line 2621
    .end local v0    # "width":I
    .restart local v17    # "width":I
    :cond_2f6
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_338

    if-ne v5, v7, :cond_338

    .line 2623
    const/4 v0, 0x1

    iput v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2624
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_310

    .line 2626
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v0, v1

    iput v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2628
    :cond_310
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v1, v0

    .line 2629
    .end local v21    # "height":I
    .restart local v1    # "height":I
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v7, :cond_32d

    .line 2630
    const/4 v5, 0x4

    .line 2631
    const/4 v7, 0x0

    move/from16 v28, v1

    move/from16 v58, v5

    move/from16 v59, v8

    move/from16 v0, v17

    move v8, v7

    .end local v22    # "useRatio":Z
    .restart local v7    # "useRatio":Z
    goto :goto_34c

    .line 2629
    .end local v7    # "useRatio":Z
    .restart local v22    # "useRatio":Z
    :cond_32d
    move/from16 v28, v1

    move/from16 v58, v5

    move/from16 v59, v8

    move/from16 v0, v17

    move/from16 v8, v22

    goto :goto_34c

    .line 2636
    .end local v1    # "height":I
    .restart local v21    # "height":I
    :cond_338
    :goto_338
    move/from16 v58, v5

    move/from16 v59, v8

    move/from16 v0, v17

    move/from16 v28, v21

    move/from16 v8, v22

    goto :goto_34c

    .end local v22    # "useRatio":Z
    .restart local v7    # "useRatio":Z
    :cond_343
    move/from16 v58, v5

    move/from16 v59, v8

    move/from16 v0, v17

    move/from16 v28, v21

    move v8, v7

    .end local v5    # "matchConstraintDefaultHeight":I
    .end local v7    # "useRatio":Z
    .end local v17    # "width":I
    .end local v21    # "height":I
    .restart local v0    # "width":I
    .local v8, "useRatio":Z
    .local v28, "height":I
    .local v58, "matchConstraintDefaultHeight":I
    .local v59, "matchConstraintDefaultWidth":I
    :goto_34c
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v5, 0x0

    aput v59, v1, v5

    .line 2637
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v5, 0x1

    aput v58, v1, v5

    .line 2638
    iput-boolean v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 2640
    if-eqz v8, :cond_366

    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eqz v1, :cond_363

    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_366

    :cond_363
    const/16 v17, 0x1

    goto :goto_368

    :cond_366
    const/16 v17, 0x0

    .line 2643
    .local v17, "useHorizontalRatio":Z
    :goto_368
    if-eqz v8, :cond_377

    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_374

    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_377

    :cond_374
    const/16 v45, 0x1

    goto :goto_379

    :cond_377
    const/16 v45, 0x0

    .line 2647
    .local v45, "useVerticalRatio":Z
    :goto_379
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v5, :cond_388

    instance-of v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_388

    const/4 v1, 0x1

    goto :goto_389

    :cond_388
    const/4 v1, 0x0

    :goto_389
    move/from16 v29, v1

    .line 2649
    .local v29, "wrapContent":Z
    if-eqz v29, :cond_391

    .line 2650
    const/4 v0, 0x0

    move/from16 v60, v0

    goto :goto_393

    .line 2649
    :cond_391
    move/from16 v60, v0

    .line 2653
    .end local v0    # "width":I
    .local v60, "width":I
    :goto_393
    const/4 v0, 0x1

    .line 2654
    .local v0, "applyPosition":Z
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3a0

    .line 2655
    const/4 v0, 0x0

    move/from16 v30, v0

    goto :goto_3a2

    .line 2654
    :cond_3a0
    move/from16 v30, v0

    .line 2658
    .end local v0    # "applyPosition":Z
    .local v30, "applyPosition":Z
    :goto_3a2
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    const/4 v1, 0x0

    aget-boolean v61, v0, v1

    .line 2659
    .local v61, "isInHorizontalBarrier":Z
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    const/4 v1, 0x1

    aget-boolean v62, v0, v1

    .line 2661
    .local v62, "isInVerticalBarrier":Z
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    const/4 v5, 0x2

    const/16 v31, 0x0

    if-eq v0, v5, :cond_50f

    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-nez v0, :cond_50f

    .line 2662
    if-eqz p2, :cond_463

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v0, :cond_463

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_463

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v0, :cond_3d1

    const/16 v7, 0x8

    goto/16 :goto_465

    .line 2669
    :cond_3d1
    if-eqz p2, :cond_44b

    .line 2670
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2671
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2672
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_433

    .line 2673
    if-eqz v4, :cond_41b

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_41b

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_41b

    .line 2677
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 2678
    .local v0, "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    const/16 v7, 0x8

    invoke-virtual {v14, v0, v12, v1, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move/from16 v64, v2

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v63, v6

    move/from16 v67, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v70, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v13

    goto/16 :goto_523

    .line 2673
    .end local v0    # "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    :cond_41b
    const/16 v7, 0x8

    move/from16 v64, v2

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v63, v6

    move/from16 v67, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v70, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v13

    goto/16 :goto_523

    .line 2672
    :cond_433
    const/16 v7, 0x8

    move/from16 v64, v2

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v63, v6

    move/from16 v67, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v70, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v13

    goto/16 :goto_523

    .line 2669
    :cond_44b
    const/16 v7, 0x8

    move/from16 v64, v2

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v63, v6

    move/from16 v67, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v70, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v13

    goto/16 :goto_523

    .line 2662
    :cond_463
    const/16 v7, 0x8

    .line 2663
    :goto_465
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_472

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    goto :goto_474

    :cond_472
    move-object/from16 v0, v31

    :goto_474
    const/16 v1, 0x8

    move-object v7, v0

    .line 2664
    .local v7, "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_484

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    goto :goto_486

    :cond_484
    move-object/from16 v0, v31

    :goto_486
    move/from16 v63, v6

    .end local v6    # "verticalDimensionFixed":Z
    .local v63, "verticalDimensionFixed":Z
    move-object v6, v0

    .line 2665
    .local v6, "parentMin":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/16 v16, 0x0

    aget-boolean v19, v0, v16

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v20, v0, v16

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v21, v2

    .end local v2    # "horizontalDimensionFixed":Z
    .local v21, "horizontalDimensionFixed":Z
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v22, v2

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    move/from16 v23, v2

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v32, v1, v16

    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iget-object v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v18, 0x1

    aget-object v5, v5, v18

    move-object/from16 v34, v0

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v0, :cond_4b6

    const/16 v35, 0x1

    goto :goto_4b8

    :cond_4b6
    const/16 v35, 0x0

    :goto_4b8
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v24, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v25, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v26, v0

    const/4 v0, 0x1

    move/from16 v64, v21

    move-object/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v2

    .end local v21    # "horizontalDimensionFixed":Z
    .local v64, "horizontalDimensionFixed":Z
    move v2, v0

    move-object/from16 v0, p0

    move/from16 v27, v1

    const/16 v5, 0x8

    move-object/from16 v1, p1

    move/from16 v65, v3

    .end local v3    # "verticalParentWrapContent":Z
    .local v65, "verticalParentWrapContent":Z
    move v3, v4

    move/from16 v66, v4

    .end local v4    # "horizontalParentWrapContent":Z
    .local v66, "horizontalParentWrapContent":Z
    move/from16 v4, v65

    move/from16 v5, v19

    move/from16 v67, v8

    .end local v8    # "useRatio":Z
    .local v67, "useRatio":Z
    move-object/from16 v8, v20

    move-object/from16 v68, v9

    .end local v9    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .local v68, "baseline":Landroidx/constraintlayout/core/SolverVariable;
    move/from16 v9, v29

    move-object/from16 v69, v10

    .end local v10    # "bottom":Landroidx/constraintlayout/core/SolverVariable;
    .local v69, "bottom":Landroidx/constraintlayout/core/SolverVariable;
    move-object/from16 v10, v34

    move-object/from16 v70, v11

    .end local v11    # "top":Landroidx/constraintlayout/core/SolverVariable;
    .local v70, "top":Landroidx/constraintlayout/core/SolverVariable;
    move-object/from16 v11, v21

    move-object/from16 v71, v12

    .end local v12    # "right":Landroidx/constraintlayout/core/SolverVariable;
    .local v71, "right":Landroidx/constraintlayout/core/SolverVariable;
    move/from16 v12, v22

    move-object/from16 v72, v13

    .end local v13    # "left":Landroidx/constraintlayout/core/SolverVariable;
    .local v72, "left":Landroidx/constraintlayout/core/SolverVariable;
    move/from16 v13, v60

    move/from16 v14, v23

    move/from16 v15, v32

    move/from16 v16, v27

    move/from16 v18, v35

    move/from16 v19, v56

    move/from16 v20, v57

    move/from16 v21, v61

    move/from16 v22, v59

    move/from16 v23, v58

    move/from16 v27, v30

    invoke-direct/range {v0 .. v27}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    .line 2669
    .end local v6    # "parentMin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v7    # "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    goto :goto_523

    .line 2661
    .end local v63    # "verticalDimensionFixed":Z
    .end local v64    # "horizontalDimensionFixed":Z
    .end local v65    # "verticalParentWrapContent":Z
    .end local v66    # "horizontalParentWrapContent":Z
    .end local v67    # "useRatio":Z
    .end local v68    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .end local v69    # "bottom":Landroidx/constraintlayout/core/SolverVariable;
    .end local v70    # "top":Landroidx/constraintlayout/core/SolverVariable;
    .end local v71    # "right":Landroidx/constraintlayout/core/SolverVariable;
    .end local v72    # "left":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v2    # "horizontalDimensionFixed":Z
    .restart local v3    # "verticalParentWrapContent":Z
    .restart local v4    # "horizontalParentWrapContent":Z
    .local v6, "verticalDimensionFixed":Z
    .restart local v8    # "useRatio":Z
    .restart local v9    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v10    # "bottom":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v11    # "top":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v12    # "right":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v13    # "left":Landroidx/constraintlayout/core/SolverVariable;
    :cond_50f
    move/from16 v64, v2

    move/from16 v65, v3

    move/from16 v66, v4

    move/from16 v63, v6

    move/from16 v67, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v70, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v13

    .line 2684
    .end local v2    # "horizontalDimensionFixed":Z
    .end local v3    # "verticalParentWrapContent":Z
    .end local v4    # "horizontalParentWrapContent":Z
    .end local v6    # "verticalDimensionFixed":Z
    .end local v8    # "useRatio":Z
    .end local v9    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .end local v10    # "bottom":Landroidx/constraintlayout/core/SolverVariable;
    .end local v11    # "top":Landroidx/constraintlayout/core/SolverVariable;
    .end local v12    # "right":Landroidx/constraintlayout/core/SolverVariable;
    .end local v13    # "left":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v63    # "verticalDimensionFixed":Z
    .restart local v64    # "horizontalDimensionFixed":Z
    .restart local v65    # "verticalParentWrapContent":Z
    .restart local v66    # "horizontalParentWrapContent":Z
    .restart local v67    # "useRatio":Z
    .restart local v68    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v69    # "bottom":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v70    # "top":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v71    # "right":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v72    # "left":Landroidx/constraintlayout/core/SolverVariable;
    :goto_523
    const/4 v0, 0x1

    .line 2685
    .local v0, "applyVerticalConstraints":Z
    if-eqz p2, :cond_588

    move-object/from16 v7, p0

    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v1, :cond_58a

    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_58a

    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_58a

    .line 2686
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v8, p1

    move-object/from16 v9, v70

    .end local v70    # "top":Landroidx/constraintlayout/core/SolverVariable;
    .local v9, "top":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v8, v9, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2687
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v10, v69

    .end local v69    # "bottom":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v10    # "bottom":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v8, v10, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2688
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v11, v68

    .end local v68    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .local v11, "baseline":Landroidx/constraintlayout/core/SolverVariable;
    invoke-virtual {v8, v11, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2689
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_582

    .line 2690
    if-nez v57, :cond_57d

    if-eqz v65, :cond_57d

    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_57e

    .line 2694
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    .line 2695
    .local v1, "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    const/16 v3, 0x8

    const/4 v12, 0x0

    invoke-virtual {v8, v1, v10, v12, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_586

    .line 2690
    .end local v1    # "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    :cond_57d
    const/4 v2, 0x1

    :cond_57e
    const/16 v3, 0x8

    const/4 v12, 0x0

    goto :goto_586

    .line 2689
    :cond_582
    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v12, 0x0

    .line 2698
    :goto_586
    const/4 v0, 0x0

    goto :goto_596

    .line 2685
    .end local v9    # "top":Landroidx/constraintlayout/core/SolverVariable;
    .end local v10    # "bottom":Landroidx/constraintlayout/core/SolverVariable;
    .end local v11    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v68    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v69    # "bottom":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v70    # "top":Landroidx/constraintlayout/core/SolverVariable;
    :cond_588
    move-object/from16 v7, p0

    :cond_58a
    move-object/from16 v8, p1

    move-object/from16 v11, v68

    move-object/from16 v10, v69

    move-object/from16 v9, v70

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v12, 0x0

    .line 2700
    .end local v68    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .end local v69    # "bottom":Landroidx/constraintlayout/core/SolverVariable;
    .end local v70    # "top":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v9    # "top":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v10    # "bottom":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v11    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    :goto_596
    iget v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_59e

    .line 2707
    const/4 v0, 0x0

    move v13, v0

    goto :goto_59f

    .line 2700
    :cond_59e
    move v13, v0

    .line 2709
    .end local v0    # "applyVerticalConstraints":Z
    .local v13, "applyVerticalConstraints":Z
    :goto_59f
    if-eqz v13, :cond_68e

    iget-boolean v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-nez v0, :cond_68e

    .line 2711
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v2

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_5b3

    instance-of v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_5b3

    const/4 v0, 0x1

    goto :goto_5b4

    :cond_5b3
    const/4 v0, 0x0

    .line 2713
    .end local v29    # "wrapContent":Z
    .local v0, "wrapContent":Z
    :goto_5b4
    if-eqz v0, :cond_5bb

    .line 2714
    const/16 v28, 0x0

    move/from16 v1, v28

    goto :goto_5bd

    .line 2713
    :cond_5bb
    move/from16 v1, v28

    .line 2717
    .end local v28    # "height":I
    .local v1, "height":I
    :goto_5bd
    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v4, :cond_5ca

    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    goto :goto_5cc

    :cond_5ca
    move-object/from16 v4, v31

    .line 2718
    .local v4, "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    :goto_5cc
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v5, :cond_5db

    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5

    move-object/from16 v34, v5

    goto :goto_5dd

    :cond_5db
    move-object/from16 v34, v31

    .line 2720
    .local v34, "parentMin":Landroidx/constraintlayout/core/SolverVariable;
    :goto_5dd
    iget v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v5, :cond_5e5

    iget v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-ne v5, v3, :cond_629

    .line 2722
    :cond_5e5
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_614

    .line 2723
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v5

    invoke-virtual {v8, v11, v9, v5, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 2724
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5

    .line 2725
    .local v5, "baselineTarget":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    .line 2726
    .local v6, "baselineMargin":I
    invoke-virtual {v8, v11, v5, v6, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 2727
    const/16 v30, 0x0

    .line 2728
    if-eqz v65, :cond_611

    .line 2732
    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    .line 2733
    .local v3, "end":Landroidx/constraintlayout/core/SolverVariable;
    const/4 v14, 0x5

    .line 2734
    .local v14, "wrapStrength":I
    invoke-virtual {v8, v4, v3, v12, v14}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2736
    .end local v3    # "end":Landroidx/constraintlayout/core/SolverVariable;
    .end local v5    # "baselineTarget":Landroidx/constraintlayout/core/SolverVariable;
    .end local v6    # "baselineMargin":I
    .end local v14    # "wrapStrength":I
    :cond_611
    move/from16 v3, v30

    goto :goto_62b

    :cond_614
    iget v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-ne v5, v3, :cond_622

    .line 2738
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    invoke-virtual {v8, v11, v9, v5, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_629

    .line 2740
    :cond_622
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v5

    invoke-virtual {v8, v11, v9, v5, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 2744
    :cond_629
    :goto_629
    move/from16 v3, v30

    .end local v30    # "applyPosition":Z
    .local v3, "applyPosition":Z
    :goto_62b
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v33, v5, v2

    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v36, v5, v2

    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v14, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iget v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iget-object v12, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v43, v12, v2

    iget v12, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x0

    aget-object v2, v2, v16

    move-object/from16 v68, v11

    .end local v11    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v68    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v11, :cond_650

    const/16 v46, 0x1

    goto :goto_652

    :cond_650
    const/16 v46, 0x0

    :goto_652
    iget v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v52, v2

    iget v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v53, v2

    iget v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v54, v2

    const/16 v30, 0x0

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move/from16 v31, v65

    move/from16 v32, v66

    move-object/from16 v35, v4

    move/from16 v37, v0

    move-object/from16 v38, v5

    move-object/from16 v39, v6

    move/from16 v40, v14

    move/from16 v41, v1

    move/from16 v42, v15

    move/from16 v44, v12

    move/from16 v47, v57

    move/from16 v48, v56

    move/from16 v49, v62

    move/from16 v50, v58

    move/from16 v51, v59

    move/from16 v55, v3

    invoke-direct/range {v28 .. v55}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    move/from16 v29, v0

    move/from16 v28, v1

    move/from16 v30, v3

    goto :goto_690

    .line 2709
    .end local v0    # "wrapContent":Z
    .end local v1    # "height":I
    .end local v3    # "applyPosition":Z
    .end local v4    # "parentMax":Landroidx/constraintlayout/core/SolverVariable;
    .end local v34    # "parentMin":Landroidx/constraintlayout/core/SolverVariable;
    .end local v68    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v11    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v28    # "height":I
    .restart local v29    # "wrapContent":Z
    .restart local v30    # "applyPosition":Z
    :cond_68e
    move-object/from16 v68, v11

    .line 2750
    .end local v11    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    .restart local v68    # "baseline":Landroidx/constraintlayout/core/SolverVariable;
    :goto_690
    if-eqz v67, :cond_6b6

    .line 2751
    const/16 v11, 0x8

    .line 2752
    .local v11, "strength":I
    iget v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6a8

    .line 2753
    iget v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v9

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/LinearSystem;->addRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V

    goto :goto_6b6

    .line 2755
    :cond_6a8
    iget v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    move-object v3, v10

    move-object v4, v9

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/LinearSystem;->addRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V

    .line 2759
    .end local v11    # "strength":I
    :cond_6b6
    :goto_6b6
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6dc

    .line 2760
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    iget v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    invoke-virtual {v8, v7, v0, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addCenterPoint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V

    .line 2768
    :cond_6dc
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2769
    iput-boolean v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2770
    return-void

    :pswitch_data_6e2
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_5b
        :pswitch_56
    .end packed-switch
.end method

.method public allowedInBarrier()Z
    .registers 3

    .line 1846
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .registers 5
    .param p1, "constraintFrom"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1895
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1896
    return-void
.end method

.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    .registers 14
    .param p1, "constraintFrom"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I

    .line 1909
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_e3

    .line 1912
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_a0

    .line 1913
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1914
    .local v0, "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1915
    .local v2, "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1916
    .local v3, "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1917
    .local v4, "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v5, 0x0

    .line 1918
    .local v5, "centerX":Z
    const/4 v6, 0x0

    .line 1919
    .local v6, "centerY":Z
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-nez v7, :cond_43

    :cond_2b
    if-eqz v2, :cond_34

    .line 1920
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_34

    goto :goto_43

    .line 1923
    :cond_34
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7, p2, v8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1925
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7, p2, v8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1927
    const/4 v5, 0x1

    .line 1929
    :cond_43
    :goto_43
    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-nez v7, :cond_63

    :cond_4b
    if-eqz v4, :cond_54

    .line 1930
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_54

    goto :goto_63

    .line 1933
    :cond_54
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7, p2, v8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1935
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    :try_start_5f
    invoke-virtual {p0, v7, p2, v8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_9e

    .line 1937
    const/4 v6, 0x1

    .line 1939
    :cond_63
    :goto_63
    if-eqz v5, :cond_77

    if-eqz v6, :cond_77

    .line 1940
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1941
    .local v7, "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1942
    .end local v7    # "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto :goto_9c

    :cond_77
    if-eqz v5, :cond_89

    .line 1943
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1944
    .restart local v7    # "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .end local v7    # "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto :goto_9b

    .line 1945
    :cond_89
    if-eqz v6, :cond_9b

    .line 1946
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1947
    .restart local v7    # "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    goto :goto_9c

    .line 1945
    .end local v7    # "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_9b
    :goto_9b
    nop

    .line 1949
    .end local v0    # "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v2    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v5    # "centerX":Z
    .end local v6    # "centerY":Z
    :goto_9c
    goto/16 :goto_246

    .line 1935
    .end local p0    # "this":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local p1    # "constraintFrom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .end local p2    # "target":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local p3    # "constraintTo":Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .end local p4    # "margin":I
    :catchall_9e
    move-exception p1

    throw p1

    .line 1949
    .restart local p1    # "constraintFrom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .restart local p2    # "target":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local p3    # "constraintTo":Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .restart local p4    # "margin":I
    :cond_a0
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_ca

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_a9

    goto :goto_ca

    .line 1957
    :cond_a9
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_b1

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_e1

    .line 1959
    :cond_b1
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1961
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1963
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1964
    .local v0, "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1965
    .end local v0    # "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto/16 :goto_246

    .line 1951
    :cond_ca
    :goto_ca
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1953
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1955
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1956
    .restart local v0    # "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1957
    .end local v0    # "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_e1
    goto/16 :goto_246

    .line 1966
    :cond_e3
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_110

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_ef

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_110

    .line 1969
    :cond_ef
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1970
    .local v0, "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1971
    .local v2, "targetAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1972
    .local v3, "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1973
    invoke-virtual {v3, v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1974
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1975
    .local v4, "centerX":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1976
    .end local v0    # "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v2    # "targetAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "centerX":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto/16 :goto_246

    :cond_110
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_13d

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_11c

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_13d

    .line 1979
    :cond_11c
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1980
    .local v0, "targetAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1981
    .local v2, "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1982
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1983
    .local v3, "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v3, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1984
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1985
    .local v4, "centerY":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1986
    .end local v0    # "targetAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v2    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "centerY":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto/16 :goto_246

    :cond_13d
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_172

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_172

    .line 1989
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1990
    .local v0, "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1991
    .local v2, "leftTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1992
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1993
    .local v3, "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1994
    .local v4, "rightTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1995
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1996
    .local v5, "centerX":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 1997
    .end local v0    # "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v2    # "leftTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "rightTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v5    # "centerX":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto/16 :goto_246

    :cond_172
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_1a7

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_1a7

    .line 2000
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 2001
    .local v0, "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 2002
    .local v2, "topTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 2003
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    .line 2004
    .local v3, "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    .line 2005
    .local v4, "bottomTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v3, v4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 2006
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    .line 2007
    .local v5, "centerY":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 2008
    .end local v0    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v2    # "topTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "bottomTarget":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v5    # "centerY":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    goto/16 :goto_246

    .line 2009
    :cond_1a7
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 2010
    .local v0, "fromAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    .line 2011
    .local v1, "toAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Z

    move-result v2

    if-eqz v2, :cond_246

    .line 2014
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_1d1

    .line 2015
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 2016
    .local v2, "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    .line 2017
    .restart local v3    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-eqz v2, :cond_1ca

    .line 2018
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2020
    :cond_1ca
    if-eqz v3, :cond_1cf

    .line 2021
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2023
    .end local v2    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_1cf
    goto/16 :goto_243

    :cond_1d1
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, v2, :cond_20e

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_1da

    goto :goto_20e

    .line 2049
    :cond_1da
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq p1, v2, :cond_1e4

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_1e3

    goto :goto_1e4

    :cond_1e3
    :goto_1e3
    goto :goto_243

    .line 2051
    :cond_1e4
    :goto_1e4
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 2052
    .local v2, "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    if-eq v3, v1, :cond_1f3

    .line 2053
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2055
    :cond_1f3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    .line 2056
    .local v3, "opposite":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    .line 2057
    .local v4, "centerX":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_243

    .line 2058
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2059
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    goto :goto_243

    .line 2025
    .end local v2    # "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "opposite":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "centerX":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_20e
    :goto_20e
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 2026
    .local v2, "baseline":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    if-eqz v2, :cond_219

    .line 2027
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2029
    :cond_219
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    .line 2030
    .local v3, "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    if-eq v4, v1, :cond_228

    .line 2031
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2033
    :cond_228
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    .line 2034
    .local v4, "opposite":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    .line 2035
    .restart local v5    # "centerY":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1e3

    .line 2036
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2037
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    goto :goto_1e3

    .line 2073
    .end local v2    # "baseline":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "opposite":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v5    # "centerY":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_243
    :goto_243
    invoke-virtual {v0, v1, p4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    .line 2076
    .end local v0    # "fromAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v1    # "toAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_246
    :goto_246
    return-void
.end method

.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V
    .registers 7
    .param p1, "from"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .param p2, "to"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .param p3, "margin"    # I

    .line 1877
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-ne v0, p0, :cond_15

    .line 1878
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1880
    :cond_15
    return-void
.end method

.method public connectCircularConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V
    .registers 10
    .param p1, "target"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "angle"    # F
    .param p3, "radius"    # I

    .line 885
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 887
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 888
    return-void
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 8
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

    .line 3386
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 3387
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 3389
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 3390
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 3392
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 3393
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 3395
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 3396
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 3397
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 3398
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 3399
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 3400
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 3401
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 3403
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 3404
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 3406
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 3407
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 3408
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 3409
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 3414
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3415
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3416
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3417
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3418
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3419
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3420
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3421
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3422
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 3423
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v1, 0x0

    if-nez v0, :cond_97

    move-object v0, v1

    goto :goto_9f

    :cond_97
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :goto_9f
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3425
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 3426
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 3427
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 3428
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 3430
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 3431
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 3432
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    .line 3433
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    .line 3435
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 3436
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 3438
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 3439
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 3440
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 3442
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 3443
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 3445
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 3446
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 3447
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 3448
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    .line 3449
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 3450
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 3452
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToTop:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToTop:I

    .line 3453
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToLeft:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToLeft:I

    .line 3454
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToRight:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToRight:I

    .line 3455
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToBottom:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToBottom:I

    .line 3456
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeftHasCentered:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 3457
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRightHasCentered:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 3459
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTopHasCentered:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 3460
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottomHasCentered:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottomHasCentered:Z

    .line 3462
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 3463
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 3465
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 3466
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 3467
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 3468
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 3469
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v4, v4, v2

    aput v4, v0, v2

    .line 3470
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v4, v4, v3

    aput v4, v0, v3

    .line 3472
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v4, v4, v2

    aput-object v4, v0, v2

    .line 3473
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v4, v4, v3

    aput-object v4, v0, v3

    .line 3475
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v4, v4, v2

    aput-object v4, v0, v2

    .line 3476
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v2, v2, v3

    aput-object v2, v0, v3

    .line 3478
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v0, :cond_163

    move-object v0, v1

    goto :goto_16b

    :cond_163
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :goto_16b
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3479
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v0, :cond_172

    goto :goto_17b

    :cond_172
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :goto_17b
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3480
    return-void
.end method

.method public createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V
    .registers 7
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;

    .line 997
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 998
    .local v0, "left":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    .line 999
    .local v1, "top":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    .line 1000
    .local v2, "right":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    .line 1001
    .local v3, "bottom":Landroidx/constraintlayout/core/SolverVariable;
    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v4, :cond_21

    .line 1002
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1004
    :cond_21
    return-void
.end method

.method public ensureMeasureRequested()V
    .registers 2

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 214
    return-void
.end method

.method public ensureWidgetRuns()V
    .registers 2

    .line 773
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-nez v0, :cond_b

    .line 774
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 776
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-nez v0, :cond_16

    .line 777
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 779
    :cond_16
    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 4
    .param p1, "anchorType"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 2172
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 2200
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2198
    :pswitch_15
    const/4 v0, 0x0

    return-object v0

    .line 2192
    :pswitch_17
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    .line 2189
    :pswitch_1a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    .line 2195
    :pswitch_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    .line 2186
    :pswitch_20
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    .line 2183
    :pswitch_23
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    .line 2180
    :pswitch_26
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    .line 2177
    :pswitch_29
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    .line 2174
    :pswitch_2c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_15
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaselineDistance()I
    .registers 2

    .line 1282
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    return v0
.end method

.method public getBiasPercent(I)F
    .registers 3
    .param p1, "orientation"    # I

    .line 1258
    if-nez p1, :cond_5

    .line 1259
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0

    .line 1260
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1261
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0

    .line 1263
    :cond_b
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getBottom()I
    .registers 3

    .line 1199
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .registers 2

    .line 1292
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-object v0
.end method

.method public getContainerItemSkip()I
    .registers 2

    .line 1781
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .registers 2

    .line 950
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .registers 3
    .param p1, "orientation"    # I

    .line 2228
    if-nez p1, :cond_7

    .line 2229
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    return-object v0

    .line 2230
    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 2231
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    return-object v0

    .line 2233
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDimensionRatio()F
    .registers 2

    .line 1535
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    return v0
.end method

.method public getDimensionRatioSide()I
    .registers 2

    .line 1544
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    return v0
.end method

.method public getHasBaseline()Z
    .registers 2

    .line 357
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    return v0
.end method

.method public getHeight()I
    .registers 3

    .line 1106
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 1107
    const/4 v0, 0x0

    return v0

    .line 1109
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    return v0
.end method

.method public getHorizontalBiasPercent()F
    .registers 2

    .line 1237
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0
.end method

.method public getHorizontalChainControlWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 8

    .line 2312
    const/4 v0, 0x0

    .line 2313
    .local v0, "found":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2314
    move-object v1, p0

    .line 2316
    .local v1, "tmp":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_8
    if-nez v0, :cond_44

    if-eqz v1, :cond_44

    .line 2317
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 2318
    .local v2, "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    if-nez v2, :cond_17

    move-object v4, v3

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    .line 2319
    .local v4, "targetOwner":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_1b
    if-nez v4, :cond_1f

    move-object v5, v3

    goto :goto_23

    :cond_1f
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v5

    .line 2320
    .local v5, "target":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_23
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    if-ne v5, v6, :cond_2b

    .line 2321
    move-object v0, v1

    .line 2322
    goto :goto_44

    .line 2324
    :cond_2b
    if-nez v5, :cond_2e

    goto :goto_38

    :cond_2e
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    .line 2325
    .local v3, "targetAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_38
    if-eqz v3, :cond_42

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    if-eq v6, v1, :cond_42

    .line 2326
    move-object v0, v1

    goto :goto_43

    .line 2328
    :cond_42
    move-object v1, v5

    .line 2330
    .end local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "targetAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_43
    goto :goto_8

    .line 2332
    .end local v1    # "tmp":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_44
    :goto_44
    return-object v0
.end method

.method public getHorizontalChainStyle()I
    .registers 2

    .line 1819
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .registers 3

    .line 2209
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHorizontalMargin()I
    .registers 3

    .line 1206
    const/4 v0, 0x0

    .line 1207
    .local v0, "margin":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_a

    .line 1208
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 1210
    :cond_a
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_13

    .line 1211
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 1213
    :cond_13
    return v0
.end method

.method public getLastHorizontalMeasureSpec()I
    .registers 2

    .line 400
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    return v0
.end method

.method public getLastVerticalMeasureSpec()I
    .registers 2

    .line 401
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    .line 1172
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v0

    return v0
.end method

.method public getLength(I)I
    .registers 3
    .param p1, "orientation"    # I

    .line 1119
    if-nez p1, :cond_7

    .line 1120
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    return v0

    .line 1121
    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 1122
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    return v0

    .line 1124
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxHeight()I
    .registers 3

    .line 321
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .registers 3

    .line 325
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .line 1163
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 1154
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    return v0
.end method

.method public getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 4
    .param p1, "orientation"    # I

    .line 2294
    if-nez p1, :cond_19

    .line 2295
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_33

    .line 2296
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object v0

    .line 2298
    :cond_19
    const/4 v0, 0x1

    if-ne p1, v0, :cond_33

    .line 2299
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_33

    .line 2300
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object v0

    .line 2303
    :cond_33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptimizerWrapHeight()I
    .registers 5

    .line 1083
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1084
    .local v0, "h":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_2a

    .line 1085
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v1, v2, :cond_16

    .line 1086
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_20

    .line 1087
    :cond_16
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v1, :cond_1f

    .line 1088
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1089
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    goto :goto_20

    .line 1091
    :cond_1f
    const/4 v0, 0x0

    .line 1093
    :goto_20
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v1, :cond_2a

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-ge v1, v0, :cond_2a

    .line 1094
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1097
    :cond_2a
    return v0
.end method

.method public getOptimizerWrapWidth()I
    .registers 4

    .line 1065
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1066
    .local v0, "w":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_2b

    .line 1067
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 1068
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_21

    .line 1069
    :cond_17
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v1, :cond_20

    .line 1070
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1071
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    goto :goto_21

    .line 1073
    :cond_20
    const/4 v0, 0x0

    .line 1075
    :goto_21
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v1, :cond_2b

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-ge v1, v0, :cond_2b

    .line 1076
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1079
    :cond_2b
    return v0
.end method

.method public getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 2

    .line 829
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 4
    .param p1, "orientation"    # I

    .line 2275
    if-nez p1, :cond_19

    .line 2276
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_33

    .line 2277
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object v0

    .line 2279
    :cond_19
    const/4 v0, 0x1

    if-ne p1, v0, :cond_33

    .line 2280
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_33

    .line 2281
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object v0

    .line 2284
    :cond_33
    const/4 v0, 0x0

    return-object v0
.end method

.method getRelativePositioning(I)I
    .registers 3
    .param p1, "orientation"    # I

    .line 1716
    if-nez p1, :cond_5

    .line 1717
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    return v0

    .line 1718
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1719
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    return v0

    .line 1721
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getRight()I
    .registers 3

    .line 1190
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootX()I
    .registers 3

    .line 1135
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootY()I
    .registers 3

    .line 1145
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .registers 3
    .param p1, "orientation"    # I

    .line 84
    if-nez p1, :cond_5

    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    return-object v0

    .line 86
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 87
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    return-object v0

    .line 89
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSceneString(Ljava/lang/StringBuilder;)V
    .registers 14
    .param p1, "ret"    # Ljava/lang/StringBuilder;

    .line 3588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    actualWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3590
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3592
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3594
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3596
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3597
    const-string v0, "left"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3598
    const-string/jumbo v0, "top"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3599
    const-string v0, "right"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3600
    const-string v0, "bottom"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3601
    const-string v0, "baseline"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3602
    const-string v0, "centerX"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3603
    const-string v0, "centerY"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3604
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v11, 0x0

    aget v5, v0, v11

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iget v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v10, v0, v11

    const-string v2, "    width"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    .line 3615
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iget v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v10, v0, v1

    const-string v2, "    height"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    .line 3624
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const-string v2, "    dimensionRatio"

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeDimensionRatio(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V

    .line 3625
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    sget v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    const-string v2, "    horizontalBias"

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 3626
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    sget v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    const-string v2, "    verticalBias"

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 3627
    const-string v0, "    horizontalChainStyle"

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    invoke-direct {p0, p1, v0, v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3628
    const-string v0, "    verticalChainStyle"

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    invoke-direct {p0, p1, v0, v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3630
    const-string v0, "  }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3632
    return-void
.end method

.method public getTop()I
    .registers 2

    .line 1181
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 896
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .registers 2

    .line 1247
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0
.end method

.method public getVerticalChainControlWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 8

    .line 2355
    const/4 v0, 0x0

    .line 2356
    .local v0, "found":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2357
    move-object v1, p0

    .line 2358
    .local v1, "tmp":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_8
    if-nez v0, :cond_44

    if-eqz v1, :cond_44

    .line 2359
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 2360
    .local v2, "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    if-nez v2, :cond_17

    move-object v4, v3

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    .line 2361
    .local v4, "targetOwner":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_1b
    if-nez v4, :cond_1f

    move-object v5, v3

    goto :goto_23

    :cond_1f
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v5

    .line 2362
    .local v5, "target":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_23
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    if-ne v5, v6, :cond_2b

    .line 2363
    move-object v0, v1

    .line 2364
    goto :goto_44

    .line 2366
    :cond_2b
    if-nez v5, :cond_2e

    goto :goto_38

    :cond_2e
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    .line 2367
    .local v3, "targetAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_38
    if-eqz v3, :cond_42

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    if-eq v6, v1, :cond_42

    .line 2368
    move-object v0, v1

    goto :goto_43

    .line 2370
    :cond_42
    move-object v1, v5

    .line 2372
    .end local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v3    # "targetAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_43
    goto :goto_8

    .line 2375
    .end local v1    # "tmp":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_44
    :goto_44
    return-object v0
.end method

.method public getVerticalChainStyle()I
    .registers 2

    .line 1839
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .registers 3

    .line 2218
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getVerticalMargin()I
    .registers 3

    .line 1220
    const/4 v0, 0x0

    .line 1221
    .local v0, "margin":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_a

    .line 1222
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 1224
    :cond_a
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_13

    .line 1225
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 1227
    :cond_13
    return v0
.end method

.method public getVisibility()I
    .registers 2

    .line 923
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 1058
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 1059
    const/4 v0, 0x0

    return v0

    .line 1061
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    return v0
.end method

.method public getWrapBehaviorInParent()I
    .registers 2

    .line 391
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    return v0
.end method

.method public getX()I
    .registers 3

    .line 1034
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_14

    .line 1035
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    add-int/2addr v0, v1

    return v0

    .line 1037
    :cond_14
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    return v0
.end method

.method public getY()I
    .registers 3

    .line 1046
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_14

    .line 1047
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    add-int/2addr v0, v1

    return v0

    .line 1049
    :cond_14
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    return v0
.end method

.method public hasBaseline()Z
    .registers 2

    .line 1273
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    return v0
.end method

.method public hasDanglingDimension(I)Z
    .registers 7
    .param p1, "orientation"    # I

    .line 227
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1d

    .line 228
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    :goto_17
    add-int/2addr v3, v4

    .line 229
    .local v3, "horizontalTargets":I
    if-ge v3, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1

    .line 231
    .end local v3    # "horizontalTargets":I
    :cond_1d
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_2e

    const/4 v4, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    add-int/2addr v3, v4

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    :goto_39
    add-int/2addr v3, v4

    .line 232
    .local v3, "verticalTargets":I
    if-ge v3, v0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    return v1
.end method

.method public hasDependencies()Z
    .registers 5

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "mAnchorsSize":I
    :goto_7
    if-ge v0, v1, :cond_1c

    .line 218
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 219
    .local v2, "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 220
    const/4 v3, 0x1

    return v3

    .line 217
    .end local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 223
    .end local v0    # "i":I
    .end local v1    # "mAnchorsSize":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public hasDimensionOverride()Z
    .registers 3

    .line 722
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    if-eq v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public hasResolvedTargets(II)Z
    .registers 8
    .param p1, "orientation"    # I
    .param p2, "size"    # I

    .line 237
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_48

    .line 238
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_8c

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_8c

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 239
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 240
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 241
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-lt v2, p2, :cond_46

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    .line 240
    :goto_47
    return v0

    .line 244
    :cond_48
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_8c

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_8c

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 245
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 246
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 247
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-lt v2, p2, :cond_8a

    goto :goto_8b

    :cond_8a
    const/4 v0, 0x0

    .line 246
    :goto_8b
    return v0

    .line 250
    :cond_8c
    return v1
.end method

.method public immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V
    .registers 9
    .param p1, "startType"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p3, "endType"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I
    .param p5, "goneMargin"    # I

    .line 1864
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1865
    .local v0, "startAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1866
    .local v1, "endAnchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p4, p5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 1867
    return-void
.end method

.method public isAnimated()Z
    .registers 2

    .line 941
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    return v0
.end method

.method public isHeightWrapContent()Z
    .registers 2

    .line 874
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    return v0
.end method

.method public isHorizontalSolvingPassDone()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    return v0
.end method

.method public isInBarrier(I)Z
    .registers 3
    .param p1, "orientation"    # I

    .line 373
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isInHorizontalChain()Z
    .registers 3

    .line 2261
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_20

    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_22

    .line 2263
    :cond_20
    const/4 v0, 0x1

    return v0

    .line 2265
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public isInPlaceholder()Z
    .registers 2

    .line 361
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    return v0
.end method

.method public isInVerticalChain()Z
    .registers 3

    .line 2342
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_20

    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_22

    .line 2344
    :cond_20
    const/4 v0, 0x1

    return v0

    .line 2346
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public isInVirtualLayout()Z
    .registers 2

    .line 313
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    return v0
.end method

.method public isMeasureRequested()Z
    .registers 3

    .line 381
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    if-eqz v0, :cond_c

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isResolvedHorizontally()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public isResolvedVertically()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public isRoot()Z
    .registers 2

    .line 820
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSpreadHeight()Z
    .registers 4

    .line 345
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_1d

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1d

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_1d

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method public isSpreadWidth()Z
    .registers 4

    .line 337
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1d

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_1d

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public isVerticalSolvingPassDone()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    return v0
.end method

.method public isWidthWrapContent()Z
    .registers 2

    .line 856
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    return v0
.end method

.method public markHorizontalSolvingPassDone()V
    .registers 2

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    .line 141
    return-void
.end method

.method public markVerticalSolvingPassDone()V
    .registers 2

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    .line 145
    return-void
.end method

.method public oppositeDimensionDependsOn(I)Z
    .registers 8
    .param p1, "orientation"    # I

    .line 707
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 708
    .local v2, "oppositeOrientation":I
    :goto_7
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, p1

    .line 709
    .local v3, "dimensionBehaviour":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v2

    .line 710
    .local v4, "oppositeDimensionBehaviour":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_18

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public oppositeDimensionsTied()Z
    .registers 5

    .line 716
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public reset()V
    .registers 7

    .line 517
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 518
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 519
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 520
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 521
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 522
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 523
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 524
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 526
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 527
    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 528
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 529
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 530
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 531
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 532
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 533
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 534
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 535
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 536
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 537
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 538
    sget v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 539
    sget v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 540
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v3, v2

    .line 541
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 542
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 543
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 544
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 545
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 546
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 547
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 548
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 549
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 550
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 551
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 552
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 553
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aput v3, v0, v5

    .line 554
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 555
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 556
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    .line 557
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    aput v3, v0, v5

    .line 558
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 559
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 560
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 561
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 562
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 563
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 564
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 565
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 566
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 567
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 568
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 569
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 570
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v5, v0, v2

    .line 571
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v5, v0, v5

    .line 572
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 573
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v2, v0, v2

    .line 574
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v2, v0, v5

    .line 575
    iput-boolean v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 576
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aput v2, v0, v2

    .line 577
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aput v2, v0, v5

    .line 578
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 579
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 580
    return-void
.end method

.method public resetAllConstraints()V
    .registers 2

    .line 2082
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    .line 2083
    sget v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 2084
    sget v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 2085
    return-void
.end method

.method public resetAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 12
    .param p1, "anchor"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2093
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2094
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_1b

    .line 2095
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2096
    .local v0, "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2097
    return-void

    .line 2101
    .end local v0    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    :cond_1b
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    .line 2102
    .local v0, "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    .line 2103
    .local v1, "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    .line 2104
    .local v2, "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    .line 2105
    .local v3, "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    .line 2106
    .local v4, "center":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    .line 2107
    .local v5, "centerX":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    .line 2109
    .local v6, "centerY":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/high16 v7, 0x3f000000    # 0.5f

    if-ne p1, v4, :cond_87

    .line 2110
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_65

    .line 2111
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    if-ne v8, v9, :cond_65

    .line 2112
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2113
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2115
    :cond_65
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_81

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_81

    .line 2116
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    if-ne v8, v9, :cond_81

    .line 2117
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2118
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2120
    :cond_81
    iput v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 2121
    iput v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_109

    .line 2122
    :cond_87
    if-ne p1, v5, :cond_b0

    .line 2123
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_ad

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 2124
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_ad

    .line 2125
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2126
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2128
    :cond_ad
    iput v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_109

    .line 2129
    :cond_b0
    if-ne p1, v6, :cond_d9

    .line 2130
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_d6

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 2131
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_d6

    .line 2132
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2133
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2135
    :cond_d6
    iput v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_109

    .line 2136
    :cond_d9
    if-eq p1, v0, :cond_f6

    if-ne p1, v1, :cond_de

    goto :goto_f6

    .line 2140
    :cond_de
    if-eq p1, v2, :cond_e2

    if-ne p1, v3, :cond_109

    .line 2141
    :cond_e2
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_109

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    if-ne v7, v8, :cond_109

    .line 2142
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    goto :goto_109

    .line 2137
    :cond_f6
    :goto_f6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_109

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    if-ne v7, v8, :cond_109

    .line 2138
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2145
    :cond_109
    :goto_109
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2146
    return-void
.end method

.method public resetAnchors()V
    .registers 5

    .line 2152
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    .line 2153
    .local v0, "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v0, :cond_17

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_17

    .line 2154
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2155
    .local v1, "parentContainer":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2156
    return-void

    .line 2159
    .end local v1    # "parentContainer":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    :cond_17
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mAnchorsSize":I
    :goto_1e
    if-ge v1, v2, :cond_2e

    .line 2160
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2161
    .local v3, "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 2159
    .end local v3    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 2163
    .end local v1    # "i":I
    .end local v2    # "mAnchorsSize":I
    :cond_2e
    return-void
.end method

.method public resetFinalResolution()V
    .registers 4

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 203
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 204
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    .line 205
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "mAnchorsSize":I
    :goto_10
    if-ge v0, v1, :cond_20

    .line 207
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 208
    .local v2, "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetFinalResolution()V

    .line 206
    .end local v2    # "anchor":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 210
    .end local v0    # "i":I
    .end local v1    # "mAnchorsSize":I
    :cond_20
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V
    .registers 3
    .param p1, "cache"    # Landroidx/constraintlayout/core/Cache;

    .line 790
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 791
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 792
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 793
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 794
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 795
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 796
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 797
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 798
    return-void
.end method

.method public resetSolvingPassFlag()V
    .registers 2

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    .line 128
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    .line 129
    return-void
.end method

.method public serialize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 13
    .param p1, "ret"    # Ljava/lang/StringBuilder;

    .line 663
    const-string/jumbo v0, "{\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string v0, "left"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 665
    const-string/jumbo v0, "top"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 666
    const-string v0, "right"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 667
    const-string v0, "bottom"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 668
    const-string v0, "baseline"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 669
    const-string v0, "centerX"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 670
    const-string v0, "centerY"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 671
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeCircle(Ljava/lang/StringBuilder;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;F)V

    .line 673
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aget v5, v0, v1

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iget v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v10, v0, v1

    const-string/jumbo v2, "width"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeSize(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    .line 684
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iget v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v10, v0, v1

    const-string v2, "height"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeSize(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    .line 694
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const-string v2, "dimensionRatio"

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeDimensionRatio(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V

    .line 695
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    sget v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    const-string v2, "horizontalBias"

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 696
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    sget v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    const-string/jumbo v2, "verticalBias"

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 697
    const-string/jumbo v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    return-object p1
.end method

.method public setAnimated(Z)V
    .registers 2
    .param p1, "animated"    # Z

    .line 932
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    .line 933
    return-void
.end method

.method public setBaselineDistance(I)V
    .registers 3
    .param p1, "baseline"    # I

    .line 1745
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1746
    if-lez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 1747
    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .registers 2
    .param p1, "companion"    # Ljava/lang/Object;

    .line 1756
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 1757
    return-void
.end method

.method public setContainerItemSkip(I)V
    .registers 3
    .param p1, "skip"    # I

    .line 1768
    if-ltz p1, :cond_5

    .line 1769
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_8

    .line 1771
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 1773
    :goto_8
    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 957
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 958
    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/core/LinearSystem;Ljava/lang/String;)V
    .registers 10
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "name"    # Ljava/lang/String;

    .line 977
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 978
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 979
    .local v0, "left":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    .line 980
    .local v1, "top":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    .line 981
    .local v2, "right":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    .line 982
    .local v3, "bottom":Landroidx/constraintlayout/core/SolverVariable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".left"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    .line 983
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".top"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    .line 984
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".right"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    .line 985
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bottom"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    .line 986
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    .line 987
    .local v4, "baseline":Landroidx/constraintlayout/core/SolverVariable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".baseline"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    .line 988
    return-void
.end method

.method public setDimension(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1600
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1601
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_c

    .line 1602
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1604
    :cond_c
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1605
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_18

    .line 1606
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1608
    :cond_18
    return-void
.end method

.method public setDimensionRatio(FI)V
    .registers 3
    .param p1, "ratio"    # F
    .param p2, "dimensionRatioSide"    # I

    .line 1525
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1526
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1527
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .registers 14
    .param p1, "ratio"    # Ljava/lang/String;

    .line 1460
    const/4 v0, 0x0

    if-eqz p1, :cond_9a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_9a

    .line 1464
    :cond_b
    const/4 v1, -0x1

    .line 1465
    .local v1, "dimensionRatioSide":I
    const/4 v2, 0x0

    .line 1466
    .local v2, "dimensionRatio":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1467
    .local v3, "len":I
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1468
    .local v4, "commaIndex":I
    const/4 v5, 0x1

    if-lez v4, :cond_39

    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_39

    .line 1469
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1470
    .local v6, "dimension":Ljava/lang/String;
    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1471
    const/4 v1, 0x0

    goto :goto_36

    .line 1472
    :cond_2d
    const-string v7, "H"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1473
    const/4 v1, 0x1

    .line 1475
    :cond_36
    :goto_36
    nop

    .end local v6    # "dimension":Ljava/lang/String;
    add-int/2addr v4, v5

    .line 1476
    goto :goto_3a

    .line 1477
    :cond_39
    const/4 v4, 0x0

    .line 1479
    :goto_3a
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1481
    .local v6, "colonIndex":I
    if-ltz v6, :cond_80

    add-int/lit8 v7, v3, -0x1

    if-ge v6, v7, :cond_80

    .line 1482
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1483
    .local v7, "nominator":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1484
    .local v8, "denominator":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7f

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7f

    .line 1486
    :try_start_5c
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 1487
    .local v9, "nominatorValue":F
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 1488
    .local v10, "denominatorValue":F
    cmpl-float v11, v9, v0

    if-lez v11, :cond_7d

    cmpl-float v11, v10, v0

    if-lez v11, :cond_7d

    .line 1489
    if-ne v1, v5, :cond_76

    .line 1490
    div-float v5, v10, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v2, v5

    goto :goto_7d

    .line 1492
    :cond_76
    div-float v5, v9, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_7c} :catch_7e

    move v2, v5

    .line 1497
    .end local v9    # "nominatorValue":F
    .end local v10    # "denominatorValue":F
    :cond_7d
    :goto_7d
    goto :goto_7f

    .line 1495
    :catch_7e
    move-exception v5

    .line 1499
    .end local v7    # "nominator":Ljava/lang/String;
    .end local v8    # "denominator":Ljava/lang/String;
    :cond_7f
    :goto_7f
    goto :goto_91

    .line 1500
    :cond_80
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1501
    .local v5, "r":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_91

    .line 1503
    :try_start_8a
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_8a .. :try_end_8e} :catch_90

    move v2, v7

    .line 1506
    goto :goto_91

    .line 1504
    :catch_90
    move-exception v7

    .line 1510
    .end local v5    # "r":Ljava/lang/String;
    :cond_91
    :goto_91
    cmpl-float v0, v2, v0

    if-lez v0, :cond_99

    .line 1511
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1512
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1514
    :cond_99
    return-void

    .line 1461
    .end local v1    # "dimensionRatioSide":I
    .end local v2    # "dimensionRatio":F
    .end local v3    # "len":I
    .end local v4    # "commaIndex":I
    .end local v6    # "colonIndex":I
    :cond_9a
    :goto_9a
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1462
    return-void
.end method

.method public setFinalBaseline(I)V
    .registers 5
    .param p1, "baselineValue"    # I

    .line 181
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    if-nez v0, :cond_5

    .line 182
    return-void

    .line 184
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    sub-int v0, p1, v0

    .line 185
    .local v0, "y1":I
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v1, v0

    .line 186
    .local v1, "y2":I
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 187
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 188
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 189
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 190
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 191
    return-void
.end method

.method public setFinalFrame(IIIIII)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "baseline"    # I
    .param p6, "orientation"    # I

    .line 99
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 100
    invoke-virtual {p0, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p6, :cond_f

    .line 102
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 103
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_22

    .line 104
    :cond_f
    if-ne p6, v1, :cond_16

    .line 105
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 106
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_22

    .line 107
    :cond_16
    const/4 v2, 0x2

    if-ne p6, v2, :cond_1e

    .line 108
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 109
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_22

    .line 111
    :cond_1e
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 112
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 114
    :goto_22
    return-void
.end method

.method public setFinalHorizontal(II)V
    .registers 4
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 148
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-eqz v0, :cond_5

    .line 149
    return-void

    .line 151
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 152
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 153
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 154
    sub-int v0, p2, p1

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 160
    return-void
.end method

.method public setFinalLeft(I)V
    .registers 3
    .param p1, "x1"    # I

    .line 117
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 118
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 119
    return-void
.end method

.method public setFinalTop(I)V
    .registers 3
    .param p1, "y1"    # I

    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 123
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 124
    return-void
.end method

.method public setFinalVertical(II)V
    .registers 5
    .param p1, "y1"    # I
    .param p2, "y2"    # I

    .line 163
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-eqz v0, :cond_5

    .line 164
    return-void

    .line 166
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 167
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 168
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 169
    sub-int v0, p2, p1

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 170
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    if-eqz v0, :cond_21

    .line 171
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 173
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 178
    return-void
.end method

.method public setFrame(III)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "orientation"    # I

    .line 1674
    if-nez p3, :cond_6

    .line 1675
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    goto :goto_c

    .line 1676
    :cond_6
    const/4 v0, 0x1

    if-ne p3, v0, :cond_c

    .line 1677
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 1679
    :cond_c
    :goto_c
    return-void
.end method

.method public setFrame(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1619
    sub-int v0, p3, p1

    .line 1620
    .local v0, "w":I
    sub-int v1, p4, p2

    .line 1622
    .local v1, "h":I
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1623
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 1625
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v2, v3, :cond_14

    .line 1626
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1627
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1628
    return-void

    .line 1632
    :cond_14
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v4

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_22

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    if-ge v0, v2, :cond_22

    .line 1633
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1635
    :cond_22
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_31

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    if-ge v1, v2, :cond_31

    .line 1636
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1639
    :cond_31
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1640
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1642
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v2, v5, :cond_3f

    .line 1643
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1645
    :cond_3f
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v2, v5, :cond_49

    .line 1646
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1648
    :cond_49
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v2, :cond_5f

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v4

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_5f

    .line 1649
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1651
    :cond_5f
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v2, :cond_75

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_75

    .line 1652
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1654
    :cond_75
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    if-eq v0, v2, :cond_7d

    .line 1655
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 1657
    :cond_7d
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    if-eq v1, v2, :cond_85

    .line 1658
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 1664
    :cond_85
    return-void
.end method

.method public setGoneMargin(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    .registers 5
    .param p1, "type"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    .param p2, "goneMargin"    # I

    .line 1351
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    goto :goto_25

    .line 1369
    :pswitch_c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1371
    goto :goto_25

    .line 1365
    :pswitch_11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1367
    goto :goto_25

    .line 1361
    :pswitch_16
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1363
    goto :goto_25

    .line 1357
    :pswitch_1b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1359
    goto :goto_25

    .line 1353
    :pswitch_20
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1355
    nop

    .line 1378
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method public setHasBaseline(Z)V
    .registers 2
    .param p1, "hasBaseline"    # Z

    .line 353
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 354
    return-void
.end method

.method public setHeight(I)V
    .registers 4
    .param p1, "h"    # I

    .line 1398
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1399
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_c

    .line 1400
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1402
    :cond_c
    return-void
.end method

.method public setHeightWrapContent(Z)V
    .registers 2
    .param p1, "heightWrapContent"    # Z

    .line 865
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 866
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .registers 2
    .param p1, "horizontalBiasPercent"    # F

    .line 1554
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1555
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .registers 2
    .param p1, "horizontalChainStyle"    # I

    .line 1809
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 1810
    return-void
.end method

.method public setHorizontalDimension(II)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1688
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1689
    sub-int v0, p2, p1

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1690
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_10

    .line 1691
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1693
    :cond_10
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .registers 4
    .param p1, "behaviour"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2243
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2244
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .registers 6
    .param p1, "horizontalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .line 1427
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1428
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1429
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_b

    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    move v0, p3

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1430
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 1431
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_22

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_22

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v0, :cond_22

    .line 1432
    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1434
    :cond_22
    return-void
.end method

.method public setHorizontalWeight(F)V
    .registers 4
    .param p1, "horizontalWeight"    # F

    .line 1790
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1791
    return-void
.end method

.method protected setInBarrier(IZ)V
    .registers 4
    .param p1, "orientation"    # I
    .param p2, "value"    # Z

    .line 369
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean p2, v0, p1

    .line 370
    return-void
.end method

.method public setInPlaceholder(Z)V
    .registers 2
    .param p1, "inPlaceholder"    # Z

    .line 365
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 366
    return-void
.end method

.method public setInVirtualLayout(Z)V
    .registers 2
    .param p1, "inVirtualLayout"    # Z

    .line 317
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 318
    return-void
.end method

.method public setLastMeasureSpec(II)V
    .registers 4
    .param p1, "horizontal"    # I
    .param p2, "vertical"    # I

    .line 403
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 404
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 406
    return-void
.end method

.method public setLength(II)V
    .registers 4
    .param p1, "length"    # I
    .param p2, "orientation"    # I

    .line 1411
    if-nez p2, :cond_6

    .line 1412
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_c

    .line 1413
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 1414
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 1416
    :cond_c
    :goto_c
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 4
    .param p1, "maxHeight"    # I

    .line 333
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 334
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 4
    .param p1, "maxWidth"    # I

    .line 329
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 330
    return-void
.end method

.method public setMeasureRequested(Z)V
    .registers 2
    .param p1, "measureRequested"    # Z

    .line 377
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 378
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .param p1, "h"    # I

    .line 1586
    if-gez p1, :cond_6

    .line 1587
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_8

    .line 1589
    :cond_6
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 1591
    :goto_8
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .param p1, "w"    # I

    .line 1573
    if-gez p1, :cond_6

    .line 1574
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_8

    .line 1576
    :cond_6
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 1578
    :goto_8
    return-void
.end method

.method public setOffset(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1340
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 1341
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 1342
    return-void
.end method

.method public setOrigin(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1329
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1330
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 1331
    return-void
.end method

.method public setParent(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 2
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 838
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 839
    return-void
.end method

.method setRelativePositioning(II)V
    .registers 4
    .param p1, "offset"    # I
    .param p2, "orientation"    # I

    .line 1732
    if-nez p2, :cond_5

    .line 1733
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    goto :goto_a

    .line 1734
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 1735
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    .line 1737
    :cond_a
    :goto_a
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 905
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 906
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .registers 2
    .param p1, "verticalBiasPercent"    # F

    .line 1564
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1565
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .registers 2
    .param p1, "verticalChainStyle"    # I

    .line 1829
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 1830
    return-void
.end method

.method public setVerticalDimension(II)V
    .registers 5
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .line 1702
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 1703
    sub-int v0, p2, p1

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1704
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_10

    .line 1705
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1707
    :cond_10
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .registers 4
    .param p1, "behaviour"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2252
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2253
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .registers 6
    .param p1, "verticalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .line 1445
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1446
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1447
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_b

    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    move v0, p3

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1448
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 1449
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_22

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_22

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_22

    .line 1450
    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1452
    :cond_22
    return-void
.end method

.method public setVerticalWeight(F)V
    .registers 4
    .param p1, "verticalWeight"    # F

    .line 1799
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1800
    return-void
.end method

.method public setVisibility(I)V
    .registers 2
    .param p1, "visibility"    # I

    .line 914
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 915
    return-void
.end method

.method public setWidth(I)V
    .registers 4
    .param p1, "w"    # I

    .line 1386
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1387
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_c

    .line 1388
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1390
    :cond_c
    return-void
.end method

.method public setWidthWrapContent(Z)V
    .registers 2
    .param p1, "widthWrapContent"    # Z

    .line 847
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 848
    return-void
.end method

.method public setWrapBehaviorInParent(I)V
    .registers 3
    .param p1, "behavior"    # I

    .line 385
    if-ltz p1, :cond_7

    const/4 v0, 0x3

    if-gt p1, v0, :cond_7

    .line 386
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    .line 388
    :cond_7
    return-void
.end method

.method public setX(I)V
    .registers 2
    .param p1, "x"    # I

    .line 1310
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1311
    return-void
.end method

.method public setY(I)V
    .registers 2
    .param p1, "y"    # I

    .line 1319
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 1320
    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .registers 10
    .param p1, "hParentWrapContent"    # Z
    .param p2, "vParentWrapContent"    # Z
    .param p3, "horizontalDimensionFixed"    # Z
    .param p4, "verticalDimensionFixed"    # Z

    .line 2790
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_20

    .line 2791
    if-eqz p3, :cond_10

    if-nez p4, :cond_10

    .line 2792
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_20

    .line 2793
    :cond_10
    if-nez p3, :cond_20

    if-eqz p4, :cond_20

    .line 2794
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2795
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-ne v0, v4, :cond_20

    .line 2797
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v1, v0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2802
    :cond_20
    :goto_20
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez v0, :cond_37

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_37

    .line 2803
    :cond_34
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_4d

    .line 2804
    :cond_37
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v3, :cond_4d

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2805
    :cond_4b
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2809
    :cond_4d
    :goto_4d
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v4, :cond_9c

    .line 2810
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2811
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 2813
    :cond_71
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2814
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_9c

    .line 2815
    :cond_84
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9c

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 2816
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v1, v0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2817
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2831
    :cond_9c
    :goto_9c
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v4, :cond_ba

    .line 2832
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v0, :cond_ab

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_ab

    .line 2833
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_ba

    .line 2834
    :cond_ab
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_ba

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v0, :cond_ba

    .line 2835
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2836
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2844
    :cond_ba
    :goto_ba
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_28
    move-object v1, v3

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromRuns(ZZ)V
    .registers 12
    .param p1, "updateHorizontal"    # Z
    .param p2, "updateVertical"    # Z

    .line 3483
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->isResolved()Z

    move-result v0

    and-int/2addr p1, v0

    .line 3484
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->isResolved()Z

    move-result v0

    and-int/2addr p2, v0

    .line 3485
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3486
    .local v0, "left":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3487
    .local v1, "top":I
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3488
    .local v2, "right":I
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3489
    .local v3, "bottom":I
    sub-int v4, v2, v0

    .line 3490
    .local v4, "w":I
    sub-int v5, v3, v1

    .line 3491
    .local v5, "h":I
    if-ltz v4, :cond_43

    if-ltz v5, :cond_43

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_43

    const v7, 0x7fffffff

    if-eq v0, v7, :cond_43

    if-eq v1, v6, :cond_43

    if-eq v1, v7, :cond_43

    if-eq v2, v6, :cond_43

    if-eq v2, v7, :cond_43

    if-eq v3, v6, :cond_43

    if-ne v3, v7, :cond_47

    .line 3496
    :cond_43
    const/4 v0, 0x0

    .line 3497
    const/4 v1, 0x0

    .line 3498
    const/4 v2, 0x0

    .line 3499
    const/4 v3, 0x0

    .line 3502
    :cond_47
    sub-int v4, v2, v0

    .line 3503
    sub-int v5, v3, v1

    .line 3505
    if-eqz p1, :cond_4f

    .line 3506
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 3508
    :cond_4f
    if-eqz p2, :cond_53

    .line 3509
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 3512
    :cond_53
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v6, v7, :cond_5f

    .line 3513
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 3514
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 3515
    return-void

    .line 3519
    :cond_5f
    if-eqz p1, :cond_7b

    .line 3520
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v8

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_6f

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    if-ge v4, v6, :cond_6f

    .line 3521
    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 3523
    :cond_6f
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 3524
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v6, v7, :cond_7b

    .line 3525
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 3529
    :cond_7b
    if-eqz p2, :cond_98

    .line 3530
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_8c

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    if-ge v5, v6, :cond_8c

    .line 3531
    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 3533
    :cond_8c
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 3534
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v6, v7, :cond_98

    .line 3535
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 3539
    :cond_98
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 11
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "optimize"    # Z

    .line 3352
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 3353
    .local v0, "left":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v1

    .line 3354
    .local v1, "top":I
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v2

    .line 3355
    .local v2, "right":I
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    .line 3357
    .local v3, "bottom":I
    if-eqz p2, :cond_3a

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v4, :cond_3a

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_3a

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_3a

    .line 3358
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3359
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3361
    :cond_3a
    if-eqz p2, :cond_5c

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v4, :cond_5c

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_5c

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_5c

    .line 3362
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3363
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3366
    :cond_5c
    sub-int v4, v2, v0

    .line 3367
    .local v4, "w":I
    sub-int v5, v3, v1

    .line 3368
    .local v5, "h":I
    if-ltz v4, :cond_79

    if-ltz v5, :cond_79

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_79

    const v7, 0x7fffffff

    if-eq v0, v7, :cond_79

    if-eq v1, v6, :cond_79

    if-eq v1, v7, :cond_79

    if-eq v2, v6, :cond_79

    if-eq v2, v7, :cond_79

    if-eq v3, v6, :cond_79

    if-ne v3, v7, :cond_7d

    .line 3373
    :cond_79
    const/4 v0, 0x0

    .line 3374
    const/4 v1, 0x0

    .line 3375
    const/4 v2, 0x0

    .line 3376
    const/4 v3, 0x0

    .line 3378
    :cond_7d
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 3382
    return-void
.end method
