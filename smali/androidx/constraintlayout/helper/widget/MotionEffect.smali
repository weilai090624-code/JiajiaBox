.class public Landroidx/constraintlayout/helper/widget/MotionEffect;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "MotionEffect.java"


# static fields
.field public static final AUTO:I = -0x1

.field public static final EAST:I = 0x2

.field public static final NORTH:I = 0x0

.field public static final SOUTH:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FadeMove"

.field private static final UNSET:I = -0x1

.field public static final WEST:I = 0x3


# instance fields
.field private fadeMove:I

.field private motionEffectAlpha:F

.field private motionEffectEnd:I

.field private motionEffectStart:I

.field private motionEffectStrictMove:Z

.field private motionEffectTranslationX:I

.field private motionEffectTranslationY:I

.field private viewTransitionId:I


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

    .line 72
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    .line 60
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    .line 61
    const/16 v0, 0x31

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 62
    const/16 v0, 0x32

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 64
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 69
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 73
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

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    .line 61
    const/16 v0, 0x31

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 62
    const/16 v0, 0x32

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 64
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 69
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 77
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
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

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    .line 61
    const/16 v0, 0x31

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 62
    const/16 v0, 0x32

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 64
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 69
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
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

    .line 86
    if-eqz p2, :cond_b3

    .line 87
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 89
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_99

    .line 90
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 91
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_start:I

    const/4 v5, 0x0

    const/16 v6, 0x63

    if-ne v3, v4, :cond_2f

    .line 92
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 93
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    goto :goto_95

    .line 94
    :cond_2f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_end:I

    if-ne v3, v4, :cond_48

    .line 95
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 96
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    goto :goto_95

    .line 97
    :cond_48
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationX:I

    if-ne v3, v4, :cond_55

    .line 98
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    goto :goto_95

    .line 99
    :cond_55
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationY:I

    if-ne v3, v4, :cond_62

    .line 100
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    goto :goto_95

    .line 101
    :cond_62
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_alpha:I

    if-ne v3, v4, :cond_6f

    .line 102
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    goto :goto_95

    .line 103
    :cond_6f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_move:I

    if-ne v3, v4, :cond_7c

    .line 104
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    goto :goto_95

    .line 105
    :cond_7c
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_strict:I

    if-ne v3, v4, :cond_89

    .line 106
    iget-boolean v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    goto :goto_95

    .line 107
    :cond_89
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_viewTransition:I

    if-ne v3, v4, :cond_95

    .line 108
    iget v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 89
    .end local v3    # "attr":I
    :cond_95
    :goto_95
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 111
    .end local v2    # "i":I
    :cond_99
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    if-ne v2, v3, :cond_b0

    .line 112
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    if-lez v2, :cond_aa

    .line 113
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    goto :goto_b0

    .line 115
    :cond_aa
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 118
    :cond_b0
    :goto_b0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    :cond_b3
    return-void
.end method


