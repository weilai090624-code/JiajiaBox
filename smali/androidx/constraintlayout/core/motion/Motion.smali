.class public Landroidx/constraintlayout/core/motion/Motion;
.super Ljava/lang/Object;
.source "Motion.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# static fields
.field static final BOUNCE:I = 0x4

.field private static final DEBUG:Z = false

.field public static final DRAW_PATH_AS_CONFIGURED:I = 0x4

.field public static final DRAW_PATH_BASIC:I = 0x1

.field public static final DRAW_PATH_CARTESIAN:I = 0x3

.field public static final DRAW_PATH_NONE:I = 0x0

.field public static final DRAW_PATH_RECTANGLE:I = 0x5

.field public static final DRAW_PATH_RELATIVE:I = 0x2

.field public static final DRAW_PATH_SCREEN:I = 0x6

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final FAVOR_FIXED_SIZE_VIEWS:Z = false

.field public static final HORIZONTAL_PATH_X:I = 0x2

.field public static final HORIZONTAL_PATH_Y:I = 0x3

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field private static final INTERPOLATOR_UNDEFINED:I = -0x3

.field static final LINEAR:I = 0x3

.field static final OVERSHOOT:I = 0x5

.field public static final PATH_PERCENT:I = 0x0

.field public static final PATH_PERPENDICULAR:I = 0x1

.field public static final ROTATION_LEFT:I = 0x2

.field public static final ROTATION_RIGHT:I = 0x1

.field private static final SPLINE_STRING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MotionController"

.field public static final VERTICAL_PATH_X:I = 0x4

.field public static final VERTICAL_PATH_Y:I = 0x5


# instance fields
.field private MAX_DIMENSION:I

