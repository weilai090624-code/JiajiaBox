.class public Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyCycle.java"


# static fields
.field public static final KEY_TYPE:I = 0x4

.field static final NAME:Ljava/lang/String; = "KeyCycle"

.field public static final SHAPE_BOUNCE:I = 0x6

.field public static final SHAPE_COS_WAVE:I = 0x5

.field public static final SHAPE_REVERSE_SAW_WAVE:I = 0x4

.field public static final SHAPE_SAW_WAVE:I = 0x3

.field public static final SHAPE_SIN_WAVE:I = 0x0

.field public static final SHAPE_SQUARE_WAVE:I = 0x1

.field public static final SHAPE_TRIANGLE_WAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyCycle"

.field public static final WAVE_OFFSET:Ljava/lang/String; = "waveOffset"

.field public static final WAVE_PERIOD:Ljava/lang/String; = "wavePeriod"

.field public static final WAVE_PHASE:Ljava/lang/String; = "wavePhase"

.field public static final WAVE_SHAPE:Ljava/lang/String; = "waveShape"


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

.field private mWavePhase:F

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionEasing:Ljava/lang/String;

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCurveFit:I

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    .line 47
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    .line 49
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    .line 50
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    .line 51
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    .line 52
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    .line 53
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    .line 54
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    .line 55
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    .line 56
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    .line 57
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    .line 58
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    .line 59
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    .line 60
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    .line 61
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mType:I

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    .line 67
    return-void
.end method


# virtual methods
.method public addCycleValues(Ljava/util/HashMap;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p1, "oscSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 294
    .local v3, "key":Ljava/lang/String;
    const-string v4, "CUSTOM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 295
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "customKey":Ljava/lang/String;
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 297
    .local v5, "cValue":Landroidx/constraintlayout/core/motion/CustomVariable;
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/CustomVariable;->getType()I

    move-result v6

    const/16 v7, 0x385

    if-eq v6, v7, :cond_3d

    .line 298
    goto :goto_c

    .line 301
    :cond_3d
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 302
    .local v16, "osc":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    if-nez v16, :cond_48

    .line 303
    goto :goto_c

    .line 306
    :cond_48
    iget v7, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

    iget v8, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    iget-object v9, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iget v11, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    iget v12, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    iget v13, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v14

    const/4 v10, -0x1

    move-object/from16 v6, v16

    move-object v15, v5

    invoke-virtual/range {v6 .. v15}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V

    .line 307
    goto :goto_c

    .line 309
    .end local v4    # "customKey":Ljava/lang/String;
    .end local v5    # "cValue":Landroidx/constraintlayout/core/motion/CustomVariable;
    .end local v16    # "osc":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    :cond_60
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getValue(Ljava/lang/String;)F

    move-result v4

    .line 310
    .local v4, "value":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 311
    goto :goto_c

    .line 314
    :cond_6b
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 315
    .local v5, "osc":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    if-nez v5, :cond_74

    .line 316
    goto :goto_c

    .line 319
    :cond_74
    iget v6, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

    iget v7, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    iget v9, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    iget v10, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    iget v11, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    const/16 v21, -0x1

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v4

    invoke-virtual/range {v17 .. v25}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFF)V

    .line 320
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":F
    .end local v5    # "osc":Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
    goto/16 :goto_c

    .line 321
    :cond_97
    return-void
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

    .line 114
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/SplineSet;>;"
    return-void
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    .line 238
    const/4 v0, 0x0

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
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object v0

    return-object v0
.end method