# virtual methods
.method public isDecorator()Z
    .registers 2

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V
    .registers 27
    .param p1, "motionLayout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "controllerMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/motion/widget/MotionLayout;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p2, "controllerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Landroidx/constraintlayout/motion/widget/MotionController;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/helper/widget/MotionEffect;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, "views":[Landroid/view/View;
    if-nez v2, :cond_2d

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " views = null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FadeMove"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 138
    :cond_2d
    new-instance v3, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 139
    .local v3, "alpha1":Landroidx/constraintlayout/motion/widget/KeyAttributes;
    new-instance v4, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v4}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 140
    .local v4, "alpha2":Landroidx/constraintlayout/motion/widget/KeyAttributes;
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "alpha"

    invoke-virtual {v3, v6, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    .line 143
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    .line 144
    new-instance v5, Landroidx/constraintlayout/motion/widget/KeyPosition;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    .line 145
    .local v5, "stick1":Landroidx/constraintlayout/motion/widget/KeyPosition;
    iget v6, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setFramePosition(I)V

    .line 146
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setType(I)V

    .line 147
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "percentX"

    invoke-virtual {v5, v8, v7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "percentY"

    invoke-virtual {v5, v9, v7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    new-instance v7, Landroidx/constraintlayout/motion/widget/KeyPosition;

    invoke-direct {v7}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    .line 150
    .local v7, "stick2":Landroidx/constraintlayout/motion/widget/KeyPosition;
    iget v10, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-virtual {v7, v10}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setFramePosition(I)V

    .line 151
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setType(I)V

    .line 152
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const/4 v8, 0x0

    .line 156
    .local v8, "translationX1":Landroidx/constraintlayout/motion/widget/KeyAttributes;
    const/4 v9, 0x0

    .line 157
    .local v9, "translationX2":Landroidx/constraintlayout/motion/widget/KeyAttributes;
    iget v11, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    if-lez v11, :cond_c1

    .line 158
    new-instance v11, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    move-object v8, v11

    .line 159
    new-instance v11, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    move-object v9, v11

    .line 160
    iget v11, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "translationX"

    invoke-virtual {v8, v12, v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    iget v11, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    .line 162
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v12, v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    iget v11, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    .line 166
    :cond_c1
    const/4 v11, 0x0

    .line 167
    .local v11, "translationY1":Landroidx/constraintlayout/motion/widget/KeyAttributes;
    const/4 v12, 0x0

    .line 168
    .local v12, "translationY2":Landroidx/constraintlayout/motion/widget/KeyAttributes;
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    if-lez v13, :cond_f1

    .line 169
    new-instance v13, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    move-object v11, v13

    .line 170
    new-instance v13, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    invoke-direct {v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    move-object v12, v13

    .line 171
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v14, "translationY"

    invoke-virtual {v11, v14, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    invoke-virtual {v11, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    .line 173
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    sub-int/2addr v13, v10

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setFramePosition(I)V

    .line 177
    :cond_f1
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 178
    .local v13, "moveDirection":I
    iget v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    const/4 v15, -0x1

    const/16 v18, 0x0

    if-ne v14, v15, :cond_168

    .line 179
    const/4 v14, 0x4

    new-array v15, v14, [I

    .line 181
    .local v15, "direction":[I
    const/16 v19, 0x0

    move/from16 v14, v19

    .local v14, "i":I
    :goto_101
    array-length v6, v2

    if-ge v14, v6, :cond_155

    .line 182
    aget-object v6, v2, v14

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 183
    .local v6, "mc":Landroidx/constraintlayout/motion/widget/MotionController;
    if-nez v6, :cond_10f

    .line 184
    goto :goto_151

    .line 186
    :cond_10f
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v21

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartX()F

    move-result v22

    sub-float v21, v21, v22

    .line 187
    .local v21, "x":F
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v22

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartY()F

    move-result v23

    sub-float v22, v22, v23

    .line 190
    .local v22, "y":F
    cmpg-float v23, v22, v18

    if-gez v23, :cond_12d

    aget v23, v15, v10

    add-int/lit8 v23, v23, 0x1

    aput v23, v15, v10

    .line 191
    :cond_12d
    cmpl-float v23, v22, v18

    if-lez v23, :cond_139

    const/16 v19, 0x0

    aget v23, v15, v19

    add-int/lit8 v23, v23, 0x1

    aput v23, v15, v19

    .line 192
    :cond_139
    cmpl-float v23, v21, v18

    if-lez v23, :cond_145

    const/16 v16, 0x3

    aget v23, v15, v16

    add-int/lit8 v23, v23, 0x1

    aput v23, v15, v16

    .line 193
    :cond_145
    cmpg-float v23, v21, v18

    if-gez v23, :cond_151

    const/16 v17, 0x2

    aget v23, v15, v17

    add-int/lit8 v23, v23, 0x1

    aput v23, v15, v17

    .line 181
    .end local v6    # "mc":Landroidx/constraintlayout/motion/widget/MotionController;
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_151
    :goto_151
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    goto :goto_101

    .line 195
    .end local v14    # "i":I
    :cond_155
    const/4 v6, 0x0

    aget v6, v15, v6

    .line 196
    .local v6, "max":I
    const/4 v13, 0x0

    .line 197
    const/4 v14, 0x1

    .restart local v14    # "i":I
    :goto_15a
    const/4 v10, 0x4

    if-ge v14, v10, :cond_168

    .line 198
    aget v10, v15, v14

    if-ge v6, v10, :cond_164

    .line 199
    aget v6, v15, v14

    .line 200
    move v13, v14

    .line 197
    :cond_164
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x1

    goto :goto_15a

    .line 205
    .end local v6    # "max":I
    .end local v14    # "i":I
    .end local v15    # "direction":[I
    :cond_168
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_169
    array-length v10, v2

    if-ge v6, v10, :cond_21a

    .line 206
    aget-object v10, v2, v6

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 207
    .local v10, "mc":Landroidx/constraintlayout/motion/widget/MotionController;
    if-nez v10, :cond_17c

    .line 208
    move-object/from16 v21, v2

    move-object/from16 v2, p1

    goto/16 :goto_212

    .line 210
    :cond_17c
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v14

    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartX()F

    move-result v15

    sub-float/2addr v14, v15

    .line 211
    .local v14, "x":F
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v15

    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getStartY()F

    move-result v20

    sub-float v15, v15, v20

    .line 212
    .local v15, "y":F
    const/16 v20, 0x1

    .line 217
    .local v20, "apply":Z
    if-nez v13, :cond_1a2

    .line 218
    cmpl-float v21, v15, v18

    if-lez v21, :cond_1d7

    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    if-eqz v1, :cond_19f

    cmpl-float v1, v14, v18

    if-nez v1, :cond_1d7

    .line 219
    :cond_19f
    const/16 v20, 0x0

    goto :goto_1d7

    .line 221
    :cond_1a2
    const/4 v1, 0x1

    if-ne v13, v1, :cond_1b4

    .line 222
    cmpg-float v19, v15, v18

    if-gez v19, :cond_1d7

    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    if-eqz v1, :cond_1b1

    cmpl-float v1, v14, v18

    if-nez v1, :cond_1d7

    .line 223
    :cond_1b1
    const/16 v20, 0x0

    goto :goto_1d7

    .line 225
    :cond_1b4
    const/4 v1, 0x2

    if-ne v13, v1, :cond_1c6

    .line 226
    cmpg-float v17, v14, v18

    if-gez v17, :cond_1d7

    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    if-eqz v1, :cond_1c3

    cmpl-float v1, v15, v18

    if-nez v1, :cond_1d7

    .line 227
    :cond_1c3
    const/16 v20, 0x0

    goto :goto_1d7

    .line 229
    :cond_1c6
    const/4 v1, 0x3

    if-ne v13, v1, :cond_1d7

    .line 230
    cmpl-float v16, v14, v18

    if-lez v16, :cond_1d7

    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    if-eqz v1, :cond_1d5

    cmpl-float v1, v15, v18

    if-nez v1, :cond_1d7

    .line 231
    :cond_1d5
    const/16 v20, 0x0

    .line 235
    :cond_1d7
    :goto_1d7
    if-eqz v20, :cond_20e

    .line 236
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    move-object/from16 v21, v2

    const/4 v2, -0x1

    .end local v2    # "views":[Landroid/view/View;
    .local v21, "views":[Landroid/view/View;
    if-ne v1, v2, :cond_206

    .line 237
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 238
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 239
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 240
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 241
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    if-lez v1, :cond_1f6

    .line 242
    invoke-virtual {v10, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 243
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 245
    :cond_1f6
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    if-lez v1, :cond_203

    .line 246
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 247
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    move-object/from16 v2, p1

    goto :goto_212

    .line 245
    :cond_203
    move-object/from16 v2, p1

    goto :goto_212

    .line 250
    :cond_206
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v1, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z

    goto :goto_212

    .line 235
    .end local v21    # "views":[Landroid/view/View;
    .restart local v2    # "views":[Landroid/view/View;
    :cond_20e
    move-object/from16 v21, v2

    move-object/from16 v2, p1

    .line 205
    .end local v2    # "views":[Landroid/view/View;
    .end local v10    # "mc":Landroidx/constraintlayout/motion/widget/MotionController;
    .end local v14    # "x":F
    .end local v15    # "y":F
    .end local v20    # "apply":Z
    .restart local v21    # "views":[Landroid/view/View;
    :goto_212
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    goto/16 :goto_169

    .line 254
    .end local v6    # "i":I
    .end local v21    # "views":[Landroid/view/View;
    .restart local v2    # "views":[Landroid/view/View;
    :cond_21a
    return-void
.end method