.field attributeTable:[Ljava/lang/String;

.field private mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field private mAttributeInterpolatorCount:[I

.field private mAttributeNames:[Ljava/lang/String;

.field private mAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;"
        }
    .end annotation
.end field

.field mConstraintTag:Ljava/lang/String;

.field mCurrentCenterX:F

.field mCurrentCenterY:F

.field private mCurveFitType:I

.field private mCycleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/key/MotionKey;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mNoMovement:Z

.field private mPathMotionArc:I

.field private mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

.field private mQuantizeMotionPhase:F

.field private mQuantizeMotionSteps:I

.field private mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field mTempRect:Landroidx/constraintlayout/core/motion/utils/Rect;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformPivotTarget:I

.field private mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroidx/constraintlayout/core/motion/MotionWidget;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 5
    .param p1, "view"    # Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTempRect:Landroidx/constraintlayout/core/motion/utils/Rect;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 84
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 85
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 87
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 88
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 92
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionStagger:F

    .line 93
    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    .line 94
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    .line 102
    const/4 v2, 0x4

    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->MAX_DIMENSION:I

    .line 103
    iget v2, p0, Landroidx/constraintlayout/core/motion/Motion;->MAX_DIMENSION:I

    new-array v2, v2, [F

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 105
    const/4 v2, 0x1

    new-array v2, v2, [F

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 112
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    .line 113
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 114
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 115
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    .line 116
    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    .line 117
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    .line 150
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/Motion;->setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 151
    return-void
.end method

.method private getAdjustedPosition(F[F)F
    .registers 12
    .param p1, "position"    # F
    .param p2, "velocity"    # [F

    .line 1155
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    .line 1156
    aput v0, p2, v1

    goto :goto_2e

    .line 1157
    :cond_8
    iget v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_2e

    .line 1158
    iget v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_18

    .line 1159
    const/4 p1, 0x0

    .line 1161
    :cond_18
    iget v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2e

    float-to-double v2, p1

    cmpg-double v6, v2, v4

    if-gez v6, :cond_2e

    .line 1162
    iget v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    sub-float/2addr p1, v2

    .line 1163
    iget v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    mul-float p1, p1, v2

    .line 1164
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1169
    :cond_2e
    :goto_2e
    move v0, p1

    .line 1170
    .local v0, "adjusted":F
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 1171
    .local v2, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    const/4 v3, 0x0

    .line 1172
    .local v3, "start":F
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 1173
    .local v4, "end":F
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 1174
    .local v6, "frame":Landroidx/constraintlayout/core/motion/MotionPaths;
    iget-object v7, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v7, :cond_5f

    .line 1175
    iget v7, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    cmpg-float v7, v7, p1

    if-gez v7, :cond_57

    .line 1176
    iget-object v2, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 1177
    iget v3, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    goto :goto_5f

    .line 1179
    :cond_57
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 1180
    iget v4, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 1184
    .end local v6    # "frame":Landroidx/constraintlayout/core/motion/MotionPaths;
    :cond_5f
    :goto_5f
    goto :goto_3c

    .line 1186
    :cond_60
    if-eqz v2, :cond_85

    .line 1187
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1188
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1190
    :cond_6a
    sub-float v5, p1, v3

    sub-float v6, v4, v3

    div-float/2addr v5, v6

    .line 1191
    .local v5, "offset":F
    float-to-double v6, v5

    invoke-virtual {v2, v6, v7}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 1192
    .local v6, "new_offset":F
    sub-float v7, v4, v3

    mul-float v7, v7, v6

    add-float v0, v7, v3

    .line 1193
    if-eqz p2, :cond_85

    .line 1194
    float-to-double v7, v5

    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/core/motion/utils/Easing;->getDiff(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, p2, v1

    .line 1197
    .end local v5    # "offset":F
    .end local v6    # "new_offset":F
    :cond_85
    return v0
.end method

.method private static getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;
    .registers 5
    .param p0, "type"    # I
    .param p1, "interpolatorString"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1100
    packed-switch p0, :pswitch_data_10

    .line 1119
    const/4 v0, 0x0

    return-object v0

    .line 1102
    :pswitch_5
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    .line 1103
    .local v0, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    new-instance v1, Landroidx/constraintlayout/core/motion/Motion$1;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/motion/Motion$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    return-object v1

    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_5
    .end packed-switch
.end method

.method private getPreCycleDistance()F
    .registers 27

    .line 415
    move-object/from16 v0, p0

    const/16 v1, 0x64

    .line 416
    .local v1, "pointCount":I
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 417
    .local v2, "points":[F
    const/4 v3, 0x0

    .line 418
    .local v3, "sum":F
    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v10, v5, v4

    .line 419
    .local v10, "mils":F
    const-wide/16 v4, 0x0

    .local v4, "x":D
    const-wide/16 v6, 0x0

    .line 420
    .local v6, "y":D
    const/4 v8, 0x0

    move v11, v3

    move-wide v12, v4

    move-wide v14, v6

    move v9, v8

    .end local v3    # "sum":F
    .end local v4    # "x":D
    .end local v6    # "y":D
    .local v9, "i":I
    .local v11, "sum":F
    .local v12, "x":D
    .local v14, "y":D
    :goto_18
    if-ge v9, v1, :cond_cb

    .line 421
    int-to-float v3, v9

    mul-float v8, v3, v10

    .line 423
    .local v8, "position":F
    float-to-double v3, v8

    .line 425
    .local v3, "p":D
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 426
    .local v5, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    const/4 v6, 0x0

    .line 427
    .local v6, "start":F
    const/high16 v7, 0x7fc00000    # Float.NaN

    .line 428
    .local v7, "end":F
    move/from16 v16, v1

    .end local v1    # "pointCount":I
    .local v16, "pointCount":I
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v17, v6

    move/from16 v25, v7

    move-object v7, v5

    move/from16 v5, v25

    .end local v6    # "start":F
    .local v5, "end":F
    .local v7, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .local v17, "start":F
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 429
    .local v6, "frame":Landroidx/constraintlayout/core/motion/MotionPaths;
    move-object/from16 v18, v1

    iget-object v1, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v1, :cond_5d

    .line 430
    iget v1, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    cmpg-float v1, v1, v8

    if-gez v1, :cond_54

    .line 431
    iget-object v1, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 432
    .end local v7    # "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .local v1, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    iget v7, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move/from16 v17, v7

    move-object v7, v1

    .end local v17    # "start":F
    .local v7, "start":F
    goto :goto_5d

    .line 434
    .end local v1    # "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .local v7, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .restart local v17    # "start":F
    :cond_54
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 435
    iget v1, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move v5, v1

    .line 439
    .end local v6    # "frame":Landroidx/constraintlayout/core/motion/MotionPaths;
    :cond_5d
    :goto_5d
    move-object/from16 v1, v18

    goto :goto_34

    .line 441
    :cond_60
    if-eqz v7, :cond_82

    .line 442
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 443
    const/high16 v1, 0x3f800000    # 1.0f

    move v5, v1

    .line 445
    :cond_6b
    sub-float v1, v8, v17

    sub-float v6, v5, v17

    div-float/2addr v1, v6

    .line 446
    .local v1, "offset":F
    move-wide/from16 v18, v3

    .end local v3    # "p":D
    .local v18, "p":D
    float-to-double v3, v1

    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 447
    sub-float v3, v5, v17

    mul-float v3, v3, v1

    add-float v3, v3, v17

    float-to-double v3, v3

    move v1, v5

    move-wide v4, v3

    .end local v18    # "p":D
    .restart local v3    # "p":D
    goto :goto_87

    .line 441
    .end local v1    # "offset":F
    :cond_82
    move-wide/from16 v18, v3

    .end local v3    # "p":D
    .restart local v18    # "p":D
    move v1, v5

    move-wide/from16 v4, v18

    .line 451
    .end local v5    # "end":F
    .end local v18    # "p":D
    .local v1, "end":F
    .local v4, "p":D
    :goto_87
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/16 v18, 0x0

    aget-object v3, v3, v18

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 452
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    move/from16 v19, v1

    .end local v1    # "end":F
    .local v19, "end":F
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    const/16 v20, 0x0

    move-wide/from16 v21, v4

    .end local v4    # "p":D
    .local v21, "p":D
    move-object/from16 v23, v7

    .end local v7    # "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .local v23, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    move-object v7, v1

    move v1, v8

    .end local v8    # "position":F
    .local v1, "position":F
    move-object v8, v2

    move/from16 v24, v9

    .end local v9    # "i":I
    .local v24, "i":I
    move/from16 v9, v20

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    .line 453
    const/4 v3, 0x1

    if-lez v24, :cond_bf

    .line 454
    float-to-double v4, v11

    aget v6, v2, v3

    float-to-double v6, v6

    sub-double v6, v14, v6

    aget v8, v2, v18

    float-to-double v8, v8

    sub-double v8, v12, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    move v11, v4

    .line 456
    :cond_bf
    aget v4, v2, v18

    float-to-double v12, v4

    .line 457
    aget v3, v2, v3

    float-to-double v14, v3

    .line 420
    .end local v1    # "position":F
    .end local v17    # "start":F
    .end local v19    # "end":F
    .end local v21    # "p":D
    .end local v23    # "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    add-int/lit8 v9, v24, 0x1

    move/from16 v1, v16

    .end local v24    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_18

    .line 459
    .end local v9    # "i":I
    .end local v16    # "pointCount":I
    .local v1, "pointCount":I
    :cond_cb
    return v11
.end method

.method private insertKey(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .registers 7
    .param p1, "point"    # Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "redundant":Landroidx/constraintlayout/core/motion/MotionPaths;
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 599
    .local v2, "p":Landroidx/constraintlayout/core/motion/MotionPaths;
    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    iget v4, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1c

    .line 600
    move-object v0, v2

    .line 602
    .end local v2    # "p":Landroidx/constraintlayout/core/motion/MotionPaths;
    :cond_1c
    goto :goto_7

    .line 603
    :cond_1d
    if-eqz v0, :cond_24

    .line 604
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 606
    :cond_24
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 607
    .local v1, "pos":I
    if-nez v1, :cond_4c

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " KeyPath position \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" outside of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotionController"

    invoke-static {v3, v2}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_4c
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    neg-int v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 611
    return-void
.end method

.method private readView(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .registers 6
    .param p1, "motionPaths"    # Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 971
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 972
    return-void
.end method


# virtual methods
.method public addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V
    .registers 3
    .param p1, "key"    # Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 623
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method addKeys(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/key/MotionKey;",
            ">;)V"
        }
    .end annotation

    .line 614
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKey;>;"
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 620
    return-void
.end method

.method buildBounds([FI)V
    .registers 20
    .param p1, "bounds"    # [F
    .param p2, "pointCount"    # I

    .line 358
    move-object/from16 v0, p0

    move/from16 v1, p2

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    .line 359
    .local v2, "mils":F
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v5, "translationX"

    const/4 v6, 0x0

    if-nez v4, :cond_15

    move-object v4, v6

    goto :goto_1d

    :cond_15
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 360
    .local v4, "trans_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :goto_1d
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v8, "translationY"

    if-nez v7, :cond_26

    move-object v7, v6

    goto :goto_2e

    :cond_26
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 361
    .local v7, "trans_y":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :goto_2e
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-nez v9, :cond_34

    move-object v5, v6

    goto :goto_3c

    :cond_34
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 362
    .local v5, "osc_x":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :goto_3c
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-nez v9, :cond_41

    goto :goto_49

    :cond_41
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 364
    .local v6, "osc_y":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :goto_49
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4a
    if-ge v8, v1, :cond_103

    .line 365
    int-to-float v9, v8

    mul-float v9, v9, v2

    .line 366
    .local v9, "position":F
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    cmpl-float v10, v10, v3

    if-eqz v10, :cond_74

    .line 367
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    cmpg-float v10, v9, v10

    if-gez v10, :cond_5c

    .line 368
    const/4 v9, 0x0

    .line 370
    :cond_5c
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    cmpl-float v10, v9, v10

    if-lez v10, :cond_74

    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v10, v12

    if-gez v14, :cond_74

    .line 371
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    sub-float/2addr v9, v10

    .line 372
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    mul-float v9, v9, v10

    .line 373
    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 376
    :cond_74
    float-to-double v10, v9

    .line 378
    .local v10, "p":D
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v12, v12, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 379
    .local v12, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    const/4 v13, 0x0

    .line 380
    .local v13, "start":F
    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 381
    .local v14, "end":F
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_82
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_af

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 382
    .local v3, "frame":Landroidx/constraintlayout/core/motion/MotionPaths;
    iget-object v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v1, :cond_aa

    .line 383
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_a1

    .line 384
    iget-object v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 385
    .end local v12    # "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .local v1, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    iget v12, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move v13, v12

    move-object v12, v1

    .end local v13    # "start":F
    .local v12, "start":F
    goto :goto_aa

    .line 387
    .end local v1    # "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .local v12, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .restart local v13    # "start":F
    :cond_a1
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 388
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move v14, v1

    .line 392
    .end local v3    # "frame":Landroidx/constraintlayout/core/motion/MotionPaths;
    :cond_aa
    :goto_aa
    move/from16 v1, p2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_82

    .line 394
    :cond_af
    if-eqz v12, :cond_cc

    .line 395
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 396
    const/high16 v14, 0x3f800000    # 1.0f

    .line 398
    :cond_b9
    sub-float v1, v9, v13

    sub-float v3, v14, v13

    div-float/2addr v1, v3

    .line 399
    .local v1, "offset":F
    move v15, v2

    .end local v2    # "mils":F
    .local v15, "mils":F
    float-to-double v2, v1

    invoke-virtual {v12, v2, v3}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 400
    sub-float v2, v14, v13

    mul-float v2, v2, v1

    add-float/2addr v2, v13

    float-to-double v10, v2

    goto :goto_cd

    .line 394
    .end local v1    # "offset":F
    .end local v15    # "mils":F
    .restart local v2    # "mils":F
    :cond_cc
    move v15, v2

    .line 404
    .end local v2    # "mils":F
    .restart local v15    # "mils":F
    :goto_cd
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v1, v10, v11, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 405
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v1, :cond_e7

    .line 406
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    array-length v1, v1

    if-lez v1, :cond_e7

    .line 407
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v1, v10, v11, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 410
    :cond_e7
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    mul-int/lit8 v0, v8, 0x2

    move-object/from16 v16, v4

    move-object/from16 v4, p1

    .end local v4    # "trans_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .local v16, "trans_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    invoke-virtual {v1, v2, v3, v4, v0}, Landroidx/constraintlayout/core/motion/MotionPaths;->getBounds([I[D[FI)V

    .line 364
    .end local v9    # "position":F
    .end local v10    # "p":D
    .end local v12    # "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .end local v13    # "start":F
    .end local v14    # "end":F
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v15

    move-object/from16 v4, v16

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_4a

    .line 412
    .end local v8    # "i":I
    .end local v15    # "mils":F
    .end local v16    # "trans_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .restart local v2    # "mils":F
    .restart local v4    # "trans_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :cond_103
    return-void
.end method

.method buildKeyBounds([F[I)I
    .registers 11
    .param p1, "keyBounds"    # [F
    .param p2, "mode"    # [I

    .line 510
    const/4 v0, 0x0

    if-eqz p1, :cond_49

    .line 511
    const/4 v1, 0x0

    .line 512
    .local v1, "count":I
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v2

    .line 513
    .local v2, "time":[D
    if-eqz p2, :cond_29

    .line 514
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 515
    .local v4, "keyFrame":Landroidx/constraintlayout/core/motion/MotionPaths;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .local v5, "count":I
    iget v6, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    aput v6, p2, v1

    .line 516
    .end local v4    # "keyFrame":Landroidx/constraintlayout/core/motion/MotionPaths;
    move v1, v5

    goto :goto_14

    .line 517
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_28
    const/4 v1, 0x0

    .line 520
    :cond_29
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    array-length v4, v2

    if-ge v3, v4, :cond_46

    .line 521
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v4, v4, v0

    aget-wide v5, v2, v3

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 522
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->getBounds([I[D[FI)V

    .line 523
    add-int/lit8 v1, v1, 0x2

    .line 520
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 525
    .end local v3    # "i":I
    :cond_46
    div-int/lit8 v0, v1, 0x2

    return v0

    .line 527
    .end local v1    # "count":I
    .end local v2    # "time":[D
    :cond_49
    return v0
.end method

.method public buildKeyFrames([F[I[I)I
    .registers 15
    .param p1, "keyFrames"    # [F
    .param p2, "mode"    # [I
    .param p3, "pos"    # [I

    .line 484
    const/4 v0, 0x0

    if-eqz p1, :cond_6f

    .line 485
    const/4 v1, 0x0

    .line 486
    .local v1, "count":I
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v2

    .line 487
    .local v2, "time":[D
    if-eqz p2, :cond_29

    .line 488
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 489
    .local v4, "keyFrame":Landroidx/constraintlayout/core/motion/MotionPaths;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .local v5, "count":I
    iget v6, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    aput v6, p2, v1

    .line 490
    .end local v4    # "keyFrame":Landroidx/constraintlayout/core/motion/MotionPaths;
    move v1, v5

    goto :goto_14

    .line 491
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_28
    const/4 v1, 0x0

    .line 493
    :cond_29
    if-eqz p3, :cond_4b

    .line 494
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 495
    .restart local v4    # "keyFrame":Landroidx/constraintlayout/core/motion/MotionPaths;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .restart local v5    # "count":I
    const/high16 v6, 0x42c80000    # 100.0f

    iget v7, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    mul-float v7, v7, v6

    float-to-int v6, v7

    aput v6, p3, v1

    .line 496
    .end local v4    # "keyFrame":Landroidx/constraintlayout/core/motion/MotionPaths;
    move v1, v5

    goto :goto_31

    .line 497
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_4a
    const/4 v1, 0x0

    .line 499
    :cond_4b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4c
    array-length v4, v2

    if-ge v3, v4, :cond_6c

    .line 500
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v4, v4, v0

    aget-wide v5, v2, v3

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 501
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    aget-wide v5, v2, v3

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v8, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    move-object v9, p1

    move v10, v1

    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    .line 502
    add-int/lit8 v1, v1, 0x2

    .line 499
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 504
    .end local v3    # "i":I
    :cond_6c
    div-int/lit8 v0, v1, 0x2

    return v0

    .line 506
    .end local v1    # "count":I
    .end local v2    # "time":[D
    :cond_6f
    return v0
.end method

.method public buildPath([FI)V
    .registers 27
    .param p1, "points"    # [F
    .param p2, "pointCount"    # I

    .line 271
    move-object/from16 v0, p0

    move/from16 v1, p2

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    .line 272
    .local v2, "mils":F
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v5, "translationX"

    const/4 v6, 0x0

    if-nez v4, :cond_15

    move-object v4, v6

    goto :goto_1d

    :cond_15
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 273
    .local v4, "trans_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :goto_1d
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v8, "translationY"

    if-nez v7, :cond_26

    move-object v7, v6

    goto :goto_2e

    :cond_26
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 274
    .local v7, "trans_y":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :goto_2e
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-nez v9, :cond_34

    move-object v5, v6

    goto :goto_3c

    :cond_34
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 275
    .local v5, "osc_x":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :goto_3c
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-nez v9, :cond_41

    goto :goto_49

    :cond_41
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 277
    .local v6, "osc_y":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :goto_49
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4a
    if-ge v8, v1, :cond_13f

    .line 278
    int-to-float v9, v8

    mul-float v9, v9, v2

    .line 279
    .local v9, "position":F
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    cmpl-float v10, v10, v3

    if-eqz v10, :cond_74

    .line 280
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    cmpg-float v10, v9, v10

    if-gez v10, :cond_5c

    .line 281
    const/4 v9, 0x0

    .line 283
    :cond_5c
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    cmpl-float v10, v9, v10

    if-lez v10, :cond_74

    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v10, v12

    if-gez v14, :cond_74

    .line 284
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    sub-float/2addr v9, v10

    .line 285
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    mul-float v9, v9, v10

    .line 286
    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 289
    :cond_74
    float-to-double v10, v9

    .line 291
    .local v10, "p":D
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v12, v12, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 292
    .local v12, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    const/4 v13, 0x0

    .line 293
    .local v13, "start":F
    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 294
    .local v14, "end":F
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_82
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_af

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 295
    .local v3, "frame":Landroidx/constraintlayout/core/motion/MotionPaths;
    iget-object v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v1, :cond_aa

    .line 296
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_a1

    .line 297
    iget-object v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 298
    .end local v12    # "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .local v1, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    iget v12, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move v13, v12

    move-object v12, v1

    .end local v13    # "start":F
    .local v12, "start":F
    goto :goto_aa

    .line 300
    .end local v1    # "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .local v12, "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .restart local v13    # "start":F
    :cond_a1
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 301
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move v14, v1

    .line 305
    .end local v3    # "frame":Landroidx/constraintlayout/core/motion/MotionPaths;
    :cond_aa
    :goto_aa
    move/from16 v1, p2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_82

    .line 307
    :cond_af
    if-eqz v12, :cond_cc

    .line 308
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 309
    const/high16 v14, 0x3f800000    # 1.0f

    .line 311
    :cond_b9
    sub-float v1, v9, v13

    sub-float v3, v14, v13

    div-float/2addr v1, v3

    .line 312
    .local v1, "offset":F
    move v15, v2

    .end local v2    # "mils":F
    .local v15, "mils":F
    float-to-double v2, v1

    invoke-virtual {v12, v2, v3}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 313
    sub-float v2, v14, v13

    mul-float v2, v2, v1

    add-float/2addr v2, v13

    float-to-double v10, v2

    goto :goto_cd

    .line 307
    .end local v1    # "offset":F
    .end local v15    # "mils":F
    .restart local v2    # "mils":F
    :cond_cc
    move v15, v2

    .line 317
    .end local v2    # "mils":F
    .restart local v15    # "mils":F
    :goto_cd
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v1, v10, v11, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 318
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v1, :cond_e7

    .line 319
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    array-length v1, v1

    if-lez v1, :cond_e7

    .line 320
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v1, v10, v11, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 323
    :cond_e7
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    mul-int/lit8 v23, v8, 0x2

    move-object/from16 v17, v1

    move-wide/from16 v18, v10

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, p1

    invoke-virtual/range {v17 .. v23}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    .line 325
    if-eqz v5, :cond_10a

    .line 326
    mul-int/lit8 v1, v8, 0x2

    aget v2, p1, v1

    invoke-virtual {v5, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, p1, v1

    goto :goto_117

    .line 327
    :cond_10a
    if-eqz v4, :cond_117

    .line 328
    mul-int/lit8 v1, v8, 0x2

    aget v2, p1, v1

    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, p1, v1

    .line 330
    :cond_117
    :goto_117
    if-eqz v6, :cond_127

    .line 331
    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v2, p1, v1

    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, p1, v1

    goto :goto_136

    .line 332
    :cond_127
    if-eqz v7, :cond_136

    .line 333
    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v2, p1, v1

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, p1, v1

    .line 277
    .end local v9    # "position":F
    .end local v10    # "p":D
    .end local v12    # "easing":Landroidx/constraintlayout/core/motion/utils/Easing;
    .end local v13    # "start":F
    .end local v14    # "end":F
    :cond_136
    :goto_136
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p2

    move v2, v15

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_4a

    .line 336
    .end local v8    # "i":I
    .end local v15    # "mils":F
    .restart local v2    # "mils":F
    :cond_13f
    return-void
.end method

.method public buildRect(F[FI)V
    .registers 8
    .param p1, "p"    # F
    .param p2, "path"    # [F
    .param p3, "offset"    # I

    .line 545
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    move-result p1

    .line 546
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v1, p1

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 547
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v0, v1, v2, p2, p3}, Landroidx/constraintlayout/core/motion/MotionPaths;->getRect([I[D[FI)V

    .line 548
    return-void
.end method

.method buildRectangles([FI)V
    .registers 10
    .param p1, "path"    # [F
    .param p2, "pointCount"    # I

    .line 551
    add-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 552
    .local v1, "mils":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, p2, :cond_2a

    .line 553
    int-to-float v2, v0

    mul-float v2, v2, v1

    .line 554
    .local v2, "position":F
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    move-result v2

    .line 555
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    float-to-double v4, v2

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 556
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    mul-int/lit8 v6, v0, 0x8

    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/core/motion/MotionPaths;->getRect([I[D[FI)V

    .line 552
    .end local v2    # "position":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 558
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method endTrigger(Z)V
    .registers 2
    .param p1, "start"    # Z

    .line 1207
    return-void
.end method

.method public getAnimateRelativeTo()I
    .registers 2

    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    return v0
.end method

.method getAttributeValues(Ljava/lang/String;[FI)I
    .registers 8
    .param p1, "attributeType"    # Ljava/lang/String;
    .param p2, "points"    # [F
    .param p3, "pointCount"    # I

    .line 533
    add-int/lit8 v0, p3, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 534
    .local v1, "mils":F
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 535
    .local v0, "spline":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    if-nez v0, :cond_12

    .line 536
    const/4 v2, -0x1

    return v2

    .line 538
    :cond_12
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_13
    array-length v3, p2

    if-ge v2, v3, :cond_25

    .line 539
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    div-int v3, v2, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v3

    aput v3, p2, v2

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 541
    .end local v2    # "j":I
    :cond_25
    array-length v2, p2

    return v2
.end method

.method public getCenter(D[F[F)V
    .registers 16
    .param p1, "p"    # D
    .param p3, "pos"    # [F
    .param p4, "vel"    # [F

    .line 252
    const/4 v0, 0x4

    new-array v9, v0, [D

    .line 253
    .local v9, "position":[D
    new-array v10, v0, [D

    .line 254
    .local v10, "velocity":[D
    new-array v0, v0, [I

    .line 255
    .local v0, "temp":[I
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 256
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, v10}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 257
    const/4 v1, 0x0

    invoke-static {p4, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 258
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    move-wide v2, p1

    move-object v5, v9

    move-object v6, p3

    move-object v7, v10

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[F[D[F)V

    .line 259
    return-void
.end method

.method public getCenterX()F
    .registers 2

    .line 244
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurrentCenterX:F

    return v0
.end method

.method public getCenterY()F
    .registers 2

    .line 248
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurrentCenterY:F

    return v0
.end method

.method getDpDt(FFF[F)V
    .registers 26
    .param p1, "position"    # F
    .param p2, "locationX"    # F
    .param p3, "locationY"    # F
    .param p4, "mAnchorDpDt"    # [F

    .line 1379
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    move/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    move-result v1

    .line 1381
    .end local p1    # "position":F
    .local v1, "position":F
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v3, 0x0

    if-eqz v2, :cond_7c

    .line 1382
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v2, v2, v3

    float-to-double v4, v1

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    invoke-virtual {v2, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1383
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v2, v2, v3

    float-to-double v4, v1

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v2, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 1384
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    aget v2, v2, v3

    .line 1385
    .local v2, "v":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    array-length v4, v4

    if-ge v3, v4, :cond_39

    .line 1386
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    aget-wide v5, v4, v3

    float-to-double v7, v2

    mul-double v5, v5, v7

    aput-wide v5, v4, v3

    .line 1385
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 1389
    .end local v3    # "i":I
    :cond_39
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v3, :cond_64

    .line 1390
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    array-length v3, v3

    if-lez v3, :cond_63

    .line 1391
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v4, v1

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 1392
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v4, v1

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1393
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v7 .. v13}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 1395
    :cond_63
    return-void

    .line 1397
    :cond_64
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 1398
    return-void

    .line 1401
    .end local v2    # "v":F
    :cond_7c
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    sub-float/2addr v2, v4

    .line 1402
    .local v2, "dleft":F
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    sub-float/2addr v4, v5

    .line 1403
    .local v4, "dTop":F
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    sub-float/2addr v5, v6

    .line 1404
    .local v5, "dWidth":F
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v7, v7, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    sub-float/2addr v6, v7

    .line 1405
    .local v6, "dHeight":F
    add-float v7, v2, v5

    .line 1406
    .local v7, "dRight":F
    add-float v8, v4, v6

    .line 1407
    .local v8, "dBottom":F
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, p2

    mul-float v10, v10, v2

    mul-float v11, v7, p2

    add-float/2addr v10, v11

    aput v10, p4, v3

    .line 1408
    sub-float v9, v9, p3

    mul-float v9, v9, v4

    mul-float v3, v8, p3

    add-float/2addr v9, v3

    const/4 v3, 0x1

    aput v9, p4, v3

    .line 1409
    return-void
.end method

.method public getDrawPath()I
    .registers 5

    .line 1492
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 1493
    .local v0, "mode":I
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 1494
    .local v2, "keyFrame":Landroidx/constraintlayout/core/motion/MotionPaths;
    iget v3, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1495
    .end local v2    # "keyFrame":Landroidx/constraintlayout/core/motion/MotionPaths;
    goto :goto_a

    .line 1496
    :cond_1d
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1497
    return v0
.end method

.method public getFinalHeight()F
    .registers 2

    .line 224
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    return v0
.end method

.method public getFinalWidth()F
    .registers 2

    .line 215
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    return v0
.end method

.method public getFinalX()F
    .registers 2

    .line 178
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    return v0
.end method

.method public getFinalY()F
    .registers 2

    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1628
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyFrame(I)Landroidx/constraintlayout/core/motion/MotionPaths;
    .registers 3
    .param p1, "i"    # I

    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/motion/MotionPaths;

    return-object v0
.end method

.method public getKeyFrameInfo(I[I)I
    .registers 22
    .param p1, "type"    # I
    .param p2, "info"    # [I

    .line 1560
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 1561
    .local v2, "count":I
    const/4 v3, 0x0

    .line 1562
    .local v3, "cursor":I
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 1564
    .local v4, "pos":[F
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 1565
    .local v13, "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    iget v5, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    if-eq v5, v1, :cond_24

    const/4 v5, -0x1

    if-ne v1, v5, :cond_24

    .line 1566
    goto :goto_f

    .line 1568
    :cond_24
    move v14, v3

    .line 1569
    .local v14, "len":I
    const/4 v15, 0x0

    aput v15, p2, v3

    .line 1571
    add-int/lit8 v3, v3, 0x1

    iget v5, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    aput v5, p2, v3

    .line 1572
    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    iget v5, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    aput v5, p2, v3

    .line 1574
    iget v5, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v11, v5, v6

    .line 1575
    .local v11, "time":F
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v5, v5, v15

    float-to-double v6, v11

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 1576
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    float-to-double v6, v11

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    const/16 v17, 0x0

    move-object v10, v4

    move/from16 v18, v11

    .end local v11    # "time":F
    .local v18, "time":F
    move/from16 v11, v17

    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    .line 1577
    add-int/lit8 v3, v3, 0x1

    aget v5, v4, v15

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    aput v5, p2, v3

    .line 1578
    add-int/lit8 v3, v3, 0x1

    aget v5, v4, v16

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    aput v5, p2, v3

    .line 1579
    instance-of v5, v13, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    if-eqz v5, :cond_8d

    .line 1580
    move-object v5, v13

    check-cast v5, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 1581
    .local v5, "kp":Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
    add-int/lit8 v3, v3, 0x1

    iget v6, v5, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    aput v6, p2, v3

    .line 1583
    add-int/lit8 v3, v3, 0x1

    iget v6, v5, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    aput v6, p2, v3

    .line 1584
    add-int/lit8 v3, v3, 0x1

    iget v6, v5, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    aput v6, p2, v3

    .line 1586
    .end local v5    # "kp":Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
    :cond_8d
    add-int/lit8 v3, v3, 0x1

    .line 1587
    sub-int v5, v3, v14

    aput v5, p2, v14

    .line 1588
    nop

    .end local v13    # "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    .end local v18    # "time":F
    add-int/lit8 v2, v2, 0x1

    .line 1589
    goto/16 :goto_f

    .line 1591
    .end local v14    # "len":I
    :cond_98
    return v2
.end method

.method getKeyFrameParameter(IFF)F
    .registers 16
    .param p1, "type"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 562
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    sub-float/2addr v0, v1

    .line 563
    .local v0, "dx":F
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    sub-float/2addr v1, v2

    .line 564
    .local v1, "dy":F
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 565
    .local v2, "startCenterX":F
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 566
    .local v3, "startCenterY":F
    float-to-double v4, v0

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 567
    .local v4, "hypotenuse":F
    float-to-double v5, v4

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v9, v5, v7

    if-gez v9, :cond_3c

    .line 568
    const/high16 v5, 0x7fc00000    # Float.NaN

    return v5

    .line 571
    :cond_3c
    sub-float v5, p2, v2

    .line 572
    .local v5, "vx":F
    sub-float v6, p3, v3

    .line 573
    .local v6, "vy":F
    float-to-double v7, v5

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 574
    .local v7, "distFromStart":F
    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-nez v9, :cond_4d

    .line 575
    return v8

    .line 577
    :cond_4d
    mul-float v9, v5, v0

    mul-float v10, v6, v1

    add-float/2addr v9, v10

    .line 579
    .local v9, "pathDistance":F
    packed-switch p1, :pswitch_data_72

    .line 593
    return v8

    .line 591
    :pswitch_56
    div-float v8, v6, v1

    return v8

    .line 589
    :pswitch_59
    div-float v8, v5, v1

    return v8

    .line 587
    :pswitch_5c
    div-float v8, v6, v0

    return v8

    .line 585
    :pswitch_5f
    div-float v8, v5, v0

    return v8

    .line 583
    :pswitch_62
    mul-float v8, v4, v4

    mul-float v10, v9, v9

    sub-float/2addr v8, v10

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v8, v10

    return v8

    .line 581
    :pswitch_6e
    div-float v8, v9, v4

    return v8

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
    .end packed-switch
.end method

.method public getKeyFramePositions([I[F)I
    .registers 15
    .param p1, "type"    # [I
    .param p2, "pos"    # [F

    .line 1531
    const/4 v0, 0x0

    .line 1532
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1533
    .local v1, "count":I
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 1534
    .local v10, "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    add-int/lit8 v11, v0, 0x1

    .end local v0    # "i":I
    .local v11, "i":I
    iget v3, v10, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v4, v10, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    aput v3, p1, v0

    .line 1535
    iget v0, v10, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    .line 1536
    .local v0, "time":F
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    float-to-double v4, v0

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 1537
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    float-to-double v4, v0

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    move-object v8, p2

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    .line 1538
    nop

    .end local v0    # "time":F
    .end local v10    # "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    add-int/lit8 v1, v1, 0x2

    .line 1539
    move v0, v11

    goto :goto_8

    .line 1541
    .end local v11    # "i":I
    .local v0, "i":I
    :cond_42
    return v0
.end method

.method getPos(D)[D
    .registers 5
    .param p1, "position"    # D

    .line 339
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 340
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v0, :cond_1a

    .line 341
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    array-length v0, v0

    if-lez v0, :cond_1a

    .line 342
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 345
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    return-object v0
.end method

.method getPositionKeyframe(IIFF)Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
    .registers 16
    .param p1, "layoutWidth"    # I
    .param p2, "layoutHeight"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 463
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 464
    .local v0, "start":Landroidx/constraintlayout/core/motion/utils/FloatRect;
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 465
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 466
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    add-float/2addr v1, v2

    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 467
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    add-float/2addr v1, v2

    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    .line 468
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    move-object v8, v1

    .line 469
    .local v8, "end":Landroidx/constraintlayout/core/motion/utils/FloatRect;
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iput v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 470
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iput v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 471
    iget v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    add-float/2addr v1, v2

    iput v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 472
    iget v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    add-float/2addr v1, v2

    iput v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    .line 473
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 474
    .local v10, "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    instance-of v1, v10, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    if-eqz v1, :cond_71

    .line 475
    move-object v1, v10

    check-cast v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    move v2, p1

    move v3, p2

    move-object v4, v0

    move-object v5, v8

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->intersects(IILandroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 476
    move-object v1, v10

    check-cast v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    return-object v1

    .line 479
    .end local v10    # "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    :cond_71
    goto :goto_4d

    .line 480
    :cond_72
    const/4 v1, 0x0

    return-object v1
.end method

.method getPostLayoutDvDp(FIIFF[F)V
    .registers 35
    .param p1, "position"    # F
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "locationX"    # F
    .param p5, "locationY"    # F
    .param p6, "mAnchorDpDt"    # [F

    .line 1426
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    move/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    move-result v1

    .line 1428
    .end local p1    # "position":F
    .local v1, "position":F
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v3, "translationX"

    const/4 v4, 0x0

    if-nez v2, :cond_14

    move-object v2, v4

    goto :goto_1c

    :cond_14
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 1429
    .local v2, "trans_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :goto_1c
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v6, "translationY"

    if-nez v5, :cond_25

    move-object v5, v4

    goto :goto_2d

    :cond_25
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 1430
    .local v5, "trans_y":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :goto_2d
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const-string v8, "rotationZ"

    if-nez v7, :cond_35

    move-object v7, v4

    goto :goto_3d

    :cond_35
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 1431
    .local v7, "rotation":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :goto_3d
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const-string v10, "scaleX"

    if-nez v9, :cond_45

    move-object v9, v4

    goto :goto_4d

    :cond_45
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 1432
    .local v9, "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :goto_4d
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const-string v12, "scaleY"

    if-nez v11, :cond_55

    move-object v11, v4

    goto :goto_5d

    :cond_55
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 1434
    .local v11, "scale_y":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :goto_5d
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-nez v13, :cond_63

    move-object v3, v4

    goto :goto_6b

    :cond_63
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 1435
    .local v3, "osc_x":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :goto_6b
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-nez v13, :cond_71

    move-object v6, v4

    goto :goto_79

    :cond_71
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 1436
    .local v6, "osc_y":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :goto_79
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-nez v13, :cond_7f

    move-object v8, v4

    goto :goto_87

    :cond_7f
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 1437
    .local v8, "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :goto_87
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-nez v13, :cond_8d

    move-object v10, v4

    goto :goto_95

    :cond_8d
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 1438
    .local v10, "osc_sx":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :goto_95
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-nez v13, :cond_9a

    goto :goto_a2

    :cond_9a
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 1440
    .local v4, "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :goto_a2
    new-instance v12, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;

    invoke-direct {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;-><init>()V

    .line 1441
    .local v12, "vmat":Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    .line 1442
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 1443
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 1444
    invoke-virtual {v12, v9, v11, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 1445
    invoke-virtual {v12, v8, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 1446
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 1447
    invoke-virtual {v12, v10, v4, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 1448
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v13, :cond_102

    .line 1449
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    array-length v13, v13

    if-lez v13, :cond_f1

    .line 1450
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v14, v1

    move-object/from16 p1, v4

    .end local v4    # "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .local p1, "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v13, v14, v15, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 1451
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v13, v1

    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    invoke-virtual {v4, v13, v14, v15}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1452
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    move-object/from16 v16, v4

    move/from16 v17, p4

    move/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto :goto_f3

    .line 1449
    .end local p1    # "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .restart local v4    # "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :cond_f1
    move-object/from16 p1, v4

    .line 1454
    .end local v4    # "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .restart local p1    # "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :goto_f3
    move-object v13, v12

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p2

    move/from16 v17, p3

    move-object/from16 v18, p6

    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 1455
    return-void

    .line 1457
    .end local p1    # "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .restart local v4    # "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :cond_102
    move-object/from16 p1, v4

    .end local v4    # "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .restart local p1    # "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v13, 0x0

    if-eqz v4, :cond_16f

    .line 1458
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    invoke-direct {v0, v1, v4}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    move-result v1

    .line 1459
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v4, v4, v13

    float-to-double v14, v1

    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    invoke-virtual {v4, v14, v15, v13}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1460
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v13, 0x0

    aget-object v4, v4, v13

    float-to-double v14, v1

    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v4, v14, v15, v13}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 1461
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    const/4 v13, 0x0

    aget v4, v4, v13

    .line 1462
    .local v4, "v":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_12a
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    array-length v14, v14

    if-ge v13, v14, :cond_143

    .line 1463
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    aget-wide v15, v14, v13

    move-object/from16 v20, v8

    move-object/from16 v19, v9

    .end local v8    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .end local v9    # "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .local v19, "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .local v20, "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    float-to-double v8, v4

    mul-double v15, v15, v8

    aput-wide v15, v14, v13

    .line 1462
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v19

    move-object/from16 v8, v20

    goto :goto_12a

    .end local v19    # "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .end local v20    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .restart local v8    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .restart local v9    # "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :cond_143
    move-object/from16 v20, v8

    move-object/from16 v19, v9

    .line 1465
    .end local v8    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .end local v9    # "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .end local v13    # "i":I
    .restart local v19    # "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .restart local v20    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    move-object/from16 v21, v8

    move/from16 v22, p4

    move/from16 v23, p5

    move-object/from16 v24, p6

    move-object/from16 v25, v9

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    invoke-virtual/range {v21 .. v27}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 1466
    move-object v13, v12

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p2

    move/from16 v17, p3

    move-object/from16 v18, p6

    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 1467
    return-void

    .line 1471
    .end local v4    # "v":F
    .end local v19    # "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .end local v20    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .restart local v8    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .restart local v9    # "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :cond_16f
    move-object/from16 v20, v8

    move-object/from16 v19, v9

    .end local v8    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .end local v9    # "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .restart local v19    # "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .restart local v20    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v8, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    sub-float/2addr v4, v8

    .line 1472
    .local v4, "dleft":F
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v8, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v9, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    sub-float/2addr v8, v9

    .line 1473
    .local v8, "dTop":F
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v9, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v13, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    sub-float/2addr v9, v13

    .line 1474
    .local v9, "dWidth":F
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v13, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    sub-float v21, v13, v14

    .line 1475
    .local v21, "dHeight":F
    add-float v22, v4, v9

    .line 1476
    .local v22, "dRight":F
    add-float v23, v8, v21

    .line 1477
    .local v23, "dBottom":F
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v14, v13, p4

    mul-float v14, v14, v4

    mul-float v15, v22, p4

    add-float/2addr v14, v15

    const/4 v15, 0x0

    aput v14, p6, v15

    .line 1478
    sub-float v13, v13, p5

    mul-float v13, v13, v8

    mul-float v14, v23, p5

    add-float/2addr v13, v14

    const/4 v14, 0x1

    aput v13, p6, v14

    .line 1480
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    .line 1481
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 1482
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 1483
    move-object/from16 v15, v19

    .end local v19    # "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .local v15, "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    invoke-virtual {v12, v15, v11, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 1484
    move-object/from16 v14, v20

    .end local v20    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .local v14, "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    invoke-virtual {v12, v14, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 1485
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 1486
    move-object/from16 v13, p1

    .end local p1    # "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .local v13, "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    invoke-virtual {v12, v10, v13, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 1487
    move-object/from16 v19, v13

    .end local v13    # "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .local v19, "osc_sy":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    move-object v13, v12

    .end local v14    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    .restart local v20    # "osc_r":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    move/from16 v14, p4

    move-object/from16 v24, v15

    .end local v15    # "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .local v24, "scale_x":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    move/from16 v15, p5

    move/from16 v16, p2

    move/from16 v17, p3

    move-object/from16 v18, p6

    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 1488
    return-void
.end method

.method public getStartHeight()F
    .registers 2

    .line 206
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    return v0
.end method

.method public getStartWidth()F
    .registers 2

    .line 197
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    return v0
.end method

.method public getStartX()F
    .registers 2

    .line 159
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    return v0
.end method

.method public getStartY()F
    .registers 2

    .line 169
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    return v0
.end method

.method public getTransformPivotTarget()I
    .registers 2

    .line 126
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    return v0
.end method

.method public getView()Landroidx/constraintlayout/core/motion/MotionWidget;
    .registers 2

    .line 979
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    return-object v0
.end method

.method public interpolate(Landroidx/constraintlayout/core/motion/MotionWidget;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .registers 23
    .param p1, "child"    # Landroidx/constraintlayout/core/motion/MotionWidget;
    .param p2, "global_position"    # F
    .param p3, "time"    # J
    .param p5, "keyCache"    # Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 1225
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    .line 1226
    .local v9, "timeAnimation":Z
    const/4 v1, 0x0

    move/from16 v10, p2

    invoke-direct {v0, v10, v1}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    move-result v1

    .line 1228
    .local v1, "position":F
    iget v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, -0x1

    if-eq v2, v13, :cond_51

    .line 1229
    move v2, v1

    .line 1230
    .local v2, "pin":F
    iget v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    int-to-float v3, v3

    div-float v3, v12, v3

    .line 1231
    .local v3, "steps":F
    div-float v4, v1, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v3

    .line 1232
    .local v4, "jump":F
    rem-float v5, v1, v3

    div-float/2addr v5, v3

    .line 1234
    .local v5, "section":F
    iget v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_34

    .line 1235
    iget v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    add-float/2addr v6, v5

    rem-float v5, v6, v12

    .line 1237
    :cond_34
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    if-eqz v6, :cond_3f

    .line 1238
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    invoke-interface {v6, v5}, Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;->getInterpolation(F)F

    move-result v5

    goto :goto_4b

    .line 1240
    :cond_3f
    float-to-double v6, v5

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpl-double v16, v6, v14

    if-lez v16, :cond_49

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_4a

    :cond_49
    const/4 v6, 0x0

    :goto_4a
    move v5, v6

    .line 1242
    :goto_4b
    mul-float v6, v5, v3

    add-float v1, v6, v4

    move v14, v1

    goto :goto_52

    .line 1228
    .end local v2    # "pin":F
    .end local v3    # "steps":F
    .end local v4    # "jump":F
    .end local v5    # "section":F
    :cond_51
    move v14, v1

    .line 1245
    .end local v1    # "position":F
    .local v14, "position":F
    :goto_52
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v1, :cond_70

    .line 1246
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 1247
    .local v2, "aSpline":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    invoke-virtual {v2, v8, v14}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setProperty(Landroidx/constraintlayout/core/motion/utils/TypedValues;F)V

    .line 1248
    .end local v2    # "aSpline":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    goto :goto_60

    .line 1262
    :cond_70
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v15, 0x0

    if-eqz v1, :cond_180

    .line 1263
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v1, v1, v15

    float-to-double v2, v14

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 1264
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v1, v1, v15

    float-to-double v2, v14

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1265
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v1, :cond_a2

    .line 1266
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    array-length v1, v1

    if-lez v1, :cond_a2

    .line 1267
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v2, v14

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 1268
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    float-to-double v2, v14

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1272
    :cond_a2
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    if-nez v1, :cond_b5

    .line 1273
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    const/4 v7, 0x0

    move v2, v14

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->setView(FLandroidx/constraintlayout/core/motion/MotionWidget;[I[D[D[D)V

    .line 1275
    :cond_b5
    iget v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    if-eq v1, v13, :cond_117

    .line 1276
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    if-nez v1, :cond_c9

    .line 1277
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getParent()Landroidx/constraintlayout/core/motion/MotionWidget;

    move-result-object v1

    .line 1278
    .local v1, "layout":Landroidx/constraintlayout/core/motion/MotionWidget;
    iget v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->findViewById(I)Landroidx/constraintlayout/core/motion/MotionWidget;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 1280
    .end local v1    # "layout":Landroidx/constraintlayout/core/motion/MotionWidget;
    :cond_c9
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    if-eqz v1, :cond_117

    .line 1281
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 1282
    .local v1, "cy":F
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 1283
    .local v3, "cx":F
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_117

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_117

    .line 1284
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v3, v2

    .line 1285
    .local v2, "px":F
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 1286
    .local v4, "py":F
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotX(F)V

    .line 1287
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotY(F)V

    .line 1306
    .end local v1    # "cy":F
    .end local v2    # "px":F
    .end local v3    # "cx":F
    .end local v4    # "py":F
    :cond_117
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_118
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    array-length v2, v2

    if-ge v1, v2, :cond_13f

    .line 1307
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v2, v2, v1

    .line 1308
    .local v2, "spline":Landroidx/constraintlayout/core/motion/utils/CurveFit;
    float-to-double v3, v14

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 1310
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/CustomVariable;

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    invoke-virtual {v3, v8, v4}, Landroidx/constraintlayout/core/motion/CustomVariable;->setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V

    .line 1306
    .end local v2    # "spline":Landroidx/constraintlayout/core/motion/utils/CurveFit;
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    .line 1312
    .end local v1    # "i":I
    :cond_13f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v1, :cond_16b

    .line 1313
    cmpg-float v1, v14, v11

    if-gtz v1, :cond_151

    .line 1314
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    goto :goto_16b

    .line 1315
    :cond_151
    cmpl-float v1, v14, v12

    if-ltz v1, :cond_15d

    .line 1316
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    goto :goto_16b

    .line 1317
    :cond_15d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    if-eq v1, v2, :cond_16b

    .line 1318
    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    .line 1322
    :cond_16b
    :goto_16b
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    if-eqz v1, :cond_1d6

    .line 1323
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_170
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    array-length v2, v2

    if-ge v1, v2, :cond_17f

    .line 1324
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    aget-object v2, v2, v1

    invoke-virtual {v2, v14, v8}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->conditionallyFire(FLandroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 1323
    add-int/lit8 v1, v1, 0x1

    goto :goto_170

    .end local v1    # "i":I
    :cond_17f
    goto :goto_1d6

    .line 1330
    :cond_180
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v14

    add-float/2addr v1, v2

    .line 1331
    .local v1, "float_l":F
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v14

    add-float/2addr v2, v3

    .line 1332
    .local v2, "float_t":F
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v14

    add-float/2addr v3, v4

    .line 1333
    .local v3, "float_width":F
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    sub-float/2addr v5, v6

    mul-float v5, v5, v14

    add-float/2addr v4, v5

    .line 1334
    .local v4, "float_height":F
    const/high16 v5, 0x3f000000    # 0.5f

    add-float v6, v1, v5

    float-to-int v6, v6

    .line 1335
    .local v6, "l":I
    add-float v7, v2, v5

    float-to-int v7, v7

    .line 1336
    .local v7, "t":I
    add-float v11, v1, v5

    add-float/2addr v11, v3

    float-to-int v11, v11

    .line 1337
    .local v11, "r":I
    add-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 1338
    .local v5, "b":I
    sub-int v12, v11, v6

    .line 1339
    .local v12, "width":I
    sub-int v13, v5, v7

    .line 1350
    .local v13, "height":I
    invoke-virtual {v8, v6, v7, v11, v5}, Landroidx/constraintlayout/core/motion/MotionWidget;->layout(IIII)V

    .line 1354
    .end local v1    # "float_l":F
    .end local v2    # "float_t":F
    .end local v3    # "float_width":F
    .end local v4    # "float_height":F
    .end local v5    # "b":I
    .end local v6    # "l":I
    .end local v7    # "t":I
    .end local v11    # "r":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    :cond_1d6
    :goto_1d6
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-eqz v1, :cond_20c

    .line 1355
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1e4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 1356
    .local v12, "osc":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    instance-of v1, v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    if-eqz v1, :cond_208

    .line 1357
    move-object v1, v12

    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    aget-wide v4, v2, v15

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    const/4 v3, 0x1

    aget-wide v6, v2, v3

    move-object/from16 v2, p1

    move v3, v14

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;->setPathRotate(Landroidx/constraintlayout/core/motion/MotionWidget;FDD)V

    goto :goto_20b

    .line 1360
    :cond_208
    invoke-virtual {v12, v8, v14}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V

    .line 1362
    .end local v12    # "osc":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :goto_20b
    goto :goto_1e4

    .line 1366
    :cond_20c
    return v15
.end method

.method name()Ljava/lang/String;
    .registers 2

    .line 1506
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method positionKeyframe(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;FF[Ljava/lang/String;[F)V
    .registers 18
    .param p1, "view"    # Landroidx/constraintlayout/core/motion/MotionWidget;
    .param p2, "key"    # Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "attribute"    # [Ljava/lang/String;
    .param p6, "value"    # [F

    .line 1510
    move-object v0, p0

    new-instance v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 1511
    .local v1, "start":Landroidx/constraintlayout/core/motion/utils/FloatRect;
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iput v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 1512
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iput v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 1513
    iget v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    add-float/2addr v2, v3

    iput v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 1514
    iget v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    add-float/2addr v2, v3

    iput v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    .line 1515
    new-instance v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    invoke-direct {v2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    move-object v10, v2

    .line 1516
    .local v10, "end":Landroidx/constraintlayout/core/motion/utils/FloatRect;
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iput v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 1517
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iput v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 1518
    iget v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    add-float/2addr v2, v3

    iput v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 1519
    iget v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    add-float/2addr v2, v3

    iput v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    .line 1520
    move-object v2, p2

    move-object v3, p1

    move-object v4, v1

    move-object v5, v10

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    .line 1521
    return-void
.end method

.method rotate(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/utils/Rect;III)V
    .registers 10
    .param p1, "rect"    # Landroidx/constraintlayout/core/motion/utils/Rect;
    .param p2, "out"    # Landroidx/constraintlayout/core/motion/utils/Rect;
    .param p3, "rotation"    # I
    .param p4, "preHeight"    # I
    .param p5, "preWidth"    # I

    .line 1028
    packed-switch p3, :pswitch_data_d4

    goto/16 :goto_d2

    .line 1047
    :pswitch_5
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    add-int/2addr v0, v1

    .line 1048
    .local v0, "cx":I
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    add-int/2addr v1, v2

    .line 1049
    .local v1, "cy":I
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 1050
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 1051
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 1052
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 1053
    goto/16 :goto_d2

    .line 1055
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :pswitch_38
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    add-int/2addr v0, v1

    .line 1056
    .restart local v0    # "cx":I
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 1057
    .restart local v1    # "cy":I
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    add-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 1058
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p5, v2

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 1059
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 1060
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    goto :goto_d2

    .line 1031
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :pswitch_6e
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    add-int/2addr v0, v1

    .line 1032
    .restart local v0    # "cx":I
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 1033
    .restart local v1    # "cy":I
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 1034
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 1035
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 1036
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 1037
    goto :goto_d2

    .line 1039
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :pswitch_a0
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    add-int/2addr v0, v1

    .line 1040
    .restart local v0    # "cx":I
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 1041
    .restart local v1    # "cy":I
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v2

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 1042
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p5, v2

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 1043
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 1044
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 1045
    nop

    .line 1063
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :goto_d2
    return-void

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_6e
        :pswitch_38
        :pswitch_5
    .end packed-switch
.end method

.method setBothStates(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 7
    .param p1, "v"    # Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 1137
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 1138
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 1139
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    .line 1140
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 1141
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 1142
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 1143
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 1144
    return-void
.end method

.method public setDrawPath(I)V
    .registers 3
    .param p1, "debugMode"    # I

    .line 1501
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iput p1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 1502
    return-void
.end method

.method public setEnd(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 7
    .param p1, "mw"    # Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 991
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 992
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 993
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/Motion;->readView(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 994
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 995
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 996
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 997
    return-void
.end method

.method public setPathMotionArc(I)V
    .registers 2
    .param p1, "arc"    # I

    .line 630
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    .line 631
    return-void
.end method

.method public setStart(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 7
    .param p1, "mw"    # Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 983
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 984
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 985
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 986
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 987
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 988
    return-void
.end method

.method public setStartState(Landroidx/constraintlayout/core/motion/utils/ViewState;Landroidx/constraintlayout/core/motion/MotionWidget;III)V
    .registers 12
    .param p1, "rect"    # Landroidx/constraintlayout/core/motion/utils/ViewState;
    .param p2, "v"    # Landroidx/constraintlayout/core/motion/MotionWidget;
    .param p3, "rotation"    # I
    .param p4, "preWidth"    # I
    .param p5, "preHeight"    # I

    .line 1000
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 1001
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 1003
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

    .line 1004
    .local v0, "r":Landroidx/constraintlayout/core/motion/utils/Rect;
    packed-switch p3, :pswitch_data_92

    goto :goto_75

    .line 1006
    :pswitch_12
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    add-int/2addr v1, v2

    .line 1007
    .local v1, "cx":I
    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    add-int/2addr v2, v3

    .line 1008
    .local v2, "cy":I
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result v3

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 1009
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 1010
    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 1011
    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 1012
    goto :goto_75

    .line 1014
    .end local v1    # "cx":I
    .end local v2    # "cy":I
    :pswitch_44
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    add-int/2addr v1, v2

    .line 1015
    .restart local v1    # "cx":I
    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    add-int/2addr v2, v3

    .line 1016
    .restart local v2    # "cy":I
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 1017
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result v3

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p4, v3

    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 1018
    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 1019
    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 1022
    .end local v1    # "cx":I
    .end local v2    # "cy":I
    :goto_75
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 1023
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->rotation:F

    invoke-virtual {v1, v0, p2, p3, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/MotionWidget;IF)V

    .line 1024
    return-void

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_44
        :pswitch_12
    .end packed-switch
.end method

.method public setTransformPivotTarget(I)V
    .registers 3
    .param p1, "transformPivotTarget"    # I

    .line 135
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 137
    return-void
.end method

.method public setValue(IF)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 1609
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(II)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 1596
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_c

    .line 1604
    const/4 v0, 0x0

    return v0

    .line 1602
    :sswitch_6
    return v0

    .line 1598
    :sswitch_7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/Motion;->setPathMotionArc(I)V

    .line 1599
    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x1fd -> :sswitch_7
        0x2c0 -> :sswitch_6
    .end sparse-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1614
    const/16 v0, 0x2c1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_24

    .line 1615
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE_INTERPOLATOR  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1616
    const/4 v0, -0x1

    invoke-static {v0, p2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    .line 1618
    :cond_24
    return v1
.end method

.method public setValue(IZ)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .line 1623
    const/4 v0, 0x0

    return v0
.end method

.method public setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 2
    .param p1, "view"    # Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 975
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 976
    return-void
.end method

.method public setup(IIFJ)V
    .registers 35
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "transitionDuration"    # F
    .param p4, "currentTime"    # J

    .line 638
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 639
    .local v3, "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 640
    .local v4, "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 641
    .local v5, "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 642
    .local v6, "cycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 643
    .local v7, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 654
    .local v8, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    iget v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_29

    .line 655
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    iput v11, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 658
    :cond_29
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-virtual {v9, v11, v5}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V

    .line 664
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    if-eqz v9, :cond_9a

    .line 665
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 666
    .local v11, "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    if-eqz v12, :cond_6f

    .line 667
    move-object v12, v11

    check-cast v12, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 668
    .local v12, "keyPath":Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
    new-instance v15, Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    move-object/from16 v18, v13

    move-object v13, v15

    move-object/from16 v17, v14

    move/from16 v14, p1

    move-object v10, v15

    move/from16 v15, p2

    move-object/from16 v16, v12

    invoke-direct/range {v13 .. v18}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    invoke-direct {v0, v10}, Landroidx/constraintlayout/core/motion/Motion;->insertKey(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 669
    iget v10, v12, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    const/4 v13, -0x1

    if-eq v10, v13, :cond_6e

    .line 670
    iget v10, v12, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    iput v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 672
    .end local v12    # "keyPath":Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
    :cond_6e
    goto :goto_98

    :cond_6f
    instance-of v10, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    if-eqz v10, :cond_77

    .line 673
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_98

    .line 674
    :cond_77
    instance-of v10, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    if-eqz v10, :cond_7f

    .line 675
    invoke-virtual {v11, v4}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_98

    .line 676
    :cond_7f
    instance-of v10, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    if-eqz v10, :cond_92

    .line 677
    if-nez v8, :cond_8b

    .line 678
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v10

    .line 680
    :cond_8b
    move-object v10, v11

    check-cast v10, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 682
    :cond_92
    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setInterpolation(Ljava/util/HashMap;)V

    .line 683
    invoke-virtual {v11, v5}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    .line 685
    .end local v11    # "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    :goto_98
    const/4 v10, -0x1

    goto :goto_3a

    .line 690
    :cond_9a
    const/4 v9, 0x0

    if-eqz v8, :cond_a7

    .line 691
    new-array v10, v9, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    iput-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 695
    :cond_a7
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v10

    const-string v11, ","

    const-string v12, "CUSTOM,"

    const/4 v13, 0x1

    if-nez v10, :cond_1ae

    .line 696
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 697
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_bd
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_142

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 699
    .local v14, "attribute":Ljava/lang/String;
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_121

    .line 700
    new-instance v15, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    invoke-direct {v15}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    .line 701
    .local v15, "attrList":Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;
    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    aget-object v9, v16, v13

    .line 702
    .local v9, "customAttributeName":Ljava/lang/String;
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_e0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_116

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v3

    .end local v3    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v19, "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v3, v18

    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 703
    .local v3, "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    move-object/from16 v18, v8

    .end local v8    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .local v18, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    iget-object v8, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    if-nez v8, :cond_fb

    .line 704
    move-object/from16 v8, v18

    move-object/from16 v3, v19

    goto :goto_e0

    .line 706
    :cond_fb
    iget-object v8, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 707
    .local v8, "customAttribute":Landroidx/constraintlayout/core/motion/CustomVariable;
    if-eqz v8, :cond_10d

    .line 708
    move-object/from16 v20, v9

    .end local v9    # "customAttributeName":Ljava/lang/String;
    .local v20, "customAttributeName":Ljava/lang/String;
    iget v9, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    invoke-virtual {v15, v9, v8}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    goto :goto_10f

    .line 707
    .end local v20    # "customAttributeName":Ljava/lang/String;
    .restart local v9    # "customAttributeName":Ljava/lang/String;
    :cond_10d
    move-object/from16 v20, v9

    .line 710
    .end local v3    # "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    .end local v8    # "customAttribute":Landroidx/constraintlayout/core/motion/CustomVariable;
    .end local v9    # "customAttributeName":Ljava/lang/String;
    .restart local v20    # "customAttributeName":Ljava/lang/String;
    :goto_10f
    move-object/from16 v8, v18

    move-object/from16 v3, v19

    move-object/from16 v9, v20

    goto :goto_e0

    .line 711
    .end local v18    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .end local v19    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20    # "customAttributeName":Ljava/lang/String;
    .local v3, "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v8, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .restart local v9    # "customAttributeName":Ljava/lang/String;
    :cond_116
    move-object/from16 v19, v3

    move-object/from16 v18, v8

    move-object/from16 v20, v9

    .end local v3    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .end local v9    # "customAttributeName":Ljava/lang/String;
    .restart local v18    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .restart local v19    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "customAttributeName":Ljava/lang/String;
    invoke-static {v14, v15}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v3

    .line 712
    .end local v15    # "attrList":Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;
    .end local v20    # "customAttributeName":Ljava/lang/String;
    .local v3, "splineSets":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    goto :goto_129

    .line 713
    .end local v18    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .end local v19    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v3, "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    :cond_121
    move-object/from16 v19, v3

    move-object/from16 v18, v8

    .end local v3    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .restart local v18    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .restart local v19    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v14, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v3

    .line 715
    .local v3, "splineSets":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :goto_129
    if-nez v3, :cond_132

    .line 716
    move-object/from16 v8, v18

    move-object/from16 v3, v19

    const/4 v9, 0x0

    const/4 v13, 0x1

    goto :goto_bd

    .line 718
    :cond_132
    invoke-virtual {v3, v14}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    .line 719
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .end local v3    # "splineSets":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .end local v14    # "attribute":Ljava/lang/String;
    move-object/from16 v8, v18

    move-object/from16 v3, v19

    const/4 v9, 0x0

    const/4 v13, 0x1

    goto/16 :goto_bd

    .line 721
    .end local v18    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .end local v19    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v3, "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    :cond_142
    move-object/from16 v19, v3

    move-object/from16 v18, v8

    .end local v3    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .restart local v18    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .restart local v19    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_166

    .line 722
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_150
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_166

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 723
    .local v8, "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    instance-of v9, v8, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;

    if-eqz v9, :cond_165

    .line 724
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/motion/key/MotionKey;->addValues(Ljava/util/HashMap;)V

    .line 726
    .end local v8    # "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    :cond_165
    goto :goto_150

    .line 728
    :cond_166
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 729
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const/16 v9, 0x64

    invoke-virtual {v3, v8, v9}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 731
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_181
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 732
    .local v8, "spline":Ljava/lang/String;
    const/4 v9, 0x0

    .line 733
    .local v9, "curve":I
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a0

    .line 734
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 735
    .local v10, "boxedCurve":Ljava/lang/Integer;
    if-eqz v10, :cond_1a0

    .line 736
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 739
    .end local v10    # "boxedCurve":Ljava/lang/Integer;
    :cond_1a0
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 740
    .local v10, "splineSet":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    if-eqz v10, :cond_1ad

    .line 741
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    .line 743
    .end local v8    # "spline":Ljava/lang/String;
    .end local v9    # "curve":I
    .end local v10    # "splineSet":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :cond_1ad
    goto :goto_181

    .line 695
    .end local v18    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .end local v19    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v8, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    :cond_1ae
    move-object/from16 v19, v3

    move-object/from16 v18, v8

    .line 747
    .end local v3    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .restart local v18    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;>;"
    .restart local v19    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1b2
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29b

    .line 748
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-nez v3, :cond_1c3

    .line 749
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 751
    :cond_1c3
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_243

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 752
    .local v8, "attribute":Ljava/lang/String;
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1dc

    .line 753
    goto :goto_1c7

    .line 756
    :cond_1dc
    const/4 v9, 0x0

    .line 757
    .local v9, "splineSets":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_22c

    .line 758
    new-instance v10, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    invoke-direct {v10}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    .line 759
    .local v10, "attrList":Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    .line 760
    .local v13, "customAttributeName":Ljava/lang/String;
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1f5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_223

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 761
    .local v15, "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    move-object/from16 v20, v3

    iget-object v3, v15, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    if-nez v3, :cond_20a

    .line 762
    move-object/from16 v3, v20

    goto :goto_1f5

    .line 764
    :cond_20a
    iget-object v3, v15, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 765
    .local v3, "customAttribute":Landroidx/constraintlayout/core/motion/CustomVariable;
    if-eqz v3, :cond_21c

    .line 766
    move-object/from16 v21, v4

    .end local v4    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v21, "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v4, v15, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    invoke-virtual {v10, v4, v3}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    goto :goto_21e

    .line 765
    .end local v21    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_21c
    move-object/from16 v21, v4

    .line 768
    .end local v3    # "customAttribute":Landroidx/constraintlayout/core/motion/CustomVariable;
    .end local v4    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    .restart local v21    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_21e
    move-object/from16 v3, v20

    move-object/from16 v4, v21

    goto :goto_1f5

    .line 769
    .end local v21    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_223
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .end local v4    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v8, v10}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v3

    .line 770
    .end local v9    # "splineSets":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .end local v10    # "attrList":Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;
    .end local v13    # "customAttributeName":Ljava/lang/String;
    .local v3, "splineSets":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    goto :goto_234

    .line 771
    .end local v3    # "splineSets":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .end local v21    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "splineSets":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :cond_22c
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .end local v4    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v8, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v3

    .line 773
    .end local v9    # "splineSets":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .restart local v3    # "splineSets":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    :goto_234
    if-nez v3, :cond_23b

    .line 774
    move-object/from16 v3, v20

    move-object/from16 v4, v21

    goto :goto_1c7

    .line 776
    :cond_23b
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    .line 778
    .end local v3    # "splineSets":Landroidx/constraintlayout/core/motion/utils/SplineSet;
    .end local v8    # "attribute":Ljava/lang/String;
    move-object/from16 v3, v20

    move-object/from16 v4, v21

    goto :goto_1c7

    .line 780
    .end local v21    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_243
    move-object/from16 v21, v4

    .end local v4    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_268

    .line 781
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_268

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 782
    .local v4, "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    instance-of v8, v4, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    if-eqz v8, :cond_267

    .line 783
    move-object v8, v4

    check-cast v8, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    .line 785
    .end local v4    # "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    :cond_267
    goto :goto_24f

    .line 788
    :cond_268
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_272
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 789
    .local v4, "spline":Ljava/lang/String;
    const/4 v8, 0x0

    .line 790
    .local v8, "curve":I
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28f

    .line 791
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 793
    :cond_28f
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setup(I)V

    .line 794
    .end local v4    # "spline":Ljava/lang/String;
    .end local v8    # "curve":I
    goto :goto_272

    .line 747
    .end local v21    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v4, "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_29b
    move-object/from16 v21, v4

    .line 799
    .end local v4    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_29d
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    new-array v3, v3, [Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 800
    .local v3, "points":[Landroidx/constraintlayout/core/motion/MotionPaths;
    const/4 v8, 0x1

    .line 801
    .local v8, "count":I
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    const/4 v10, 0x0

    aput-object v9, v3, v10

    .line 802
    array-length v9, v3

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    aput-object v10, v3, v9

    .line 803
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2c5

    iget v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    sget v10, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    if-ne v9, v10, :cond_2c5

    .line 804
    const/4 v9, 0x0

    iput v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 806
    :cond_2c5
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2cb
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2dd

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 807
    .local v10, "point":Landroidx/constraintlayout/core/motion/MotionPaths;
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "count":I
    .local v11, "count":I
    aput-object v10, v3, v8

    .line 808
    .end local v10    # "point":Landroidx/constraintlayout/core/motion/MotionPaths;
    move v8, v11

    goto :goto_2cb

    .line 811
    .end local v11    # "count":I
    .restart local v8    # "count":I
    :cond_2dd
    const/16 v9, 0x12

    .line 812
    .local v9, "variables":I
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 813
    .local v10, "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v11, v11, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2f0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_321

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 814
    .local v13, "s":Ljava/lang/String;
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_320

    .line 815
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_320

    .line 816
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 818
    .end local v13    # "s":Ljava/lang/String;
    :cond_320
    goto :goto_2f0

    .line 820
    :cond_321
    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    iput-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 821
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    array-length v11, v11

    new-array v11, v11, [I

    iput-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    .line 822
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_334
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    array-length v12, v12

    if-ge v11, v12, :cond_36f

    .line 823
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    aget-object v12, v12, v11

    .line 824
    .local v12, "attributeName":Ljava/lang/String;
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    const/4 v14, 0x0

    aput v14, v13, v11

    .line 825
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_343
    array-length v14, v3

    if-ge v13, v14, :cond_36c

    .line 826
    aget-object v14, v3, v13

    iget-object v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_369

    .line 827
    aget-object v14, v3, v13

    iget-object v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 828
    .local v14, "attribute":Landroidx/constraintlayout/core/motion/CustomVariable;
    if-eqz v14, :cond_369

    .line 829
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    aget v20, v15, v11

    invoke-virtual {v14}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v22

    add-int v20, v20, v22

    aput v20, v15, v11

    .line 830
    goto :goto_36c

    .line 825
    .end local v14    # "attribute":Landroidx/constraintlayout/core/motion/CustomVariable;
    :cond_369
    add-int/lit8 v13, v13, 0x1

    goto :goto_343

    .line 822
    .end local v12    # "attributeName":Ljava/lang/String;
    .end local v13    # "j":I
    :cond_36c
    :goto_36c
    add-int/lit8 v11, v11, 0x1

    goto :goto_334

    .line 835
    .end local v11    # "i":I
    :cond_36f
    const/4 v11, 0x0

    aget-object v12, v3, v11

    iget v11, v12, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_379

    const/4 v11, 0x1

    goto :goto_37a

    :cond_379
    const/4 v11, 0x0

    .line 836
    .local v11, "arcMode":Z
    :goto_37a
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    array-length v12, v12

    add-int/2addr v12, v9

    new-array v12, v12, [Z

    .line 837
    .local v12, "mask":[Z
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_381
    array-length v14, v3

    if-ge v13, v14, :cond_393

    .line 838
    aget-object v14, v3, v13

    add-int/lit8 v15, v13, -0x1

    aget-object v15, v3, v15

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    invoke-virtual {v14, v15, v12, v4, v11}, Landroidx/constraintlayout/core/motion/MotionPaths;->different(Landroidx/constraintlayout/core/motion/MotionPaths;[Z[Ljava/lang/String;Z)V

    .line 837
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x2

    goto :goto_381

    .line 841
    .end local v13    # "i":I
    :cond_393
    const/4 v4, 0x0

    .line 842
    .end local v8    # "count":I
    .local v4, "count":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_395
    array-length v13, v12

    if-ge v8, v13, :cond_3a1

    .line 843
    aget-boolean v13, v12, v8

    if-eqz v13, :cond_39e

    .line 844
    add-int/lit8 v4, v4, 0x1

    .line 842
    :cond_39e
    add-int/lit8 v8, v8, 0x1

    goto :goto_395

    .line 848
    .end local v8    # "i":I
    :cond_3a1
    new-array v8, v4, [I

    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 849
    const/4 v8, 0x2

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 850
    .local v13, "varLen":I
    new-array v8, v13, [D

    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 851
    new-array v8, v13, [D

    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 853
    const/4 v4, 0x0

    .line 854
    const/4 v8, 0x1

    .restart local v8    # "i":I
    :goto_3b4
    array-length v14, v12

    if-ge v8, v14, :cond_3c5

    .line 855
    aget-boolean v14, v12, v8

    if-eqz v14, :cond_3c2

    .line 856
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    add-int/lit8 v15, v4, 0x1

    .end local v4    # "count":I
    .local v15, "count":I
    aput v8, v14, v4

    move v4, v15

    .line 854
    .end local v15    # "count":I
    .restart local v4    # "count":I
    :cond_3c2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b4

    .line 859
    .end local v8    # "i":I
    :cond_3c5
    array-length v8, v3

    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    array-length v14, v14

    const/4 v15, 0x2

    new-array v1, v15, [I

    const/4 v2, 0x1

    aput v14, v1, v2

    const/4 v2, 0x0

    aput v8, v1, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 860
    .local v1, "splineData":[[D
    array-length v2, v3

    new-array v2, v2, [D

    .line 862
    .local v2, "timePoint":[D
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3de
    array-length v14, v3

    if-ge v8, v14, :cond_3f8

    .line 863
    aget-object v14, v3, v8

    aget-object v15, v1, v8

    move/from16 v22, v4

    .end local v4    # "count":I
    .local v22, "count":I
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    invoke-virtual {v14, v15, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->fillStandard([D[I)V

    .line 864
    aget-object v4, v3, v8

    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    float-to-double v14, v4

    aput-wide v14, v2, v8

    .line 862
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v22

    goto :goto_3de

    .end local v22    # "count":I
    .restart local v4    # "count":I
    :cond_3f8
    move/from16 v22, v4

    .line 867
    .end local v4    # "count":I
    .end local v8    # "i":I
    .restart local v22    # "count":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3fb
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    array-length v8, v8

    if-ge v4, v8, :cond_45c

    .line 868
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    aget v8, v8, v4

    .line 869
    .local v8, "interpolateVariable":I
    sget-object v14, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

    array-length v14, v14

    if-ge v8, v14, :cond_44f

    .line 870
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

    move-object/from16 v23, v5

    .end local v5    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v23, "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    aget v5, v5, v4

    aget-object v5, v15, v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " ["

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 871
    .local v5, "s":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_427
    array-length v15, v3

    if-ge v14, v15, :cond_44a

    .line 872
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v24, v1, v14

    move-object/from16 v25, v7

    move/from16 v26, v8

    .end local v7    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "interpolateVariable":I
    .local v25, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v26, "interpolateVariable":I
    aget-wide v7, v24, v4

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 871
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v25

    move/from16 v8, v26

    goto :goto_427

    .end local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v26    # "interpolateVariable":I
    .restart local v7    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8    # "interpolateVariable":I
    :cond_44a
    move-object/from16 v25, v7

    move/from16 v26, v8

    .end local v7    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "interpolateVariable":I
    .restart local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v26    # "interpolateVariable":I
    goto :goto_455

    .line 869
    .end local v14    # "i":I
    .end local v23    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v26    # "interpolateVariable":I
    .local v5, "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v7    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8    # "interpolateVariable":I
    :cond_44f
    move-object/from16 v23, v5

    move-object/from16 v25, v7

    move/from16 v26, v8

    .line 867
    .end local v5    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "interpolateVariable":I
    .restart local v23    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_455
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v23

    move-object/from16 v7, v25

    goto :goto_3fb

    .end local v23    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v5    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v7    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_45c
    move-object/from16 v23, v5

    move-object/from16 v25, v7

    .line 876
    .end local v4    # "j":I
    .end local v5    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v23    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iput-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 878
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_46a
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_4f5

    .line 879
    const/4 v5, 0x0

    .line 880
    .local v5, "pointCount":I
    const/4 v7, 0x0

    check-cast v7, [[D

    .line 881
    .local v7, "splinePoints":[[D
    const/4 v8, 0x0

    .line 882
    .local v8, "timePoints":[D
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    aget-object v14, v14, v4

    .line 884
    .local v14, "name":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_479
    move/from16 v24, v9

    .end local v9    # "variables":I
    .local v24, "variables":I
    array-length v9, v3

    if-ge v15, v9, :cond_4d0

    .line 885
    aget-object v9, v3, v15

    invoke-virtual {v9, v14}, Landroidx/constraintlayout/core/motion/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4c3

    .line 886
    if-nez v7, :cond_4ad

    .line 887
    array-length v9, v3

    new-array v8, v9, [D

    .line 888
    array-length v9, v3

    move-object/from16 v26, v8

    .end local v8    # "timePoints":[D
    .local v26, "timePoints":[D
    aget-object v8, v3, v15

    invoke-virtual {v8, v14}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v27, v10

    move/from16 v28, v11

    const/4 v10, 0x2

    .end local v10    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "arcMode":Z
    .local v27, "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v28, "arcMode":Z
    new-array v11, v10, [I

    const/4 v10, 0x1

    aput v8, v11, v10

    const/4 v8, 0x0

    aput v9, v11, v8

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, [[D

    move-object/from16 v8, v26

    goto :goto_4b1

    .line 886
    .end local v26    # "timePoints":[D
    .end local v27    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v28    # "arcMode":Z
    .restart local v8    # "timePoints":[D
    .restart local v10    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "arcMode":Z
    :cond_4ad
    move-object/from16 v27, v10

    move/from16 v28, v11

    .line 890
    .end local v10    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "arcMode":Z
    .restart local v27    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v28    # "arcMode":Z
    :goto_4b1
    aget-object v9, v3, v15

    iget v9, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    float-to-double v9, v9

    aput-wide v9, v8, v5

    .line 891
    aget-object v9, v3, v15

    aget-object v10, v7, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v14, v10, v11}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    .line 892
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c7

    .line 885
    .end local v27    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v28    # "arcMode":Z
    .restart local v10    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "arcMode":Z
    :cond_4c3
    move-object/from16 v27, v10

    move/from16 v28, v11

    .line 884
    .end local v10    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "arcMode":Z
    .restart local v27    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v28    # "arcMode":Z
    :goto_4c7
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v24

    move-object/from16 v10, v27

    move/from16 v11, v28

    goto :goto_479

    .end local v27    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v28    # "arcMode":Z
    .restart local v10    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "arcMode":Z
    :cond_4d0
    move-object/from16 v27, v10

    move/from16 v28, v11

    .line 895
    .end local v10    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "arcMode":Z
    .end local v15    # "j":I
    .restart local v27    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v28    # "arcMode":Z
    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v8

    .line 896
    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    check-cast v7, [[D

    .line 897
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    add-int/lit8 v10, v4, 0x1

    iget v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    invoke-static {v11, v8, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v11

    aput-object v11, v9, v10

    .line 878
    .end local v5    # "pointCount":I
    .end local v7    # "splinePoints":[[D
    .end local v8    # "timePoints":[D
    .end local v14    # "name":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move/from16 v9, v24

    move-object/from16 v10, v27

    move/from16 v11, v28

    goto/16 :goto_46a

    .end local v24    # "variables":I
    .end local v27    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v28    # "arcMode":Z
    .restart local v9    # "variables":I
    .restart local v10    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "arcMode":Z
    :cond_4f5
    move/from16 v24, v9

    move-object/from16 v27, v10

    move/from16 v28, v11

    .line 900
    .end local v4    # "i":I
    .end local v9    # "variables":I
    .end local v10    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "arcMode":Z
    .restart local v24    # "variables":I
    .restart local v27    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v28    # "arcMode":Z
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    invoke-static {v5, v2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    .line 902
    aget-object v4, v3, v7

    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_551

    .line 903
    array-length v4, v3

    .line 904
    .local v4, "size":I
    new-array v5, v4, [I

    .line 905
    .local v5, "mode":[I
    new-array v7, v4, [D

    .line 906
    .local v7, "time":[D
    const/4 v8, 0x2

    new-array v9, v8, [I

    const/4 v10, 0x1

    aput v8, v9, v10

    const/4 v8, 0x0

    aput v4, v9, v8

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 907
    .local v8, "values":[[D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_524
    if-ge v9, v4, :cond_54b

    .line 908
    aget-object v10, v3, v9

    iget v10, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    aput v10, v5, v9

    .line 909
    aget-object v10, v3, v9

    iget v10, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    float-to-double v10, v10

    aput-wide v10, v7, v9

    .line 910
    aget-object v10, v8, v9

    aget-object v11, v3, v9

    iget v11, v11, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    float-to-double v14, v11

    const/4 v11, 0x0

    aput-wide v14, v10, v11

    .line 911
    aget-object v10, v8, v9

    aget-object v14, v3, v9

    iget v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    float-to-double v14, v14

    const/16 v16, 0x1

    aput-wide v14, v10, v16

    .line 907
    add-int/lit8 v9, v9, 0x1

    goto :goto_524

    .line 914
    .end local v9    # "i":I
    :cond_54b
    invoke-static {v5, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v9

    iput-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 918
    .end local v4    # "size":I
    .end local v5    # "mode":[I
    .end local v7    # "time":[D
    .end local v8    # "values":[[D
    :cond_551
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 919
    .local v4, "distance":F
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 920
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5c7

    .line 921
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_562
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_58e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 922
    .local v7, "attribute":Ljava/lang/String;
    invoke-static {v7}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->makeWidgetCycle(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    move-result-object v8

    .line 923
    .local v8, "cycle":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    if-nez v8, :cond_575

    .line 924
    goto :goto_562

    .line 927
    :cond_575
    invoke-virtual {v8}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->variesByPath()Z

    move-result v9

    if-eqz v9, :cond_585

    .line 928
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_585

    .line 929
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/Motion;->getPreCycleDistance()F

    move-result v4

    .line 932
    :cond_585
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    .line 933
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    .end local v7    # "attribute":Ljava/lang/String;
    .end local v8    # "cycle":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    goto :goto_562

    .line 935
    :cond_58e
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_594
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 936
    .local v7, "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    instance-of v8, v7, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    if-eqz v8, :cond_5ac

    .line 937
    move-object v8, v7

    check-cast v8, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    .line 939
    .end local v7    # "key":Landroidx/constraintlayout/core/motion/key/MotionKey;
    :cond_5ac
    goto :goto_594

    .line 940
    :cond_5ad
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5b7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 941
    .local v7, "cycle":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup(F)V

    .line 942
    .end local v7    # "cycle":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    goto :goto_5b7

    .line 958
    :cond_5c7
    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/core/motion/Motion;)V
    .registers 4
    .param p1, "motionController"    # Landroidx/constraintlayout/core/motion/Motion;

    .line 239
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v1, p1, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 240
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v1, p1, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 241
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