.method public dump()V
    .registers 4

    .line 326
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionKeyCycle{mWaveShape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWavePeriod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWaveOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWavePhase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    return-void
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

    .line 71
    .local p1, "attributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    .line 72
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 75
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    .line 78
    const-string v0, "rotationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_27
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    .line 81
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    .line 84
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_41
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 87
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 90
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_5b
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    .line 93
    const-string v0, "pathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_68
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_76

    .line 96
    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_76
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_84

    .line 99
    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_84
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_92

    .line 102
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_92
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_c7

    .line 105
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

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

    .line 106
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

    .line 107
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_a4

    .line 109
    :cond_c7
    return-void
.end method

.method public getId(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_13e

    :cond_8
    goto/16 :goto_f9

    :sswitch_a
    const-string/jumbo v0, "visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_fa

    :sswitch_16
    const-string/jumbo v0, "waveShape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x11

    goto/16 :goto_fa

    :sswitch_23
    const-string v0, "pathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto/16 :goto_fa

    :sswitch_2f
    const-string v0, "curveFit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_fa

    :sswitch_3a
    const-string v0, "phase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x12

    goto/16 :goto_fa

    :sswitch_46
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto/16 :goto_fa

    :sswitch_51
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_fa

    :sswitch_5d
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto/16 :goto_fa

    :sswitch_69
    const-string v0, "pivotY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto/16 :goto_fa

    :sswitch_75
    const-string v0, "pivotX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto/16 :goto_fa

    :sswitch_81
    const-string v0, "period"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x10

    goto/16 :goto_fa

    :sswitch_8d
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto :goto_fa

    :sswitch_98
    const-string v0, "offset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x13

    goto :goto_fa

    :sswitch_a3
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_fa

    :sswitch_ae
    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_fa

    :sswitch_b9
    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_fa

    :sswitch_c4
    const-string v0, "rotationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_fa

    :sswitch_cf
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_fa

    :sswitch_d9
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_fa

    :sswitch_e3
    const-string v0, "easing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto :goto_fa

    :sswitch_ee
    const-string v0, "customWave"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x14

    goto :goto_fa

    :goto_f9
    const/4 v0, -0x1

    :goto_fa
    packed-switch v0, :pswitch_data_194

    .line 288
    return v1

    .line 285
    :pswitch_fe
    const/16 v0, 0x1a6

    return v0

    .line 283
    :pswitch_101
    const/16 v0, 0x1a8

    return v0

    .line 281
    :pswitch_104
    const/16 v0, 0x1a9

    return v0

    .line 279
    :pswitch_107
    const/16 v0, 0x1a5

    return v0

    .line 277
    :pswitch_10a
    const/16 v0, 0x1a7

    return v0

    .line 275
    :pswitch_10d
    const/16 v0, 0x1a4

    return v0

    .line 273
    :pswitch_110
    const/16 v0, 0x1a0

    return v0

    .line 271
    :pswitch_113
    const/16 v0, 0x13b

    return v0

    .line 269
    :pswitch_116
    const/16 v0, 0x13a

    return v0

    .line 267
    :pswitch_119
    const/16 v0, 0x139

    return v0

    .line 265
    :pswitch_11c
    const/16 v0, 0x138

    return v0

    .line 263
    :pswitch_11f
    const/16 v0, 0x137

    return v0

    .line 261
    :pswitch_122
    const/16 v0, 0x136

    return v0

    .line 259
    :pswitch_125
    const/16 v0, 0x135

    return v0

    .line 257
    :pswitch_128
    const/16 v0, 0x134

    return v0

    .line 255
    :pswitch_12b
    const/16 v0, 0x132

    return v0

    .line 253
    :pswitch_12e
    const/16 v0, 0x131

    return v0

    .line 251
    :pswitch_131
    const/16 v0, 0x130

    return v0

    .line 249
    :pswitch_134
    const/16 v0, 0x193

    return v0

    .line 247
    :pswitch_137
    const/16 v0, 0x192

    return v0

    .line 245
    :pswitch_13a
    const/16 v0, 0x191

    return v0

    nop

    :sswitch_data_13e
    .sparse-switch
        -0x5e458df6 -> :sswitch_ee
        -0x4e19c2d5 -> :sswitch_e3
        -0x4a771f66 -> :sswitch_d9
        -0x4a771f65 -> :sswitch_cf
        -0x4a771f64 -> :sswitch_c4
        -0x490b9c39 -> :sswitch_b9
        -0x490b9c38 -> :sswitch_ae
        -0x490b9c37 -> :sswitch_a3
        -0x3cc89b6d -> :sswitch_98
        -0x3bab3dd3 -> :sswitch_8d
        -0x3b1c8a3f -> :sswitch_81
        -0x3ae243aa -> :sswitch_75
        -0x3ae243a9 -> :sswitch_69
        -0x3621dfb2 -> :sswitch_5d
        -0x3621dfb1 -> :sswitch_51
        0x589b15e -> :sswitch_46
        0x65b097b -> :sswitch_3a
        0x2283b8a2 -> :sswitch_2f
        0x2fdfbde0 -> :sswitch_23
        0x5b5cc028 -> :sswitch_16
        0x73b66312 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
    .end packed-switch
.end method

.method public getValue(Ljava/lang/String;)F
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_d4

    :cond_7
    goto/16 :goto_a2

    :sswitch_9
    const-string v0, "pathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_a3

    :sswitch_14
    const-string v0, "phase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto/16 :goto_a3

    :sswitch_20
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_a3

    :sswitch_2b
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_a3

    :sswitch_36
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_a3

    :sswitch_40
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_a3

    :sswitch_4a
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_a3

    :sswitch_55
    const-string v0, "offset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_a3

    :sswitch_60
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_a3

    :sswitch_6c
    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_a3

    :sswitch_78
    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_a3

    :sswitch_84
    const-string v0, "rotationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_a3

    :sswitch_8e
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_a3

    :sswitch_98
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_a3

    :goto_a2
    const/4 v0, -0x1

    :goto_a3
    packed-switch v0, :pswitch_data_10e

    .line 232
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 230
    :pswitch_a9
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    return v0

    .line 228
    :pswitch_ac
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    return v0

    .line 226
    :pswitch_af
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    return v0

    .line 224
    :pswitch_b2
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    return v0

    .line 222
    :pswitch_b5
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    return v0

    .line 220
    :pswitch_b8
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    return v0

    .line 218
    :pswitch_bb
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    return v0

    .line 216
    :pswitch_be
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    return v0

    .line 214
    :pswitch_c1
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    return v0

    .line 212
    :pswitch_c4
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    return v0

    .line 210
    :pswitch_c7
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    return v0

    .line 208
    :pswitch_ca
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    return v0

    .line 206
    :pswitch_cd
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    return v0

    .line 204
    :pswitch_d0
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    return v0

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x4a771f66 -> :sswitch_98
        -0x4a771f65 -> :sswitch_8e
        -0x4a771f64 -> :sswitch_84
        -0x490b9c39 -> :sswitch_78
        -0x490b9c38 -> :sswitch_6c
        -0x490b9c37 -> :sswitch_60
        -0x3cc89b6d -> :sswitch_55
        -0x3bab3dd3 -> :sswitch_4a
        -0x3621dfb2 -> :sswitch_40
        -0x3621dfb1 -> :sswitch_36
        -0x42d1a3 -> :sswitch_2b
        0x589b15e -> :sswitch_20
        0x65b097b -> :sswitch_14
        0x2fdfbde0 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_d0
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
    .end packed-switch
.end method

.method public printAttributes()V
    .registers 7

    .line 336
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 337
    .local v0, "nameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getAttributeNames(Ljava/util/HashSet;)V

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ------------- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionKeyCycle{Shape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Period="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Phase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 347
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_72
    array-length v3, v1

    if-ge v2, v3, :cond_a0

    .line 348
    aget-object v3, v1, v2

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType$-CC;->getId(Ljava/lang/String;)I

    move-result v3

    .line 349
    .local v3, "id":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getValue(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    .line 347
    .end local v3    # "id":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 351
    .end local v2    # "i":I
    :cond_a0
    return-void
.end method

.method public setValue(IF)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # F

    .line 148
    sparse-switch p1, :sswitch_data_38

    .line 195
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result v0

    return v0

    .line 192
    :sswitch_8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    .line 193
    goto :goto_35

    .line 189
    :sswitch_b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    .line 190
    goto :goto_35

    .line 186
    :sswitch_e
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    .line 187
    goto :goto_35

    .line 183
    :sswitch_11
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    .line 184
    goto :goto_35

    .line 150
    :sswitch_14
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    .line 151
    goto :goto_35

    .line 180
    :sswitch_17
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    .line 181
    goto :goto_35

    .line 177
    :sswitch_1a
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    .line 178
    goto :goto_35

    .line 174
    :sswitch_1d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    .line 175
    goto :goto_35

    .line 171
    :sswitch_20
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    .line 172
    goto :goto_35

    .line 168
    :sswitch_23
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    .line 169
    goto :goto_35

    .line 165
    :sswitch_26
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    .line 166
    goto :goto_35

    .line 162
    :sswitch_29
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    .line 163
    goto :goto_35

    .line 159
    :sswitch_2c
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    .line 160
    goto :goto_35

    .line 156
    :sswitch_2f
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    .line 157
    goto :goto_35

    .line 153
    :sswitch_32
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    .line 154
    nop

    .line 197
    :goto_35
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_38
    .sparse-switch
        0x130 -> :sswitch_32
        0x131 -> :sswitch_2f
        0x132 -> :sswitch_2c
        0x133 -> :sswitch_29
        0x134 -> :sswitch_26
        0x135 -> :sswitch_23
        0x136 -> :sswitch_20
        0x137 -> :sswitch_1d
        0x138 -> :sswitch_1a
        0x13b -> :sswitch_17
        0x193 -> :sswitch_14
        0x1a0 -> :sswitch_11
        0x1a7 -> :sswitch_e
        0x1a8 -> :sswitch_b
        0x1a9 -> :sswitch_8
    .end sparse-switch
.end method

.method public setValue(II)Z
    .registers 5
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 117
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_18

    .line 125
    int-to-float v1, p2

    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->setValue(IF)Z

    move-result v1

    .line 126
    .local v1, "ret":Z
    if-eqz v1, :cond_12

    .line 127
    return v0

    .line 122
    .end local v1    # "ret":Z
    :sswitch_c
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    .line 123
    return v0

    .line 119
    :sswitch_f
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCurveFit:I

    .line 120
    return v0

    .line 129
    .restart local v1    # "ret":Z
    :cond_12
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result v0

    return v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x191 -> :sswitch_f
        0x1a5 -> :sswitch_c
    .end sparse-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_10

    .line 142
    :pswitch_4
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 139
    :pswitch_9
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    .line 140
    return v0

    .line 136
    :pswitch_c
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionEasing:Ljava/lang/String;

    .line 137
    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1a4
        :pswitch_c
        :pswitch_4
        :pswitch_9
    .end packed-switch
.end method
