.class public Landroidx/constraintlayout/core/motion/MotionWidget;
.super Ljava/lang/Object;
.source "MotionWidget.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;,
        Landroidx/constraintlayout/core/motion/MotionWidget$Motion;
    }
.end annotation


# static fields
.field public static final FILL_PARENT:I = -0x1

.field public static final GONE_UNSET:I = -0x80000000

.field private static final INTERNAL_MATCH_CONSTRAINT:I = -0x3

.field private static final INTERNAL_MATCH_PARENT:I = -0x1

.field private static final INTERNAL_WRAP_CONTENT:I = -0x2

.field private static final INTERNAL_WRAP_CONTENT_CONSTRAINED:I = -0x4

.field public static final INVISIBLE:I = 0x0

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final MATCH_PARENT:I = -0x1

.field public static final PARENT_ID:I = 0x0

.field public static final ROTATE_LEFT_OF_PORTRATE:I = 0x4

.field public static final ROTATE_NONE:I = 0x0

.field public static final ROTATE_PORTRATE_OF_LEFT:I = 0x2

.field public static final ROTATE_PORTRATE_OF_RIGHT:I = 0x1

.field public static final ROTATE_RIGHT_OF_PORTRATE:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VISIBILITY_MODE_IGNORE:I = 0x1

.field public static final VISIBILITY_MODE_NORMAL:I = 0x0

.field public static final VISIBLE:I = 0x4

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mProgress:F

.field mTransitionPathRotate:F

.field motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

.field propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

.field widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 27
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    .line 28
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V
    .registers 3
    .param p1, "f"    # Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 27
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    .line 28
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    .line 124
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 125
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroidx/constraintlayout/core/motion/MotionWidget;
    .registers 3
    .param p1, "mTransformPivotTarget"    # I

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlpha()F
    .registers 2

    .line 415
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->alpha:F

    return v0
.end method

.method public getBottom()I
    .registers 2

    .line 323
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    return v0
.end method

.method public getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 459
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v0

    return-object v0
.end method

.method public getCustomAttributeNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getCustomAttributeNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 3

    .line 431
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 307
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType$-CC;->getId(Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, "ret":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 309
    return v0

    .line 311
    :cond_8
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType$-CC;->getId(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getLeft()I
    .registers 2

    .line 319
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Landroidx/constraintlayout/core/motion/MotionWidget;
    .registers 2

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    .line 411
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    return v0
.end method

.method public getRight()I
    .registers 2

    .line 327
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    return v0
.end method

.method public getRotationX()F
    .registers 2

    .line 339
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    return v0
.end method

.method public getRotationY()F
    .registers 2

    .line 347
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    return v0
.end method

.method public getRotationZ()F
    .registers 2

    .line 355
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 387
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 395
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    return v0
.end method

.method public getTop()I
    .registers 2

    .line 315
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    return v0
.end method

.method public getTranslationX()F
    .registers 2

    .line 363
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    return v0
.end method

.method public getTranslationY()F
    .registers 2

    .line 371
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    return v0
.end method

.method public getTranslationZ()F
    .registers 2

    .line 383
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    return v0
.end method

.method public getValueAttributes(I)F
    .registers 3
    .param p1, "id"    # I

    .line 273
    packed-switch p1, :pswitch_data_44

    .line 301
    :pswitch_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 299
    :pswitch_6
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mTransitionPathRotate:F

    return v0

    .line 297
    :pswitch_9
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mProgress:F

    return v0

    .line 295
    :pswitch_c
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    return v0

    .line 293
    :pswitch_11
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    return v0

    .line 291
    :pswitch_16
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    return v0

    .line 289
    :pswitch_1b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    return v0

    .line 287
    :pswitch_20
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    return v0

    .line 285
    :pswitch_25
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    return v0

    .line 283
    :pswitch_2a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    return v0

    .line 281
    :pswitch_2f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    return v0

    .line 279
    :pswitch_34
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    return v0

    .line 277
    :pswitch_39
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    return v0

    .line 275
    :pswitch_3e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    return v0

    nop

    :pswitch_data_44
    .packed-switch 0x12f
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_3
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public getVisibility()I
    .registers 2

    .line 403
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->visibility:I

    return v0
.end method

.method public getWidgetFrame()Landroidx/constraintlayout/core/state/WidgetFrame;
    .registers 2

    .line 435
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    return-object v0
.end method

.method public getWidth()I
    .registers 3

    .line 427
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getX()I
    .registers 2

    .line 419
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 423
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    return v0
.end method

.method public layout(IIII)V
    .registers 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/motion/MotionWidget;->setBounds(IIII)V

    .line 107
    return-void
.end method

.method public setBounds(IIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    if-nez v0, :cond_f

    .line 115
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 117
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    .line 119
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p3, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    .line 120
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p4, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    .line 121
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IF)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # F

    .line 443
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    .line 444
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;II)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # I

    .line 447
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;II)V

    .line 448
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 455
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V

    .line 456
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # Z

    .line 451
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IZ)V

    .line 452
    return-void
.end method

