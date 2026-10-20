.class public Lcom/simplecityapps/recyclerview_fastscroll/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRtl(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 51
    nop

    .line 52
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    return v1
.end method

.method public static toPixels(Landroid/content/res/Resources;F)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "dp"    # F

    .line 35
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static toScreenPixels(Landroid/content/res/Resources;F)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "sp"    # F

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
