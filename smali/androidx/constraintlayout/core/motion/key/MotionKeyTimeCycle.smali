.class public Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyTimeCycle.java"


# static fields
.field public static final KEY_TYPE:I = 0x3

.field static final NAME:Ljava/lang/String; = "KeyTimeCycle"

.field private static final TAG:Ljava/lang/String; = "KeyTimeCycle"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mCustomWaveShape:Ljava/lang/String;

.field private mElevation:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mWaveOffset:F

.field private mWavePeriod:F

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    .line 34
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    .line 35
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    .line 42
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    .line 43
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    .line 44
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    .line 45
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    .line 48
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mType:I

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

    .line 55
    return-void
.end method


# virtual methods
.method public addTimeValues(Ljava/util/HashMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_212

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;

    .line 60
    .local v2, "splineSet":Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
    if-nez v2, :cond_1d

    .line 61
    goto :goto_8

    .line 63
    :cond_1d
    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_49

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "cKey":Ljava/lang/String;
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 66
    .local v4, "cValue":Landroidx/constraintlayout/core/motion/CustomVariable;
    if-eqz v4, :cond_8

    .line 67
    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v9, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v10, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v7, v4

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;FIF)V

    goto :goto_8

    .line 71
    .end local v3    # "cKey":Ljava/lang/String;
    .end local v4    # "cValue":Landroidx/constraintlayout/core/motion/CustomVariable;
    :cond_49
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_214

    :cond_50
    goto/16 :goto_d2

    :sswitch_52
    const-string v3, "pathRotate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x4

    goto/16 :goto_d3

    :sswitch_5d
    const-string v3, "alpha"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x0

    goto/16 :goto_d3

    :sswitch_68
    const-string v3, "elevation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/16 v5, 0xa

    goto :goto_d3

    :sswitch_73
    const-string v3, "scaleY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x6

    goto :goto_d3

    :sswitch_7d
    const-string v3, "scaleX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x5

    goto :goto_d3

    :sswitch_87
    const-string v3, "progress"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/16 v5, 0xb

    goto :goto_d3

    :sswitch_92
    const-string/jumbo v3, "translationZ"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/16 v5, 0x9

    goto :goto_d3

    :sswitch_9e
    const-string/jumbo v3, "translationY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/16 v5, 0x8

    goto :goto_d3

    :sswitch_aa
    const-string/jumbo v3, "translationX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x7

    goto :goto_d3

    :sswitch_b5
    const-string v3, "rotationZ"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x3

    goto :goto_d3

    :sswitch_bf
    const-string v3, "rotationY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x2

    goto :goto_d3

    :sswitch_c9
    const-string v3, "rotationX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_d3

    :goto_d2
    const/4 v5, -0x1

    :goto_d3
    packed-switch v5, :pswitch_data_246

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNKNOWN addValues \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyTimeCycles"

    invoke-static {v4, v3}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_210

    .line 130
    :pswitch_f6
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 131
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_210

    .line 125
    :pswitch_10e
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 126
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_210

    .line 120
    :pswitch_126
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 121
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_210

    .line 115
    :pswitch_13e
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 116
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_210

    .line 110
    :pswitch_156
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 111
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_210

    .line 105
    :pswitch_16e
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 106
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_210

    .line 100
    :pswitch_186
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 101
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_210

    .line 94
    :pswitch_19e
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 95
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto :goto_210

    .line 89
    :pswitch_1b5
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 90
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto :goto_210

    .line 84
    :pswitch_1cc
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 85
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto :goto_210

    .line 79
    :pswitch_1e3
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 80
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto :goto_210

    .line 73
    :pswitch_1fa
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_210

    .line 74
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    .line 137
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "splineSet":Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
    :cond_210
    :goto_210
    goto/16 :goto_8

    .line 138
    :cond_212
    return-void

    nop

    :sswitch_data_214
    .sparse-switch
        -0x4a771f66 -> :sswitch_c9
        -0x4a771f65 -> :sswitch_bf
        -0x4a771f64 -> :sswitch_b5
        -0x490b9c39 -> :sswitch_aa
        -0x490b9c38 -> :sswitch_9e
        -0x490b9c37 -> :sswitch_92
        -0x3bab3dd3 -> :sswitch_87
        -0x3621dfb2 -> :sswitch_7d
        -0x3621dfb1 -> :sswitch_73
        -0x42d1a3 -> :sswitch_68
        0x589b15e -> :sswitch_5d
        0x2fdfbde0 -> :sswitch_52
    .end sparse-switch

    :pswitch_data_246
    .packed-switch 0x0
        :pswitch_1fa
        :pswitch_1e3
        :pswitch_1cc
        :pswitch_1b5
        :pswitch_19e
        :pswitch_186
        :pswitch_16e
        :pswitch_156
        :pswitch_13e
        :pswitch_126
        :pswitch_10e
        :pswitch_f6
    .end packed-switch
