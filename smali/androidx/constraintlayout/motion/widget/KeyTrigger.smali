.class public Landroidx/constraintlayout/motion/widget/KeyTrigger;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;
    }
.end annotation


# static fields
.field public static final CROSS:Ljava/lang/String; = "CROSS"

.field public static final KEY_TYPE:I = 0x5

.field static final NAME:Ljava/lang/String; = "KeyTrigger"

.field public static final NEGATIVE_CROSS:Ljava/lang/String; = "negativeCross"

.field public static final POSITIVE_CROSS:Ljava/lang/String; = "positiveCross"

.field public static final POST_LAYOUT:Ljava/lang/String; = "postLayout"

.field private static final TAG:Ljava/lang/String; = "KeyTrigger"

.field public static final TRIGGER_COLLISION_ID:Ljava/lang/String; = "triggerCollisionId"

.field public static final TRIGGER_COLLISION_VIEW:Ljava/lang/String; = "triggerCollisionView"

.field public static final TRIGGER_ID:Ljava/lang/String; = "triggerID"

.field public static final TRIGGER_RECEIVER:Ljava/lang/String; = "triggerReceiver"

.field public static final TRIGGER_SLACK:Ljava/lang/String; = "triggerSlack"

.field public static final VIEW_TRANSITION_ON_CROSS:Ljava/lang/String; = "viewTransitionOnCross"

.field public static final VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String; = "viewTransitionOnNegativeCross"

.field public static final VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String; = "viewTransitionOnPositiveCross"


# instance fields
.field mCollisionRect:Landroid/graphics/RectF;

.field private mCross:Ljava/lang/String;

.field private mCurveFit:I

.field private mFireCrossReset:Z

.field private mFireLastPos:F

.field private mFireNegativeReset:Z

.field private mFirePositiveReset:Z

.field private mFireThreshold:F

.field mMethodHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mNegativeCross:Ljava/lang/String;

.field private mPositiveCross:Ljava/lang/String;

.field private mPostLayout:Z

.field mTargetRect:Landroid/graphics/RectF;

.field private mTriggerCollisionId:I

.field private mTriggerCollisionView:Landroid/view/View;

.field private mTriggerID:I

.field private mTriggerReceiver:I

.field mTriggerSlack:F

.field mViewTransitionOnCross:I

.field mViewTransitionOnNegativeCross:I

.field mViewTransitionOnPositiveCross:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    .line 64
    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    .line 65
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 67
    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    .line 68
    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    .line 69
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 70
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 72
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 74
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    .line 77
    sget v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    .line 78
    sget v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    .line 79
    sget v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    .line 87
    const/4 v0, 0x5

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mType:I

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCustomConstraints:Ljava/util/HashMap;

    .line 89
    return-void
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/KeyTrigger;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;
    .param p1, "x1"    # F

    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    return p1
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 46
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    return v0
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;
    .param p1, "x1"    # I

    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    return p1
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 46
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    return v0
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;
    .param p1, "x1"    # I

    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    return p1
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyTrigger;)Z
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 46
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    return v0
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyTrigger;Z)Z
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    return p1
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 46
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    return v0
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTrigger;
    .param p1, "x1"    # I

    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    return p1
.end method

.method private fire(Ljava/lang/String;Landroid/view/View;)V
    .registers 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "call"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "call"
        }
    .end annotation

    .line 283
    if-nez p1, :cond_3

    .line 284
    return-void

    .line 286
    :cond_3
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 287
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fireCustom(Ljava/lang/String;Landroid/view/View;)V

    .line 288
    return-void

    .line 290
    :cond_f
    const/4 v0, 0x0

    .line 291
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 292
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/Method;

    .line 293
    if-nez v0, :cond_24

    .line 294
    return-void

    .line 297
    :cond_24
    const-string v1, " "

    const-string v2, "\"on class "

    const-string v3, "KeyTrigger"

    const/4 v4, 0x0

    if-nez v0, :cond_78

    .line 299
    :try_start_2d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v5, p1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v0, v5

    .line 300
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_3d} :catch_3e

    .line 306
    goto :goto_78

    .line 301
    :catch_3e
    move-exception v4

    .line 302
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find method \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 309
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :cond_78
    :goto_78
    :try_start_78
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7d} :catch_7e

    .line 313
    goto :goto_b3

    .line 310
    :catch_7e
    move-exception v4

    .line 311
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in call \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_b3
    return-void
.end method