.method public setInterpolatedValue(Landroidx/constraintlayout/core/motion/CustomAttribute;[F)V
    .registers 7
    .param p1, "attribute"    # Landroidx/constraintlayout/core/motion/CustomAttribute;
    .param p2, "mCache"    # [F

    .line 463
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget-object v1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aget v2, p2, v2

    const/16 v3, 0x385

    invoke-virtual {v0, v1, v3, v2}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    .line 464
    return-void
.end method

.method public setPivotX(F)V
    .registers 3
    .param p1, "px"    # F

    .line 331
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    .line 332
    return-void
.end method

.method public setPivotY(F)V
    .registers 3
    .param p1, "py"    # F

    .line 335
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    .line 336
    return-void
.end method

.method public setRotationX(F)V
    .registers 3
    .param p1, "rotationX"    # F

    .line 343
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    .line 344
    return-void
.end method

.method public setRotationY(F)V
    .registers 3
    .param p1, "rotationY"    # F

    .line 351
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    .line 352
    return-void
.end method

.method public setRotationZ(F)V
    .registers 3
    .param p1, "rotationZ"    # F

    .line 359
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    .line 360
    return-void
.end method

.method public setScaleX(F)V
    .registers 3
    .param p1, "scaleX"    # F

    .line 391
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    .line 392
    return-void
.end method

.method public setScaleY(F)V
    .registers 3
    .param p1, "scaleY"    # F

    .line 399
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    .line 400
    return-void
.end method

.method public setTranslationX(F)V
    .registers 3
    .param p1, "translationX"    # F

    .line 367
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    .line 368
    return-void
.end method

.method public setTranslationY(F)V
    .registers 3
    .param p1, "translationY"    # F

    .line 375
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    .line 376
    return-void
.end method

.method public setTranslationZ(F)V
    .registers 3
    .param p1, "tz"    # F

    .line 379
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p1, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    .line 380
    return-void
.end method

.method public setValue(IF)Z
    .registers 5
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 134
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueAttributes(IF)Z

    move-result v0

    .line 135
    .local v0, "set":Z
    if-eqz v0, :cond_8

    .line 136
    const/4 v1, 0x1

    return v1

    .line 138
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueMotion(IF)Z

    move-result v1

    return v1
.end method

.method public setValue(II)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 129
    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueAttributes(IF)Z

    move-result v0

    return v0
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 143
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setValueMotion(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setValue(IZ)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public setValueAttributes(IF)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 222
    packed-switch p1, :pswitch_data_44

    .line 263
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 260
    :pswitch_5
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mTransitionPathRotate:F

    .line 261
    goto :goto_42

    .line 257
    :pswitch_8
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->mProgress:F

    .line 258
    goto :goto_42

    .line 254
    :pswitch_b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    .line 255
    goto :goto_42

    .line 251
    :pswitch_10
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    .line 252
    goto :goto_42

    .line 248
    :pswitch_15
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    .line 249
    goto :goto_42

    .line 245
    :pswitch_1a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    .line 246
    goto :goto_42

    .line 242
    :pswitch_1f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    .line 243
    goto :goto_42

    .line 239
    :pswitch_24
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    .line 240
    goto :goto_42

    .line 236
    :pswitch_29
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    .line 237
    goto :goto_42

    .line 233
    :pswitch_2e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    .line 234
    goto :goto_42

    .line 230
    :pswitch_33
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    .line 231
    goto :goto_42

    .line 227
    :pswitch_38
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    .line 228
    goto :goto_42

    .line 224
    :pswitch_3d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iput p2, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    .line 225
    nop

    .line 265
    :goto_42
    const/4 v0, 0x1

    return v0

    :pswitch_data_44
    .packed-switch 0x12f
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_3
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public setValueMotion(IF)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 199
    packed-switch p1, :pswitch_data_16

    .line 210
    const/4 v0, 0x0

    return v0

    .line 207
    :pswitch_5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionPhase:F

    .line 208
    goto :goto_14

    .line 204
    :pswitch_a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathRotate:F

    .line 205
    goto :goto_14

    .line 201
    :pswitch_f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mMotionStagger:F

    .line 202
    nop

    .line 212
    :goto_14
    const/4 v0, 0x1

    return v0

    :pswitch_data_16
    .packed-switch 0x258
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public setValueMotion(II)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 152
    packed-switch p1, :pswitch_data_30

    .line 178
    const/4 v0, 0x0

    return v0

    .line 175
    :pswitch_5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorID:I

    .line 176
    goto :goto_2d

    .line 172
    :pswitch_a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorType:I

    .line 173
    goto :goto_2d

    .line 169
    :pswitch_f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionSteps:I

    .line 170
    goto :goto_2d

    .line 166
    :pswitch_14
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPolarRelativeTo:I

    .line 167
    goto :goto_2d

    .line 163
    :pswitch_19
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mDrawPath:I

    .line 164
    goto :goto_2d

    .line 160
    :pswitch_1e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathMotionArc:I

    .line 161
    goto :goto_2d

    .line 157
    :pswitch_23
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateCircleAngleTo:I

    .line 158
    goto :goto_2d

    .line 154
    :pswitch_28
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateRelativeTo:I

    .line 155
    nop

    .line 180
    :goto_2d
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x25d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public setValueMotion(ILjava/lang/String;)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 184
    packed-switch p1, :pswitch_data_12

    .line 193
    const/4 v0, 0x0

    return v0

    .line 190
    :pswitch_5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput-object p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    .line 191
    goto :goto_f

    .line 187
    :pswitch_a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    iput-object p2, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 188
    nop

    .line 195
    :goto_f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x25b
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    iput p1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->visibility:I

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v2, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v2, v2, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget;->widgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v1, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
