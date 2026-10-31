.class public Lcom/google/android/material/shape/MaterialShapeUtils;
.super Ljava/lang/Object;
.source "MaterialShapeUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCornerTreatment(I)Lcom/google/android/material/shape/CornerTreatment;
    .registers 2
    .param p0, "cornerFamily"    # I

    .line 31
    packed-switch p0, :pswitch_data_14

    .line 37
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_8
    new-instance v0, Lcom/google/android/material/shape/CutCornerTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/CutCornerTreatment;-><init>()V

    return-object v0

    .line 33
    :pswitch_e
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method

.method static createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;
    .registers 1

    .line 43
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/RoundedCornerTreatment;-><init>()V

    return-object v0
.end method

.method static createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 1

    .line 48
    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    return-object v0
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "elevation"    # F

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_e

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 61
    :cond_e
    return-void
.end method

.method public static setParentAbsoluteElevation(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_e

    .line 72
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p0, v1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 74
    :cond_e
    return-void
.end method

.method public static setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "materialShapeDrawable"    # Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isElevationOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 84
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setParentAbsoluteElevation(F)V

    .line 86
    :cond_d
    return-void
.end method
