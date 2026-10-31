.class public Landroidx/constraintlayout/helper/widget/Carousel;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "Carousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/helper/widget/Carousel$Adapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Carousel"

.field public static final TOUCH_UP_CARRY_ON:I = 0x2

.field public static final TOUCH_UP_IMMEDIATE_STOP:I = 0x1


# instance fields
.field private backwardTransition:I

.field private dampening:F

.field private emptyViewBehavior:I

.field private firstViewReference:I

.field private forwardTransition:I

.field private infiniteCarousel:Z

.field private mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

.field private mAnimateTargetDelay:I

.field private mIndex:I

.field mLastStartId:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mPreviousIndex:I

.field private mTargetIndex:I

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private nextState:I

.field private previousState:I

.field private startIndex:I

.field private touchUpMode:I

.field private velocityThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    .line 45
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    .line 48
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 49
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 50
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 51
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    .line 52
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    .line 53
    const v2, 0x3f666666    # 0.9f

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    .line 54
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    .line 61
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    .line 62
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    .line 63
    const/16 v0, 0xc8

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 210
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    .line 266
    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
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

    .line 95
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    .line 45
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    .line 48
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 49
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 50
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 51
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    .line 52
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    .line 53
    const v2, 0x3f666666    # 0.9f

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    .line 54
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    .line 61
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    .line 62
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    .line 63
    const/16 v0, 0xc8

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 210
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    .line 266
    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 96
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
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

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    .line 45
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    .line 48
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 49
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    .line 50
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    .line 51
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    .line 52
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    .line 53
    const v2, 0x3f666666    # 0.9f

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    .line 54
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    .line 61
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    .line 62
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    .line 63
    const/16 v0, 0xc8

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 210
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    .line 266
    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 101
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/helper/widget/Carousel;

    .line 39
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/helper/widget/Carousel;)V
    .registers 1
    .param p0, "x0"    # Landroidx/constraintlayout/helper/widget/Carousel;

    .line 39
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    return-void
.end method