.method private fireCustom(Ljava/lang/String;Landroid/view/View;)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "view"
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 318
    .local v0, "callAll":Z
    :goto_a
    if-nez v0, :cond_16

    .line 319
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 321
    :cond_16
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 322
    .local v2, "name":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "lowerCase":Ljava/lang/String;
    if-nez v0, :cond_3a

    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 324
    :cond_3a
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 325
    .local v4, "custom":Landroidx/constraintlayout/widget/ConstraintAttribute;
    if-eqz v4, :cond_47

    .line 326
    invoke-virtual {v4, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->applyCustom(Landroid/view/View;)V

    .line 329
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "lowerCase":Ljava/lang/String;
    .end local v4    # "custom":Landroidx/constraintlayout/widget/ConstraintAttribute;
    :cond_47
    goto :goto_20

    .line 330
    :cond_48
    return-void
.end method

.method private setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "postLayout"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "child",
            "postLayout"
        }
    .end annotation

    .line 158
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 159
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 161
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 162
    if-eqz p3, :cond_25

    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 165
    :cond_25
    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/motion/utils/ViewSpline;>;"
    return-void
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .registers 2

    .line 454
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

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

    .line 46
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public conditionallyFire(FLandroid/view/View;)V
    .registers 12
    .param p1, "pos"    # F
    .param p2, "child"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "child"
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "fireCross":Z
    const/4 v1, 0x0

    .line 170
    .local v1, "fireNegative":Z
    const/4 v2, 0x0

    .line 172
    .local v2, "firePositive":Z
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    sget v4, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_5a

    .line 173
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    if-nez v3, :cond_1d

    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 177
    :cond_1d
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    iget-boolean v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    invoke-direct {p0, v3, v4, v7}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 178
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    invoke-direct {p0, v3, p2, v4}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 179
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    .line 181
    .local v3, "in":Z
    if-eqz v3, :cond_48

    .line 182
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    if-eqz v4, :cond_3e

    .line 183
    const/4 v0, 0x1

    .line 184
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 186
    :cond_3e
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    if-eqz v4, :cond_45

    .line 187
    const/4 v2, 0x1

    .line 188
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 190
    :cond_45
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    goto :goto_58

    .line 192
    :cond_48
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    if-nez v4, :cond_4f

    .line 193
    const/4 v0, 0x1

    .line 194
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 196
    :cond_4f
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    if-eqz v4, :cond_56

    .line 197
    const/4 v1, 0x1

    .line 198
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 200
    :cond_56
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 203
    .end local v3    # "in":Z
    :goto_58
    goto/16 :goto_d8

    .line 206
    :cond_5a
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_72

    .line 208
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v3, p1, v3

    .line 209
    .local v3, "offset":F
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float/2addr v7, v8

    .line 211
    .local v7, "lastOffset":F
    mul-float v8, v3, v7

    cmpg-float v8, v8, v4

    if-gez v8, :cond_71

    .line 212
    const/4 v0, 0x1

    .line 213
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 215
    .end local v3    # "offset":F
    .end local v7    # "lastOffset":F
    :cond_71
    goto :goto_82

    .line 216
    :cond_72
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_82

    .line 217
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 222
    :cond_82
    :goto_82
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    if-eqz v3, :cond_9d

    .line 223
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v3, p1, v3

    .line 224
    .restart local v3    # "offset":F
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float/2addr v7, v8

    .line 225
    .restart local v7    # "lastOffset":F
    mul-float v8, v3, v7

    cmpg-float v8, v8, v4

    if-gez v8, :cond_9c

    cmpg-float v8, v3, v4

    if-gez v8, :cond_9c

    .line 226
    const/4 v1, 0x1

    .line 227
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 229
    .end local v3    # "offset":F
    .end local v7    # "lastOffset":F
    :cond_9c
    goto :goto_ad

    .line 230
    :cond_9d
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_ad

    .line 231
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 235
    :cond_ad
    :goto_ad
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    if-eqz v3, :cond_c8

    .line 236
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v3, p1, v3

    .line 237
    .restart local v3    # "offset":F
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float/2addr v7, v8

    .line 238
    .restart local v7    # "lastOffset":F
    mul-float v8, v3, v7

    cmpg-float v8, v8, v4

    if-gez v8, :cond_c7

    cmpl-float v4, v3, v4

    if-lez v4, :cond_c7

    .line 239
    const/4 v2, 0x1

    .line 240
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 242
    .end local v3    # "offset":F
    .end local v7    # "lastOffset":F
    :cond_c7
    goto :goto_d8

    .line 243
    :cond_c8
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d8

    .line 244
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 248
    :cond_d8
    :goto_d8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    .line 250
    if-nez v1, :cond_e0

    if-nez v0, :cond_e0

    if-eqz v2, :cond_eb

    .line 251
    :cond_e0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    invoke-virtual {v3, v4, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTrigger(IZF)V

    .line 253
    :cond_eb
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    sget v4, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    if-ne v3, v4, :cond_f3

    move-object v3, p2

    goto :goto_ff

    :cond_f3
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 255
    .local v3, "call":Landroid/view/View;
    :goto_ff
    if-eqz v1, :cond_11f

    .line 256
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    if-eqz v4, :cond_10a

    .line 257
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Ljava/lang/String;Landroid/view/View;)V

    .line 259
    :cond_10a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    sget v7, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    if-eq v4, v7, :cond_11f

    .line 260
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    new-array v8, v6, [Landroid/view/View;

    aput-object v3, v8, v5

    invoke-virtual {v4, v7, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    .line 263
    :cond_11f
    if-eqz v2, :cond_13f

    .line 264
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    if-eqz v4, :cond_12a

    .line 265
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Ljava/lang/String;Landroid/view/View;)V

    .line 267
    :cond_12a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    sget v7, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    if-eq v4, v7, :cond_13f

    .line 268
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    new-array v8, v6, [Landroid/view/View;

    aput-object v3, v8, v5

    invoke-virtual {v4, v7, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    .line 271
    :cond_13f
    if-eqz v0, :cond_15f

    .line 272
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    if-eqz v4, :cond_14a

    .line 273
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Ljava/lang/String;Landroid/view/View;)V

    .line 275
    :cond_14a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    sget v7, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    if-eq v4, v7, :cond_15f

    .line 276
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    new-array v6, v6, [Landroid/view/View;

    aput-object v3, v6, v5

    invoke-virtual {v4, v7, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    .line 280
    :cond_15f
    return-void
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .registers 4
    .param p1, "src"    # Landroidx/constraintlayout/motion/widget/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 430
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    .line 431
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 432
    .local v0, "k":Landroidx/constraintlayout/motion/widget/KeyTrigger;
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    .line 433
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    .line 434
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    .line 435
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 436
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 437
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    .line 438
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    .line 439
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 440
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    .line 441
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 442
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 443
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 444
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 445
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    .line 446
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    .line 447
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    .line 448
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    .line 449
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    .line 450
    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "attributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    return-void
.end method

.method getCurveFit()I
    .registers 2

    .line 103
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 93
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyTrigger;Landroid/content/res/TypedArray;Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_e8

    :cond_7
    goto/16 :goto_8f

    :sswitch_9
    const-string/jumbo v0, "triggerReceiver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_90

    :sswitch_15
    const-string v0, "postLayout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto/16 :goto_90

    :sswitch_21
    const-string/jumbo v0, "viewTransitionOnCross"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_90

    :sswitch_2d
    const-string/jumbo v0, "triggerSlack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_90

    :sswitch_38
    const-string v0, "CROSS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_90

    :sswitch_42
    const-string/jumbo v0, "viewTransitionOnNegativeCross"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_90

    :sswitch_4e
    const-string/jumbo v0, "triggerCollisionView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_90

    :sswitch_59
    const-string v0, "negativeCross"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_90

    :sswitch_63
    const-string/jumbo v0, "triggerID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_90

    :sswitch_6e
    const-string/jumbo v0, "triggerCollisionId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_90

    :sswitch_79
    const-string/jumbo v0, "viewTransitionOnPositiveCross"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_90

    :sswitch_85
    const-string v0, "positiveCross"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_90

    :goto_8f
    const/4 v0, -0x1

    :goto_90
    packed-switch v0, :pswitch_data_11a

    goto :goto_e7

    .line 151
    :pswitch_94
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    goto :goto_e7

    .line 148
    :pswitch_9b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    .line 149
    goto :goto_e7

    .line 145
    :pswitch_a2
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    .line 146
    goto :goto_e7

    .line 142
    :pswitch_a9
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    .line 143
    goto :goto_e7

    .line 139
    :pswitch_b0
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    .line 140
    goto :goto_e7

    .line 136
    :pswitch_b7
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 137
    goto :goto_e7

    .line 133
    :pswitch_bd
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    .line 134
    goto :goto_e7

    .line 130
    :pswitch_c4
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    .line 131
    goto :goto_e7

    .line 127
    :pswitch_cb
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 128
    goto :goto_e7

    .line 124
    :pswitch_d2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 125
    goto :goto_e7

    .line 121
    :pswitch_d9
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    .line 122
    goto :goto_e7

    .line 118
    :pswitch_e0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    .line 119
    nop

    .line 155
    :goto_e7
    return-void

    :sswitch_data_e8
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_85
        -0x399a6b12 -> :sswitch_79
        -0x2ee3a4eb -> :sswitch_6e
        -0x26ab2f2d -> :sswitch_63
        -0x26090af5 -> :sswitch_59
        -0x4880de1 -> :sswitch_4e
        -0x94d7ce -> :sswitch_42
        0x3d6a020 -> :sswitch_38
        0x15b9acb8 -> :sswitch_2d
        0x4d99e267 -> :sswitch_21
        0x538787ea -> :sswitch_15
        0x5b846bc7 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_d9
        :pswitch_d2
        :pswitch_cb
        :pswitch_c4
        :pswitch_bd
        :pswitch_b7
        :pswitch_b0
        :pswitch_a9
        :pswitch_a2
        :pswitch_9b
        :pswitch_94
    .end packed-switch
.end method
