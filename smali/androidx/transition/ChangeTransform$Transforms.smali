.class Landroidx/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field final mRotationX:F

.field final mRotationY:F

.field final mRotationZ:F

.field final mScaleX:F

.field final mScaleY:F

.field final mTranslationX:F

.field final mTranslationY:F

.field final mTranslationZ:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    .line 476
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    .line 481
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    .line 482
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "that"    # Ljava/lang/Object;

    .line 491
    instance-of v0, p1, Landroidx/transition/ChangeTransform$Transforms;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 492
    return v1

    .line 494
    :cond_6
    move-object v0, p1

    check-cast v0, Landroidx/transition/ChangeTransform$Transforms;

    .line 495
    .local v0, "thatTransform":Landroidx/transition/ChangeTransform$Transforms;
    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4a

    const/4 v1, 0x1

    :cond_4a
    return v1
.end method

.method public hashCode()I
    .registers 6

    .line 507
    iget v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_f

    iget v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 508
    .local v0, "code":I
    :goto_10
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    add-int/2addr v3, v4

    .line 509
    .end local v0    # "code":I
    .local v3, "code":I
    mul-int/lit8 v0, v3, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_30

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    add-int/2addr v0, v4

    .line 510
    .end local v3    # "code":I
    .restart local v0    # "code":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_41

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_42

    :cond_41
    const/4 v4, 0x0

    :goto_42
    add-int/2addr v3, v4

    .line 511
    .end local v0    # "code":I
    .restart local v3    # "code":I
    mul-int/lit8 v0, v3, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_52

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_53

    :cond_52
    const/4 v4, 0x0

    :goto_53
    add-int/2addr v0, v4

    .line 512
    .end local v3    # "code":I
    .restart local v0    # "code":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_63

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_64

    :cond_63
    const/4 v4, 0x0

    :goto_64
    add-int/2addr v3, v4

    .line 513
    .end local v0    # "code":I
    .restart local v3    # "code":I
    mul-int/lit8 v0, v3, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_74

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_75

    :cond_74
    const/4 v4, 0x0

    :goto_75
    add-int/2addr v0, v4

    .line 514
    .end local v3    # "code":I
    .restart local v0    # "code":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_84

    iget v1, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_84
    add-int/2addr v3, v1

    .line 515
    .end local v0    # "code":I
    .restart local v3    # "code":I
    return v3
.end method

.method public restore(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .line 485
    iget v1, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v5, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v6, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v7, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v8, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 487
    return-void
.end method
