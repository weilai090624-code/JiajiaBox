.class Landroidx/transition/Slide$5;
.super Landroidx/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/transition/Slide$CalculateSlideHorizontal;-><init>(Landroidx/transition/Slide$1;)V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F
    .registers 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 133
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    move v0, v1

    .line 136
    .local v0, "isRtl":Z
    if-eqz v0, :cond_17

    .line 137
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .local v1, "x":F
    goto :goto_21

    .line 139
    .end local v1    # "x":F
    :cond_17
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 141
    .restart local v1    # "x":F
    :goto_21
    return v1
.end method