.end method

.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/SplineSet;>;"
    return-void
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    .line 297
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    move-result-object p1

    return-object p1
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;
    .registers 4
    .param p1, "src"    # Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 232
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 233
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    .line 234
    .local v0, "k":Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    .line 235
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    .line 236
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    .line 237
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    .line 238
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    .line 239
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    .line 240
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    .line 241
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    .line 242
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    .line 243
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    .line 244
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    .line 245
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    .line 246
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    .line 247
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    .line 248
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    .line 249
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    .line 250
    iget v1, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    .line 251
    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p1, "attributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    .line 257
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 260
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    .line 263
    const-string v0, "rotationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_27
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    .line 266
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    .line 269
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_41
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 272
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 275
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_5b
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    .line 278
    const-string v0, "pathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_68
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_76

    .line 281
    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_76
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_84

    .line 284
    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_84
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_92

    .line 287
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_92
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_c7

    .line 290
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_a4

    .line 294
    :cond_c7
    return-void
.end method

.method public getId(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 302
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType$-CC;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValue(IF)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # F

    .line 160
    sparse-switch p1, :sswitch_data_ac

    .line 207
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result v0

    return v0

    .line 204
    :sswitch_8
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    .line 205
    goto/16 :goto_aa

    .line 201
    :sswitch_14
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    .line 202
    goto/16 :goto_aa

    .line 189
    :sswitch_20
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    .line 190
    goto/16 :goto_aa

    .line 162
    :sswitch_2c
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    .line 163
    goto/16 :goto_aa

    .line 165
    :sswitch_30
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    .line 166
    goto/16 :goto_aa

    .line 171
    :sswitch_3c
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    .line 172
    goto :goto_aa

    .line 186
    :sswitch_47
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    .line 187
    goto :goto_aa

    .line 183
    :sswitch_52
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    .line 184
    goto :goto_aa

    .line 174
    :sswitch_5d
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    .line 175
    goto :goto_aa

    .line 180
    :sswitch_68
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    .line 181
    goto :goto_aa

    .line 177
    :sswitch_73
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    .line 178
    goto :goto_aa

    .line 168
    :sswitch_7e
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    .line 169
    goto :goto_aa

    .line 198
    :sswitch_89
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    .line 199
    goto :goto_aa

    .line 195
    :sswitch_94
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    .line 196
    goto :goto_aa

    .line 192
    :sswitch_9f
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    .line 193
    nop

    .line 209
    :goto_aa
    const/4 v0, 0x1

    return v0

    :sswitch_data_ac
    .sparse-switch
        0x130 -> :sswitch_9f
        0x131 -> :sswitch_94
        0x132 -> :sswitch_89
        0x133 -> :sswitch_7e
        0x134 -> :sswitch_73
        0x135 -> :sswitch_68
        0x136 -> :sswitch_5d
        0x137 -> :sswitch_52
        0x138 -> :sswitch_47
        0x13b -> :sswitch_3c
        0x191 -> :sswitch_30
        0x193 -> :sswitch_2c
        0x1a0 -> :sswitch_20
        0x1a7 -> :sswitch_14
        0x1a8 -> :sswitch_8
    .end sparse-switch
.end method

.method public setValue(II)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 146
    sparse-switch p1, :sswitch_data_10

    .line 154
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result v0

    return v0

    .line 151
    :sswitch_8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    .line 152
    goto :goto_e

    .line 148
    :sswitch_b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    .line 149
    nop

    .line 156
    :goto_e
    const/4 v0, 0x1

    return v0

    :sswitch_data_10
    .sparse-switch
        0x64 -> :sswitch_b
        0x1a5 -> :sswitch_8
    .end sparse-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 213
    packed-switch p1, :pswitch_data_14

    .line 222
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 215
    :pswitch_8
    const/4 v0, 0x7

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    .line 216
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    .line 217
    goto :goto_11

    .line 219
    :pswitch_e
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    .line 220
    nop

    .line 224
    :goto_11
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1a4
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method

.method public setValue(IZ)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # Z

    .line 228
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IZ)Z

    move-result v0

    return v0
.end method