.method static synthetic access$200(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/helper/widget/Carousel;

    .line 39
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    return v0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/helper/widget/Carousel$Adapter;
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/helper/widget/Carousel;

    .line 39
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/helper/widget/Carousel;

    .line 39
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    return v0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/helper/widget/Carousel;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/helper/widget/Carousel;

    .line 39
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    return v0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/helper/widget/Carousel;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/helper/widget/Carousel;

    .line 39
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    return v0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/helper/widget/Carousel;

    .line 39
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    return v0
.end method

.method private enableAllTransitions(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v0

    .line 243
    .local v0, "transitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/MotionScene$Transition;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 244
    .local v2, "transition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    .line 245
    .end local v2    # "transition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    goto :goto_a

    .line 246
    :cond_1a
    return-void
.end method

.method private enableTransition(IZ)Z
    .registers 6
    .param p1, "transitionID"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transitionID",
            "enable"
        }
    .end annotation

    .line 249
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 250
    return v1

    .line 252
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v0, :cond_a

    .line 253
    return v1

    .line 255
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    .line 256
    .local v0, "transition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    if-nez v0, :cond_13

    .line 257
    return v1

    .line 259
    :cond_13
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-ne p2, v2, :cond_1a

    .line 260
    return v1

    .line 262
    :cond_1a
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    .line 263
    const/4 v1, 0x1

    return v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
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

    .line 105
    if-eqz p2, :cond_9d

    .line 106
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Carousel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 108
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_9a

    .line 109
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 110
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_firstView:I

    if-ne v3, v4, :cond_21

    .line 111
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    goto/16 :goto_96

    .line 112
    :cond_21
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_backwardTransition:I

    if-ne v3, v4, :cond_2f

    .line 113
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    goto/16 :goto_96

    .line 114
    :cond_2f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_forwardTransition:I

    if-ne v3, v4, :cond_3c

    .line 115
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    goto :goto_96

    .line 116
    :cond_3c
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_emptyViewsBehavior:I

    if-ne v3, v4, :cond_49

    .line 117
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    goto :goto_96

    .line 118
    :cond_49
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_previousState:I

    if-ne v3, v4, :cond_56

    .line 119
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    goto :goto_96

    .line 120
    :cond_56
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_nextState:I

    if-ne v3, v4, :cond_63

    .line 121
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    goto :goto_96

    .line 122
    :cond_63
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_dampeningFactor:I

    if-ne v3, v4, :cond_70

    .line 123
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    goto :goto_96

    .line 124
    :cond_70
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUpMode:I

    if-ne v3, v4, :cond_7d

    .line 125
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    goto :goto_96

    .line 126
    :cond_7d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_velocityThreshold:I

    if-ne v3, v4, :cond_8a

    .line 127
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    goto :goto_96

    .line 128
    :cond_8a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_infinite:I

    if-ne v3, v4, :cond_96

    .line 129
    iget-boolean v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    .line 108
    .end local v3    # "attr":I
    :cond_96
    :goto_96
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 132
    .end local v2    # "i":I
    :cond_9a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    :cond_9d
    return-void
.end method

.method private updateItems()V
    .registers 8

    .line 364
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    if-nez v0, :cond_5

    .line 365
    return-void

    .line 367
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v0, :cond_a

    .line 368
    return-void

    .line 370
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    if-nez v0, :cond_13

    .line 371
    return-void

    .line 376
    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 377
    .local v0, "viewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    const/4 v2, 0x0

    if-ge v1, v0, :cond_c4

    .line 379
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 380
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    add-int/2addr v4, v1

    iget v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    sub-int/2addr v4, v5

    .line 381
    .local v4, "index":I
    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    if-eqz v5, :cond_a2

    .line 382
    const/4 v5, 0x4

    if-gez v4, :cond_65

    .line 383
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    if-eq v6, v5, :cond_3c

    .line 384
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    invoke-direct {p0, v3, v5}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_3f

    .line 386
    :cond_3c
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 388
    :goto_3f
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

    rem-int v5, v4, v5

    if-nez v5, :cond_50

    .line 389
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto/16 :goto_c0

    .line 391
    :cond_50
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v6

    rem-int v6, v4, v6

    add-int/2addr v5, v6

    invoke-interface {v2, v3, v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto :goto_c0

    .line 393
    :cond_65
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v6

    if-lt v4, v6, :cond_99

    .line 394
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v6

    if-ne v4, v6, :cond_77

    .line 395
    const/4 v4, 0x0

    goto :goto_86

    .line 396
    :cond_77
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v6

    if-le v4, v6, :cond_86

    .line 397
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v6

    rem-int/2addr v4, v6

    .line 399
    :cond_86
    :goto_86
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    if-eq v6, v5, :cond_90

    .line 400
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_93

    .line 402
    :cond_90
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 404
    :goto_93
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v2, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto :goto_c0

    .line 406
    :cond_99
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 407
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v2, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto :goto_c0

    .line 410
    :cond_a2
    if-gez v4, :cond_aa

    .line 411
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_c0

    .line 412
    :cond_aa
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

    if-lt v4, v5, :cond_b8

    .line 413
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_c0

    .line 415
    :cond_b8
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 416
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v2, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    .line 377
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "index":I
    :goto_c0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1a

    .line 421
    .end local v1    # "i":I
    :cond_c4
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_da

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-eq v1, v4, :cond_da

    .line 422
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-instance v4, Landroidx/constraintlayout/helper/widget/Carousel$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/helper/widget/Carousel$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_e2

    .line 430
    :cond_da
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-ne v1, v4, :cond_e2

    .line 431
    iput v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    .line 434
    :cond_e2
    :goto_e2
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    if-eq v1, v3, :cond_126

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    if-ne v1, v3, :cond_eb

    goto :goto_126

    .line 439
    :cond_eb
    iget-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    if-eqz v1, :cond_f0

    .line 440
    return-void

    .line 443
    :cond_f0
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v1

    .line 444
    .local v1, "count":I
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    const/4 v4, 0x1

    if-nez v3, :cond_101

    .line 445
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    goto :goto_10d

    .line 447
    :cond_101
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    .line 448
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    .line 450
    :goto_10d
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_119

    .line 451
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    goto :goto_125

    .line 453
    :cond_119
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    invoke-direct {p0, v2, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    .line 454
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    .line 456
    :goto_125
    return-void

    .line 435
    .end local v1    # "count":I
    :cond_126
    :goto_126
    const-string v1, "Carousel"

    const-string v2, "No backward or forward transitions defined for Carousel!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void
.end method

.method private updateViewVisibility(ILandroid/view/View;I)Z
    .registers 8
    .param p1, "constraintSetId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "visibility"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "constraintSetId",
            "view",
            "visibility"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    .line 347
    .local v0, "constraintSet":Landroidx/constraintlayout/widget/ConstraintSet;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 348
    return v1

    .line 350
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    .line 351
    .local v2, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    if-nez v2, :cond_15

    .line 352
    return v1

    .line 354
    :cond_15
    iget-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    const/4 v3, 0x1

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 359
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 360
    return v3
.end method

.method private updateViewVisibility(Landroid/view/View;I)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "visibility"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v0, :cond_6

    .line 335
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_6
    const/4 v0, 0x0

    .line 338
    .local v0, "needsMotionSceneRebuild":Z
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v1

    .line 339
    .local v1, "constraintSets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_1b

    .line 340
    aget v3, v1, v2

    invoke-direct {p0, v3, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(ILandroid/view/View;I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 342
    .end local v2    # "i":I
    :cond_1b
    return v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    if-eqz v0, :cond_b

    .line 147
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    return v0

    .line 149
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentIndex()I
    .registers 2

    .line 158
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    return v0
.end method

.method public jumpToIndex(I)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 185
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->refresh()V

    .line 186
    return-void
.end method

.method synthetic lambda$updateItems$0$androidx-constraintlayout-helper-widget-Carousel()V
    .registers 4

    .line 423
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    .line 424
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-ge v0, v1, :cond_17

    .line 425
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    goto :goto_20

    .line 427
    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    .line 429
    :goto_20
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .line 296
    invoke-super {p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onAttachedToWindow()V

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "container":Landroidx/constraintlayout/motion/widget/MotionLayout;
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v1, :cond_54

    .line 299
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mCount:I

    if-ge v1, v2, :cond_2e

    .line 304
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIds:[I

    aget v2, v2, v1

    .line 305
    .local v2, "id":I
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    .line 306
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    if-ne v4, v2, :cond_26

    .line 307
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    .line 309
    :cond_26
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v2    # "id":I
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 311
    .end local v1    # "i":I
    :cond_2e
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 313
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_50

    .line 314
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v1

    .line 315
    .local v1, "forward":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    const/4 v2, 0x5

    if-eqz v1, :cond_43

    .line 316
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    .line 318
    :cond_43
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v3

    .line 319
    .local v3, "backward":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    if-eqz v3, :cond_50

    .line 320
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    .line 323
    .end local v1    # "forward":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .end local v3    # "backward":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    :cond_50
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    .line 324
    return-void

    .line 301
    :cond_54
    return-void
.end method

.method public onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .registers 5
    .param p1, "motionLayout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "startId"    # I
    .param p3, "endId"    # I
    .param p4, "progress"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "startId",
            "endId",
            "progress"
        }
    .end annotation

    .line 207
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    .line 208
    return-void
.end method

.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .registers 6
    .param p1, "motionLayout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "currentId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "currentId"
        }
    .end annotation

    .line 214
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    .line 215
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    if-ne p2, v0, :cond_f

    .line 216
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    goto :goto_19

    .line 217
    :cond_f
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    if-ne p2, v0, :cond_19

    .line 218
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 220
    :cond_19
    :goto_19
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 221
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v2}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v2

    if-lt v0, v2, :cond_2a

    .line 222
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 224
    :cond_2a
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-gez v0, :cond_53

    .line 225
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    goto :goto_53

    .line 228
    :cond_39
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v2}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v2

    if-lt v0, v2, :cond_4d

    .line 229
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 231
    :cond_4d
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-gez v0, :cond_53

    .line 232
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 236
    :cond_53
    :goto_53
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-eq v0, v1, :cond_60

    .line 237
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    .line 239
    :cond_60
    return-void
.end method

.method public refresh()V
    .registers 5

    .line 189
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 190
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_26

    .line 191
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 192
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    invoke-interface {v3}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v3

    if-nez v3, :cond_1f

    .line 193
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    goto :goto_23

    .line 195
    :cond_1f
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    .line 190
    .end local v2    # "view":Landroid/view/View;
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 198
    .end local v1    # "i":I
    :cond_26
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 199
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    .line 200
    return-void
.end method

.method public setAdapter(Landroidx/constraintlayout/helper/widget/Carousel$Adapter;)V
    .registers 2
    .param p1, "adapter"    # Landroidx/constraintlayout/helper/widget/Carousel$Adapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    .line 138
    return-void
.end method

.method public transitionToIndex(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "delay"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "delay"
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    .line 169
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    .line 170
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    .line 171
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    if-ge p1, v0, :cond_2c

    .line 172
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    goto :goto_35

    .line 174
    :cond_2c
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    .line 176
    :goto_35
    return-void
.end method
